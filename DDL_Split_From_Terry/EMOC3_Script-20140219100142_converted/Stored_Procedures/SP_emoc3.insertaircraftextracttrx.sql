--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 46745
	Relative Current Chunk Line Number: 46745
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' END IF;\n   END IF;\nEND insertaircraftextracttrx;\n\n[CREATE]'
------------

The following statement (from line 46354 to 46743) and was skipped" BEGIN*/
 CREATE PROCEDURE       "EMOC3"."INSERTAIRCRAFTEXTRACTTRX" (
   p_fromelc                     VARCHAR2,
   p_fromunitid                  VARCHAR2,
   p_equipmentid                 VARCHAR2,
   p_mds                         VARCHAR2,
   p_mdsblock                    VARCHAR2,
   p_serialnumber                VARCHAR2,
   p_maintenancestatuscode       VARCHAR2,
   p_conditionstatuscode         VARCHAR2,
   p_startdate                   VARCHAR2,
   p_starttime                   VARCHAR2,
   p_workunitcode                VARCHAR2,
   p_jobcontrolnumber            VARCHAR2,
   p_estimatedtimeincommission   VARCHAR2,
   p_statusnarrative             VARCHAR2,
   p_locationcode                VARCHAR2,
   p_priority                    VARCHAR2,
   p_armed                       VARCHAR2,
   p_multiconfigid               VARCHAR2,
   p_localoption                 VARCHAR2,
   p_possessionid                VARCHAR2,
   p_geoloccode                  VARCHAR2,
   p_owningmajcom                VARCHAR2,
   p_lastflydate                 VARCHAR2,
   p_dedicatedcrewchief          VARCHAR2,
   p_owningworkcenter            VARCHAR2,
   p_equiporgflightid            VARCHAR2,
   p_assignmentstatuscode        VARCHAR2
)
AS
   tmpvar      NUMBER;
   mocidvar    NUMBER;
   wingidvar   NUMBER;
   wcidvar     NUMBER;
   porgidvar   VARCHAR2 (4);
   sqidvar     NUMBER;
   mdsidvar    NUMBER;
   acidvar     NUMBER;
   wcnamevar   VARCHAR2 (50);
   condidvar   NUMBER;
   condstat    VARCHAR (5);
