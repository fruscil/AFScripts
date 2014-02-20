--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTGAINLOSSSTATUSUPDATETRX" ( 
   p_homeelc                        VARCHAR2, 
   p_currentelc                     VARCHAR2, 
   p_unitid                         VARCHAR2, 
   p_equipmentid                    VARCHAR2, 
   p_maintenancestatuscode          VARCHAR2, 
   p_conditionstatuscode            VARCHAR2, 
   p_occurancedate                  VARCHAR2, 
   p_occurancetime                  VARCHAR2, 
   p_gainlossactioncode             VARCHAR2, 
   p_installationcode               VARCHAR2, 
   p_majorcommandabbreviation       VARCHAR2, 
   p_gainlosstransferoption         VARCHAR2, 
   p_transfertype                   VARCHAR2, 
   p_eventid                        VARCHAR2, 
   p_workcenterevent                VARCHAR2, 
   p_workunitcode                   VARCHAR2, 
   p_requestapprovedconfiguration   VARCHAR2, 
   p_requestactualconfiguration     VARCHAR2, 
   p_hostunitdateandtime            VARCHAR2, 
   p_transactionordinaldate         VARCHAR2 
) 
AS 
/****************************************************************************** 
   NAME:       GAINLOSSSTATUSUPDATETRX 
   PURPOSE: 
 
   REVISIONS: 
   Ver        Date        Author           Description 
   ---------  ----------  ---------------  ------------------------------------ 
   1.0        12/15/2006  mcbride        1. Created this procedure. 
 
   NOTES: 
 
   Automatically available Auto Replace Keywords: 
      Object Name:     GAINLOSSSTATUSUPDATETRX 
      Sysdate:         12/15/2006 
      Date and Time:   12/15/2006, 9:52:49 AM, and 12/15/2006 9:52:49 AM 
      Username:         emoc3) 
      Table Name:       gainlossstatusupdatetrx) 
 
******************************************************************************/ 
   tmpvar      INTEGER     := 0; 
   acidvar     NUMBER; 
   mocidvar    NUMBER; 
   condidvar   NUMBER; 
   condstat    VARCHAR (5); 
BEGIN 
   SELECT seq_gainlossstatusupdate.NEXTVAL 
     INTO tmpvar 
     FROM DUAL; 
 
   INSERT INTO gainlossstatusupdatetrx 
               (gainlossstatusupdatetrxid, homeenterpriselocationcode, 
                currententerpriselocationcode, unitid, equipmentid, 
                maintenancestatuscode, conditionstatuscode, 
                occurancedate, occurancetime, gainlossactioncode, 
                installationcode, majorcommandabbreviation, 
                gainlosstransferoption, transfertype, eventid, 
                workcenterevent, workunitcode, 
                requestapprovedconfiguration, requestactualconfiguration, 
                hostunitdateandtime, transactionordinaldate 
               ) 
        VALUES (tmpvar, p_homeelc, 
                p_currentelc, p_unitid, p_equipmentid, 
                p_maintenancestatuscode, p_conditionstatuscode, 
                p_occurancedate, p_occurancetime, p_gainlossactioncode, 
                p_installationcode, p_majorcommandabbreviation, 
                p_gainlosstransferoption, p_transfertype, p_eventid, 
                p_workcenterevent, p_workunitcode, 
                p_requestapprovedconfiguration, p_requestactualconfiguration, 
                p_hostunitdateandtime, p_transactionordinaldate 
               ); 
 
   COMMIT; 
   get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar); 
 
   IF (mocidvar IS NOT NULL) 
   THEN 
      get_aircraftid_by_mocequipid (mocidvar, p_equipmentid, acidvar); 
 
      IF (acidvar IS NOT NULL) 
      THEN 
         UPDATE aircraft 
            SET gainlossactioncode = p_gainlossactioncode, 
                occurancedate = p_occurancedate, 
                occurancetime = p_occurancetime, 
                commandcode = p_majorcommandabbreviation, 
                transfertype = p_transfertype, 
                gainlosstransferoption = p_gainlosstransferoption, 
                statuswuclcn = p_workunitcode, 
                openstatuseventjcn = p_eventid, 
                geoloccode = p_installationcode 
          WHERE aircraftid = acidvar; 
 
         COMMIT; 
 
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
         emoc_cache.updatechangenotification('aircraft'||to_char(acidvar), 0); 
         COMMIT; 
      END IF; 
   END IF; 
END insertgainlossstatusupdatetrx;
 
 
 
 
 
 
 
 
@
