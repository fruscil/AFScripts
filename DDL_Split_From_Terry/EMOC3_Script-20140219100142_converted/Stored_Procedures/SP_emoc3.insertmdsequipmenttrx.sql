--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTMDSEQUIPMENTTRX" ( 
   p_homeelc                       VARCHAR, 
   p_currentelc                    VARCHAR, 
   p_unitid                        VARCHAR, 
   p_equipmentid                   VARCHAR, 
   p_serialnumber                  VARCHAR, 
   p_standardreportingdesignator   VARCHAR, 
   p_afi21103selectionindicator    VARCHAR, 
   p_possessionid                  VARCHAR, 
   p_assignmentstatuscode          VARCHAR, 
   p_assignmentcommandabbr         VARCHAR, 
   p_aircraftconfigurationid       VARCHAR, 
   p_programelementcode            VARCHAR, 
   p_maintenancetypeinterval       VARCHAR, 
   p_operatingtime                 VARCHAR, 
   p_previousoperatingtime         VARCHAR, 
   p_totalsorties                  VARCHAR, 
   p_totallandings                 VARCHAR, 
   p_fullstoplandings              VARCHAR, 
   p_createautohistoryeh           VARCHAR, 
   p_itemmanufacturer              VARCHAR, 
   p_equipmentacceptancedate       VARCHAR, 
   p_typeofrepair                  VARCHAR, 
   p_repairfrequency               VARCHAR, 
   p_repairtypeinterval            VARCHAR, 
   p_lastoverhauldate              VARCHAR, 
   p_lastoverhaultime              VARCHAR, 
   p_primeremoteterminalid         VARCHAR, 
   p_secondaryremoteterminalid     VARCHAR, 
   p_localoption                   VARCHAR, 
   p_owningworkcenter              VARCHAR, 
   p_supportgeneralreportable      VARCHAR, 
   p_supplyfactor                  VARCHAR, 
   p_transactionordinaldate        VARCHAR, 
   p_hostunitdateandtime           VARCHAR, 
   p_transactiontype               VARCHAR, 
   p_mds                           VARCHAR, 
   p_mdsblock                      VARCHAR 
) 
AS 
   tmpvar      NUMBER; 
   trxidvar    NUMBER; 
   acidvar     NUMBER; 
   sqidvar     NUMBER; 
   mocidvar    NUMBER; 
   wingidvar   NUMBER; 
   wcidvar     NUMBER; 
   sqnamevar   VARCHAR (50); 
   porgidvar   VARCHAR (10); 
   mdsidvar    NUMBER; 
