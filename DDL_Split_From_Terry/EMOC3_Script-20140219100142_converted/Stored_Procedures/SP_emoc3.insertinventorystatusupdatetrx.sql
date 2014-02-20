--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTINVENTORYSTATUSUPDATETRX" ( 
   p_homeelc                      VARCHAR2, 
   p_currentelc                   VARCHAR2, 
   p_unitid                       VARCHAR2, 
   p_equipmentid                  VARCHAR2, 
   p_gainlossactioncode           VARCHAR2, 
   p_changedate                   VARCHAR2, 
   p_changetime                   VARCHAR2, 
   p_possessionid                 VARCHAR2, 
   p_assignmentstatuscode         VARCHAR2, 
   p_assignmentcommandabbr        VARCHAR2, 
   p_aircraftconfigid             VARCHAR2, 
   p_trainerreportingdesignator   VARCHAR2, 
   p_missiondesignseries          VARCHAR2, 
   p_majorcommandabbr             VARCHAR2, 
   p_hostunitdateandtime          VARCHAR2, 
   p_transactionordinaldate       VARCHAR2 
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
   NAME:       insertstatusupdatetrx 
   PURPOSE: 
 
   REVISIONS: 
   Ver        Date        Author           Description 
   ---------  ----------  ---------------  ------------------------------------ 
   1.0        12/15/2006  r mcbride        1. Created this procedure. 
 
   NOTES: 
 
   Automatically available Auto Replace Keywords: 
      Object Name:     insertstatusupdatetrx 
      Sysdate:         12/15/2006 
      Date and Time:   12/15/2006, 10:30:55 AM, and 12/15/2006 10:30:55 AM 
      Username:         emoc3) 
      Table Name:       inventorystatusupdatetrx) 
 
******************************************************************************/ 
BEGIN 
   SELECT seq_inventorystatusupdate.NEXTVAL 
     INTO tmpvar 
     FROM DUAL; 
 
   INSERT INTO inventorystatusupdatetrx 
               (inventorystatusupdatetrxid, homeenterpriselocationcode, 
                currententerpriselocationcode, unitid, equipmentid, 
                gainlossactioncode, changedate, changetime, 
                possessionid, assignmentstatuscode, 
                assignmentcommandabbr, aircraftconfigid, 
                trainerreportingdesignator, missiondesignseries, 
                majorcommandabbr, hostunitdateandtime, 
                transactionordinaldate 
               ) 
        VALUES (tmpvar, p_homeelc, 
                p_currentelc, p_unitid, p_equipmentid, 
                p_gainlossactioncode, p_changedate, p_changetime, 
                p_possessionid, p_assignmentstatuscode, 
                p_assignmentcommandabbr, p_aircraftconfigid, 
                p_trainerreportingdesignator, p_missiondesignseries, 
                p_majorcommandabbr, p_hostunitdateandtime, 
                p_transactionordinaldate 
               ); 
 
   COMMIT; 
   get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar); 
 
   IF (mocidvar IS NOT NULL) 
   THEN 
      get_aircraftid_by_mocequipid (mocidvar, p_equipmentid, acidvar); 
 
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
 
      IF (acidvar IS NOT NULL) 
      THEN 
         UPDATE aircraft 
            SET possessionid = 
                   (SELECT possessionid 
                      FROM possessions 
                     WHERE possessioncode = p_possessionid 
                           AND mocid = mocidvar), 
                assignmentstatus = p_assignmentstatuscode, 
                assignmentcmd = p_assignmentcommandabbr, 
                acft_config_id = p_aircraftconfigid, 
                gainlossactioncode = p_gainlossactioncode, 
                commandcode = p_majorcommandabbr, 
                changedate = p_changedate, 
                changetime = p_changetime, 
                reportdesig = p_trainerreportingdesignator 
          WHERE aircraftid = acidvar; 
      END IF; 
   END IF; 
         emoc_cache.updatechangenotification('aircraft'||to_char(acidvar), 0); 
EXCEPTION 
   WHEN NO_DATA_FOUND 
   THEN 
      NULL; 
   WHEN OTHERS 
   THEN 
      -- Consider logging the error and then re-raise 
      RAISE; 
END insertinventorystatusupdatetrx;
 
 
 
 
 
 
 
 
@
