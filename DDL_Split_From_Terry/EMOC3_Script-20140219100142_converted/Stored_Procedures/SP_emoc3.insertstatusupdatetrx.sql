--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 12874
	Relative Current Chunk Line Number: 12874
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '    -- Consider logging the error and then re-raise\n      RAISE;\nEND insertstatusupdatetrx;\n\n[CREATE]'
------------

The following statement (from line 12519 to 12872) and was skipped" BEGIN*/
 CREATE PROCEDURE                 "EMOC3"."INSERTSTATUSUPDATETRX" (
   p_homeelc                     VARCHAR2,
   p_currentelc                  VARCHAR2,
   p_unitid                      VARCHAR2,
   p_equipmentid                 VARCHAR2,
   p_maintenancestatuscode       VARCHAR2,
   p_conditionstatuscode         VARCHAR2,
   p_startdate                   VARCHAR2,
   p_starttime                   VARCHAR2,
   p_workunitcode                VARCHAR2,
   p_eventid                     VARCHAR2,
   p_workcenterevent             VARCHAR2,
   p_estimatedtimeincommission   VARCHAR2,
   p_partsplus                   VARCHAR2,
   p_geoloccode                  VARCHAR2,
   p_statusnarrative             VARCHAR2,
   p_locationcode                VARCHAR2,
   p_organizationflightid        VARCHAR2,
   p_maintenancerepairpriority   VARCHAR2,
   p_armed                       VARCHAR2,
   p_multipleconfigurationid     VARCHAR2,
   p_localoption                 VARCHAR2,
   p_receivemaintlimitreport     VARCHAR2,
   p_hostunitdateandtime         VARCHAR2,
   p_transactionordinaldate      VARCHAR2,
   p_utcstartdateandtime         DATE
)
AS
   tmpvar      NUMBER;
   mocidvar    NUMBER;
   wingidvar   NUMBER;
   sqidvar     NUMBER;
   acidvar     NUMBER;
   mds         VARCHAR2 (15);
   blk         VARCHAR2 (3);
   pplusvar    VARCHAR2 (4);
   /******************************************************************************
   NAME:       insertstatusupdatetrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  r mcbride        1. Created this procedure.
   1.1        02/07/2011  FE               1. Inserted fix for QC 425
   1.2        09/13/2012  JAL              1. Inserted fix for QC 518
   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     insertstatusupdatetrx
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       statusupdatetrx)

******************************************************************************/
BEGIN
   SELECT seq_statusupdatetrx.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   INSERT INTO statusupdatetrx
               (statusupdatetrxid, homeenterpriselocationcode,
                currententerpriselocationcode, unitid, equipmentid,
                maintenancestatuscode, conditionstatuscode, startdate,
                starttime, workunitcode, eventid, workcenterevent,
                estimatedtimeincommission, partsplus, geoloccode,
                statusnarrative, locationcode, equipmentorganizationflightid,
                maintenancerepairpriority, armed,
                multipleconfigurationid, localoption,
                receivemaintenancelimitreport, hostunitdateandtime,
                transactionordinaldate, utcstartdateandtime
               )
        VALUES (tmpvar, p_homeelc,
                p_currentelc, p_unitid, p_equipmentid,
                p_maintenancestatuscode, p_conditionstatuscode, p_startdate,
                p_starttime, p_workunitcode, p_eventid, p_workcenterevent,
                p_estimatedtimeincommission, p_partsplus, p_geoloccode,
                p_statusnarrative, p_locationcode, p_organizationflightid,
                p_maintenancerepairpriority, p_armed,
                p_multipleconfigurationid, p_localoption,
                p_receivemaintlimitreport, p_hostunitdateandtime,
                p_transactionordinaldate, p_utcstartdateandtime
               );

   COMMIT;
   /*GET MOCID for gathering code ids*/
   get_mocid_by_elcunitid (p_homeelc, p_unitid, mocidvar);

   IF mocidvar IS NOT NULL
   THEN
      /*Get Aircraftid to make sure correct schedule line*/
      get_aircraftid_by_mocequipid (mocidvar, p_equipmentid, acidvar);

      IF acidvar IS NOT NULL
      THEN
         IF (p_workunitcode IS NOT NULL)
         THEN
            SELECT missiondesignseries, missiondesignseriesblock
              INTO mds, blk
              FROM aircraft
             WHERE aircraftid = acidvar;

            UPDATE aircraft
               SET statuswuclcn = p_workunitcode,
                   aircraftwucid =
                      (SELECT wucid
                         FROM (SELECT wucid
                                 FROM wuc
                                WHERE wuccode = p_workunitcode
                                  AND missiondesignseries = mds
                                  AND blocknumber = blk
                                  AND ROWNUM < 2))
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_startdate IS NOT NULL)
         THEN
            UPDATE aircraft
               SET statusstartdate = p_startdate
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_starttime IS NOT NULL)
         THEN
            UPDATE aircraft
               SET statusstarttime = p_starttime
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_geoloccode IS NOT NULL)
         THEN
            UPDATE aircraft
               SET geoloccode = p_geoloccode,
                   staloccodeid =
                      (SELECT staloccodeid
                         FROM (SELECT staloccodeid
                                 FROM stationloccodes
                                WHERE stationloc = p_geoloccode AND ROWNUM < 2))
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_locationcode IS NOT NULL)
         THEN
            UPDATE aircraft
               SET locationcode = p_locationcode,
                   locationid =
                      (SELECT locationid
                         FROM (SELECT locationid
                                 FROM locations
                                WHERE locationcode = p_locationcode
                                  AND elc = p_currentelc
                                  AND ROWNUM < 2))
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_statusnarrative IS NOT NULL)
         THEN
            UPDATE aircraft
               SET statusnarrative = p_statusnarrative
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_localoption IS NOT NULL)
         THEN
            UPDATE aircraft
               SET localoption = p_localoption
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_maintenancerepairpriority IS NOT NULL)
         THEN
            UPDATE aircraft
               SET priority = isnumeric (p_maintenancerepairpriority)
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_armed IS NOT NULL)
         THEN
            IF (p_armed = 'Y')
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

         IF (p_organizationflightid IS NOT NULL)
         THEN
            UPDATE aircraft
               SET localconfigid = p_organizationflightid
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_multipleconfigurationid IS NOT NULL)
         THEN
            UPDATE aircraft
               SET multiconfigid = p_multipleconfigurationid
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_eventid IS NOT NULL)
         THEN
            IF (p_workcenterevent IS NOT NULL)
            THEN
               UPDATE aircraft
                  SET openstatuseventjcn = p_eventid || p_workcenterevent
                WHERE aircraftid = acidvar;
            ELSE
               UPDATE aircraft
                  SET openstatuseventjcn = p_eventid
                WHERE aircraftid = acidvar;
            END IF;
         END IF;

         COMMIT;

         IF (p_maintenancestatuscode IS NOT NULL)
         THEN
            IF (p_conditionstatuscode IS NOT NULL)
            THEN
               UPDATE aircraft
                  SET conditioncodeid =
                         (SELECT condcodeid
                            FROM conditioncodes
                           WHERE conditioncode =
                                       p_maintenancestatuscode
                                    || p_conditionstatuscode
                             AND mocid = mocidvar)
                WHERE aircraftid = acidvar;
            ELSE
               UPDATE aircraft
                  SET conditioncodeid =
                         (SELECT condcodeid
                            FROM conditioncodes
                           WHERE trim(conditioncode) = p_maintenancestatuscode
                             AND mocid = mocidvar)
                WHERE aircraftid = acidvar;
            END IF;
         END IF;

         COMMIT;

         IF (p_maintenancestatuscode = 'FMC')
         THEN
             UPDATE aircraft
              SET etic = NULL,
                  statuswuclcn = NULL,
                  statusnarrative = NULL,
                  eticlastupdated = NULL,
                  aircraftwucid = NULL,
                  eticdatetime = NULL,
                  wuclastupdated = NULL,
				  openstatuseventjcn = NULL
              WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_estimatedtimeincommission IS NOT NULL)
         THEN
            UPDATE aircraft
               SET etic = p_estimatedtimeincommission
             WHERE aircraftid = acidvar;
         END IF;

         COMMIT;

         IF (p_partsplus IS NOT NULL)
         THEN
            IF (LENGTH (p_partsplus) = 4)
            THEN
               pplusvar := p_partsplus;

               UPDATE aircraft
                  SET etic = 'PARTS' || p_partsplus
                WHERE aircraftid = acidvar;
            ELSE
               IF (LENGTH (p_partsplus) = 9)
               THEN
                  pplusvar := SUBSTR (p_partsplus, 6, 4);
               END IF;

               UPDATE aircraft
                  SET etic = p_partsplus
                WHERE aircraftid = acidvar;
            END IF;
         ELSE
            pplusvar := NULL;
         END IF;

         COMMIT;

         INSERT INTO aircraftstatusupdate
                     (statusupdateid, unitid, equipmentid,
                      maintenancestatuscode, conditionstatuscode,
                      statusstartdate, statusstarttime, workunitcode,
                      openstatusevent,
                      estimatedtimeincommission, partsplus,
                      statusnarrative, LOCATION,
                      configuration, priority,
                      arm, multipleconfigid, localoption,
                      aircraftid, geoloccode
                     )
              VALUES (seq_statusupdate.NEXTVAL, p_unitid, p_equipmentid,
                      p_maintenancestatuscode, p_conditionstatuscode,
                      p_startdate, p_starttime, p_workunitcode,
                      p_eventid || NVL (p_workcenterevent, ''),
                      p_estimatedtimeincommission, pplusvar,
                      p_statusnarrative, p_locationcode,
                      p_organizationflightid, p_maintenancerepairpriority,
                      p_armed, p_multipleconfigurationid, p_localoption,
                      acidvar, p_geoloccode
                     );

         COMMIT;
      END IF;
   END IF;
         emoc_cache.updatechangenotification('aircraft'||TO_CHAR(acidvar), 0);
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertstatusupdatetrx@