/******************************************************************************
   NAME:       InsertAircraftExtractTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/26/2006  r mcbride        1. Created this procedure.
   1.1        02/04/2011  FE               1. Fix for QC 393
   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertAircraftExtractTrx
      Sysdate:         12/26/2006
      Date and Time:   12/26/2006, 4:43:51 PM, and 12/26/2006 4:43:51 PM
      Username:         (emoc3)
      Table Name:       (AircraftExtractTrx)

******************************************************************************/
BEGIN
   tmpvar := 0;

   INSERT INTO aircraftextracttrx
               (aircraftextracttrxid, fromenterpriselocationcode,
                fromunitid, equipmentid, missiondesignseries,
                missiondesignseriesblock, aircraftserialnumber,
                maintenancestatuscode, conditionstatuscode, startdate,
                starttime, workunitcode,
                jobcontrolnumber, estimatedtimeincommission,
                statusnarrative, locationcode,
                equipmentorganizationflightid, maintenancerepairpriority,
                armed, multipleconfigurationid, localoption,
                assignmentstatuscode, possessionid, geoloccode,
                owningmajcom, lastflydate, dedicatedcrewchief,
                owningworkcenter
               )
        VALUES (seq_aircraftextracttrx.NEXTVAL, p_fromelc,
                p_fromunitid, p_equipmentid, p_mds,
                p_mdsblock, p_serialnumber,
                p_maintenancestatuscode, p_conditionstatuscode, p_startdate,
                p_starttime, RTRIM (p_workunitcode),
                RTRIM (p_jobcontrolnumber), p_estimatedtimeincommission,
                RTRIM (p_statusnarrative), p_locationcode,
                p_equiporgflightid, p_priority,
                p_armed, p_multiconfigid, p_localoption,
                p_assignmentstatuscode, p_possessionid, p_geoloccode,
                p_owningmajcom, p_lastflydate, p_dedicatedcrewchief,
                p_owningworkcenter
               );

   COMMIT;
   get_wingid_by_elcunitid (p_fromelc, p_fromunitid, wingidvar);

   IF (wingidvar IS NOT NULL)
   THEN
      get_mocid_by_elcunitid (p_fromelc, p_fromunitid, mocidvar);

      SELECT COUNT (*)
        INTO tmpvar
        FROM workcenters
       WHERE RTRIM (workcentercode) = RTRIM (p_owningworkcenter)
         AND wingid = wingidvar;

      porgidvar := NULL;

      IF (tmpvar > 0)
      THEN
         SELECT workcenterid, porgid, workcentername
           INTO wcidvar, porgidvar, wcnamevar
           FROM (SELECT workcenterid, porgid, workcentername
                   FROM workcenters
                  WHERE RTRIM (workcentercode) = p_owningworkcenter
                    AND wingid = wingidvar
                    AND ROWNUM < 2);
      END IF;

      SELECT COUNT (*)
        INTO tmpvar
        FROM squadrons
       WHERE wingid = wingidvar
         AND (   RTRIM (organization_id) = RTRIM (porgidvar)
              OR RTRIM (shortname) = p_owningworkcenter
             );

      IF (tmpvar > 0)
      THEN
         SELECT squadronid
           INTO sqidvar
           FROM (SELECT squadronid
                   FROM squadrons
                  WHERE wingid = wingidvar
                    AND (   RTRIM (organization_id) = RTRIM (porgidvar)
                         OR RTRIM (shortname) = p_owningworkcenter
                        )
                    AND ROWNUM < 2);
      ELSE
         SELECT seq_squadrons.NEXTVAL
           INTO sqidvar
           FROM DUAL;

         INSERT INTO squadrons
                     (squadronid, squadronname,
                      shortname, organization_id, mocid, wingid,
                      colorid
                     )
              VALUES (sqidvar, NVL (wcnamevar, p_owningworkcenter),
                      p_owningworkcenter, porgidvar, mocidvar, wingidvar,
                      NVL ((SELECT MIN (colorid)
                              FROM colors
                             WHERE mocid = mocidvar), 0)
                     );

         COMMIT;
      END IF;

      SELECT COUNT (*)
        INTO tmpvar
        FROM aircraftmds
       WHERE aircraftmds = p_mds
         AND blocknumber = NVL (p_mdsblock, '000')
         AND mocid = mocidvar;

      IF (tmpvar = 0)
      THEN
         SELECT seq_aircraftmds.NEXTVAL
           INTO mdsidvar
           FROM DUAL;

         INSERT INTO aircraftmds
                     (aircraftmdsid, aircraftmds, blocknumber, mocid,
                      numberofstations, numberofengines
                     )
              VALUES (mdsidvar, p_mds, NVL (p_mdsblock, '000'), mocidvar,
                      1, 1
                     );

         COMMIT;
      ELSE
         SELECT aircraftmdsid
           INTO mdsidvar
           FROM aircraftmds
          WHERE aircraftmds = p_mds
            AND blocknumber = NVL (p_mdsblock, '000')
            AND mocid = mocidvar;
      END IF;

      IF (p_possessionid IS NOT NULL)
      THEN
         SELECT COUNT (*)
           INTO tmpvar
           FROM possessions
          WHERE possessioncode = p_possessionid AND mocid = mocidvar;

         IF (tmpvar = 0)
         THEN
            INSERT INTO possessions
                        (possessionid, possessioncode, defaultpossession,
                         mocid
                        )
                 VALUES (seq_possessions.NEXTVAL, p_possessionid, 0,
                         mocidvar
                        );

            COMMIT;
         END IF;
      END IF;

      SELECT COUNT (*)
        INTO tmpvar
        FROM aircraft
       WHERE (   (    misequipid = p_equipmentid
                  AND homeenterpriselocationcode = p_fromelc
                  AND missiondesignseries = p_mds
                  AND missiondesignseriesblock = NVL (p_mdsblock, '000')
                 )
              OR (misequipid = p_equipmentid)
             )
         AND mocid = mocidvar;

      IF tmpvar = 0
      THEN
         SELECT seq_aircraft.NEXTVAL
           INTO acidvar
           FROM DUAL;

         -- aicraft not found in database. Ok to add  --
         INSERT INTO aircraft
                     (aircraftid, misequipid, tailnumber,
                      shorttailnumber, serialnumber, missiondesignseries,
                      missiondesignseriesblock,
                      possessionid,
                      aircraftyear,
                      aircraft.localconfigid, homeenterpriselocationcode,
                      currententerpriselocationcode, unitid,
                      owningworkcenter, mocid, squadronid, aircraftmdsid,
                      assignmentstatus, commandcode,
                      statusnarrative, statuswuclcn,
                      locationcode, geoloccode, multiconfigid,
                      openstatuseventjcn, countrycode,
                      locationid,
                      staloccodeid,
                      aircraftwucid,
                      etic,
                      statuscodeid
                     )
              VALUES (acidvar, p_equipmentid, SUBSTR (p_equipmentid, 2, 4),
                      SUBSTR (p_equipmentid, 2, 4), p_serialnumber, p_mds,
                      NVL (p_mdsblock, '000'),
                      (SELECT possessionid
                         FROM possessions
                        WHERE possessioncode = p_possessionid
                          AND mocid = mocidvar),
                      NVL (SUBSTR (p_serialnumber, 1, 2), '00'),
                      p_equiporgflightid, p_fromelc,
                      p_fromelc, p_fromunitid,
                      p_owningworkcenter, mocidvar, sqidvar, mdsidvar,
                      p_assignmentstatuscode, p_owningmajcom,
                      RTRIM (p_statusnarrative), RTRIM (p_workunitcode),
                      p_locationcode, p_geoloccode, p_multiconfigid,
                      p_jobcontrolnumber, 'US',
                      (SELECT locationid
                         FROM locations
                        WHERE RTRIM (locationcode) = RTRIM (p_locationcode)
                          AND elc = p_fromelc),
                      (SELECT staloccodeid
                         FROM stationloccodes
                        WHERE stationloc = p_geoloccode),
                      (SELECT wucid
                         FROM wuc
                        WHERE RTRIM (wuccode) = RTRIM (p_workunitcode)
                          AND RTRIM (missiondesignseries) = RTRIM (p_mds)
                          AND blocknumber = NVL (p_mdsblock, '000')),
                      p_estimatedtimeincommission,
                      (SELECT statuscodeid
                         FROM statuscode
                        WHERE mocid = mocidvar AND defaultstatuscode = 1)
                     );

         COMMIT;
         addaircraftenginedata (acidvar, mdsidvar);

         IF (p_conditionstatuscode = NULL OR LENGTH (p_conditionstatuscode) =
                                                                             0
            )
         THEN
            condstat := NVL (p_maintenancestatuscode, '');
         ELSE
            condstat :=
                    NVL (p_maintenancestatuscode, '')
                    || p_conditionstatuscode;
         END IF;

         IF (LENGTH (condstat) > 1)
         THEN
            SELECT COUNT (*)
              INTO tmpvar
              FROM conditioncodes
             WHERE TRIM (conditioncode) = condstat AND mocid = mocidvar;

            IF (tmpvar > 0)
            THEN
               SELECT condcodeid
                 INTO condidvar
                 FROM conditioncodes
                WHERE TRIM (conditioncode) = condstat AND mocid = mocidvar;

               UPDATE aircraft
                  SET conditioncodeid = condidvar,
                      conditioncodetime = SYSDATE
                WHERE aircraftid = acidvar;
            END IF;
         END IF;

         COMMIT;

         IF (p_dedicatedcrewchief IS NOT NULL)
         THEN
            add_crewchief_fromimds (acidvar, mocidvar, p_dedicatedcrewchief);
         END IF;

         IF (p_armed IS NOT NULL)
         THEN
            IF (p_armed = 'Y' OR p_armed = '1')
            THEN
               UPDATE aircraft
                  SET arm_dearm = 1
                WHERE aircraftid = acidvar;
            ELSE
               UPDATE aircraft
                  SET arm_dearm = 0
                WHERE aircraftid = acidvar;
            END IF;
         END IF;

         COMMIT;

         IF (p_priority IS NOT NULL)
         THEN
            UPDATE aircraft
               SET priority = isnumeric (p_priority)
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_lastflydate IS NOT NULL)
         THEN
            UPDATE aircraft
               SET lastflowntime =
                              TO_DATE (p_lastflydate, 'YYYY-MM-DD HH24:MI:SS')
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_startdate IS NOT NULL)
         THEN
            IF (p_startdate != '0000-00-00')
            THEN
               UPDATE aircraft
                  SET conditioncodetime =
                         TO_DATE (RTRIM (   p_startdate
                                         || ' '
                                         || NVL (p_starttime, '')
                                        ),
                                  'YYYY-MM-DD HH24:MI:SS'
                                 )
                         WHERE aircraftid = acidvar;
            END IF;
         END IF;

         COMMIT;

         IF (LENGTH (p_localoption) > 8)
         THEN
            UPDATE aircraft
               SET localoption = SUBSTR (p_localoption, 1, 8)
               WHERE aircraftid = acidvar;
         ELSE
            IF (p_localoption IS NOT NULL)
            THEN
               UPDATE aircraft
                  SET localoption = p_localoption
                  WHERE aircraftid = acidvar;
            END IF;
         END IF;
      END IF;
   END IF;
END insertaircraftextracttrx@