/****************************************************************************** 
   NAME:       MDSEquipmentLoad 
   PURPOSE: 
 
   REVISIONS: 
   Ver        Date        Author           Description 
   ---------  ----------  ---------------  ------------------------------------ 
   1.0        12/23/2006  r mcbride        1. Created this procedure. 
 
   NOTES: 
 
   Automatically available Auto Replace Keywords: 
      Object Name:     MDSEquipmentLoad 
      Sysdate:         12/23/2006 
      Date and Time:   12/23/2006, 10:37:53 AM, and 12/23/2006 10:37:53 AM 
      Username:         (emoc3) 
      Table Name:       (mdsequipmenttrx) 
 
******************************************************************************/ 
BEGIN 
   SELECT seq_mdsequipmenttrx.NEXTVAL 
     INTO trxidvar 
     FROM DUAL; 
 
   INSERT INTO mdsequipmenttrx 
               (mdsequiptrxid, homeenterpriselocationcode, 
                currententerpriselocationcode, unitid, equipmentid, 
                serialnumber, standardreportingdesignator, 
                afi21103selectionindicator, possessionid, 
                assignmentstatuscode, assignmentcommandabbreviation, 
                aircraftconfigurationid, programelementcode, 
                maintenancetypeinterval, operatingtime, 
                previousoperatingtime, totalsorties, totallandings, 
                fullstoplandings, createautohistoryeh, 
                itemmanufacturer, equipmentacceptancedate, 
                typeofrepair, repairfrequency, repairtypeinterval, 
                lastoverhauldate, lastoverhaultime, 
                primeremoteterminalid, secondaryremoteterminalid, 
                localoption, owningworkcenter, 
                supportgeneralreportable, supplyfactor, 
                transactionordinaldate, hostunitdateandtime, 
                transactiontype, equipmentdesignator, productionblocknumber 
               ) 
        VALUES (trxidvar, p_homeelc, 
                p_currentelc, p_unitid, p_equipmentid, 
                p_serialnumber, p_standardreportingdesignator, 
                p_afi21103selectionindicator, p_possessionid, 
                p_assignmentstatuscode, p_assignmentcommandabbr, 
                p_aircraftconfigurationid, p_programelementcode, 
                p_maintenancetypeinterval, p_operatingtime, 
                p_previousoperatingtime, p_totalsorties, p_totallandings, 
                p_fullstoplandings, p_createautohistoryeh, 
                p_itemmanufacturer, p_equipmentacceptancedate, 
                p_typeofrepair, p_repairfrequency, p_repairtypeinterval, 
                p_lastoverhauldate, p_lastoverhaultime, 
                p_primeremoteterminalid, p_secondaryremoteterminalid, 
                p_localoption, p_owningworkcenter, 
                p_supportgeneralreportable, p_supplyfactor, 
                p_transactionordinaldate, p_hostunitdateandtime, 
                p_transactiontype, p_mds, p_mdsblock 
               ); 
 
   COMMIT; 
   get_wingid_by_elcunitid (p_currentelc, p_unitid, wingidvar); 
 
   IF (LOWER (p_transactiontype) = 'missiondesignseriesequipmentload') 
   THEN 
      IF (wingidvar IS NOT NULL) 
      THEN 
         get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar); 
 
         SELECT COUNT (*) 
           INTO tmpvar 
           FROM workcenters 
          WHERE workcentercode = p_owningworkcenter AND wingid = wingidvar; 
 
         IF (tmpvar > 0) 
         THEN 
            SELECT workcenterid, porgid 
              INTO wcidvar, porgidvar 
              FROM (SELECT workcenterid, porgid 
                      FROM workcenters 
                     WHERE workcentercode = p_owningworkcenter 
                       AND wingid = wingidvar 
                       AND ROWNUM < 2); 
         END IF; 
 
         SELECT COUNT (*) 
           INTO tmpvar 
           FROM squadrons 
          WHERE wingid = wingidvar AND organization_id = porgidvar; 
 
         IF (tmpvar > 0) 
         THEN 
            SELECT squadronid 
              INTO sqidvar 
              FROM (SELECT squadronid 
                      FROM squadrons 
                     WHERE wingid = wingidvar 
                       AND organization_id = porgidvar 
                       AND ROWNUM < 2); 
         ELSE 
            SELECT seq_squadrons.NEXTVAL 
              INTO sqidvar 
              FROM DUAL; 
 
            INSERT INTO squadrons 
                        (squadronid, squadronname, shortname, 
                         organization_id, mocid, wingid, 
                         colorid 
                        ) 
                 VALUES (sqidvar, p_owningworkcenter, p_owningworkcenter, 
                         porgidvar, mocidvar, wingidvar, 
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
                     AND homeenterpriselocationcode = p_homeelc 
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
                        (aircraftid, misequipid, 
                         tailnumber, 
                         shorttailnumber, serialnumber, missiondesignseries, 
                         missiondesignseriesblock, 
                         possessionid, 
                         aircraftyear, 
                         aircraft.acft_config_id, homeenterpriselocationcode, 
                         currententerpriselocationcode, unitid, 
                         owningworkcenter, mocid, squadronid, aircraftmdsid, 
                         assignmentstatus, assignmentcmd, 
                         statuscodeid 
                        ) 
                 VALUES (acidvar, p_equipmentid, 
                         SUBSTR (p_equipmentid, 2, 4), 
                         SUBSTR (p_equipmentid, 2, 4), p_serialnumber, p_mds, 
                         NVL (p_mdsblock, '000'), 
                         (SELECT possessionid 
                            FROM possessions 
                           WHERE possessioncode = p_possessionid 
                             AND mocid = mocidvar), 
                         NVL (SUBSTR (p_serialnumber, 1, 2), '00'), 
                         p_aircraftconfigurationid, p_homeelc, 
                         p_currentelc, p_unitid, 
                         p_owningworkcenter, mocidvar, sqidvar, mdsidvar, 
                         p_assignmentstatuscode, p_assignmentcommandabbr, 
                         (SELECT statuscodeid 
                            FROM (SELECT statuscodeid 
                                    FROM statuscode 
                                   WHERE mocid = mocidvar 
                                     AND defaultstatuscode = 1 
                                     AND ROWNUM < 2)) 
                        ); 
 
            COMMIT; 
            addaircraftenginedata (acidvar, mdsidvar); 
         END IF; 
      ELSE 
         UPDATE mdsequipmenttrx 
            SET applicationnote = 'ELC and UnitId not found in Wings table.' 
          WHERE mdsequiptrxid = trxidvar; 
      END IF; 
   ELSE 
      get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar); 
 
      IF (mocidvar IS NOT NULL) 
      THEN 
         get_aircraftid_by_mocequipid (mocidvar, p_equipmentid, acidvar); 
 
         IF (acidvar IS NOT NULL) 
         THEN 
            IF (LOWER (p_transactiontype) = 
                                          'missiondesignseriesequipmentdelete' 
               ) 
            THEN 
               delete_aircraft (acidvar); 
            ELSE 
               IF (p_localoption IS NOT NULL) 
               THEN 
                  UPDATE aircraft 
                     SET aircraft.localoption = p_localoption 
                   WHERE aircraftid = acidvar; 
 
                  COMMIT; 
               END IF; 
 
               IF (p_assignmentstatuscode IS NOT NULL) 
               THEN 
                  UPDATE aircraft 
                     SET aircraft.assignmentstatus = p_assignmentstatuscode 
                   WHERE aircraftid = acidvar; 
 
                  COMMIT; 
               END IF; 
 
               IF (p_assignmentcommandabbr IS NOT NULL) 
               THEN 
                  UPDATE aircraft 
                     SET aircraft.assignmentcmd = p_assignmentcommandabbr 
                   WHERE aircraftid = acidvar; 
 
                  COMMIT; 
               END IF; 
 
               IF (p_aircraftconfigurationid IS NOT NULL) 
               THEN 
                  UPDATE aircraft 
                     SET aircraft.multiconfigid = p_aircraftconfigurationid 
                   WHERE aircraftid = acidvar; 
 
                  COMMIT; 
               END IF; 
 
               IF (p_owningworkcenter IS NOT NULL) 
               THEN 
                  UPDATE aircraft 
                     SET aircraft.owningworkcenter = p_owningworkcenter 
                   WHERE aircraftid = acidvar; 
 
                  COMMIT; 
                  get_squadid_by_owc (p_owningworkcenter, mocidvar, sqidvar); 
 
                  IF (sqidvar IS NOT NULL) 
                  THEN 
                     UPDATE aircraft 
                        SET squadronid = sqidvar 
                      WHERE aircraftid = acidvar; 
 
                     COMMIT; 
                  END IF; 
               END IF; 
            END IF; 
         END IF; 
      END IF; 
               emoc_cache.updatechangenotification('aircraft'||to_char(acidvar), 0); 
   END IF; 
 
   COMMIT; 
END insertmdsequipmenttrx;
 
 
 
 
 
 
 
 
@
