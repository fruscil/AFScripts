--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTEQUIPLOCATIONUPDATETRX" ( 
   p_homeelc                  VARCHAR2, 
   p_currentelc               VARCHAR2, 
   p_unitid                   VARCHAR2, 
   p_equipmentid              VARCHAR2, 
   p_locationcode             VARCHAR2, 
   p_hostunitdateandtime      VARCHAR2, 
   p_transactionordinaldate   VARCHAR2 
) 
AS 
/****************************************************************************** 
   NAME:       InsertEquipLocationUpdateTrx 
   PURPOSE: 
 
   REVISIONS: 
   Ver        Date        Author           Description 
   ---------  ----------  ---------------  ------------------------------------ 
   1.0        12/18/2006  mcbride        1. Created this procedure. 
 
   NOTES: 
 
   Automatically available Auto Replace Keywords: 
      Object Name:     InsertEquipLocationUpdateTrx 
      Sysdate:         12/18/2006 
      Date and Time:   12/18/2006, 9:52:49 AM, and 12/18/2006 9:52:49 AM 
      Username:         emoc3) 
      Table Name:       equipmentlocationupdatetrx) 
 
******************************************************************************/ 
   tmpvar      INTEGER := 0; 
   mocidvar    NUMBER; 
   wingidvar   NUMBER; 
   acidvar    NUMBER; 
BEGIN 
   SELECT seq_equiplocationupdate.NEXTVAL 
     INTO tmpvar 
     FROM DUAL; 
 
   INSERT INTO equipmentlocationupdatetrx 
               (equipmentlocationupdatetrxid, homeenterpriselocationcode, 
                currententerpriselocationcode, unitid, equipmentid, 
                locationcode, hostunitdateandtime, 
                transactionordinaldate 
               ) 
        VALUES (tmpvar, p_homeelc, 
                p_currentelc, p_unitid, p_equipmentid, 
                p_locationcode, p_hostunitdateandtime, 
                p_transactionordinaldate 
               ); 
 
   COMMIT; 
   get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar); 
   get_aircraftid_by_mocequipid(mocidvar,p_equipmentid,acidvar); 
 
   IF (mocidvar IS NOT NULL) 
   THEN 
      IF (p_locationcode = '*') 
      THEN 
         UPDATE aircraft 
            SET locationcode = NULL, 
                locationid = NULL, 
                aircraft.locationlastupdated = SYSDATE 
          WHERE misequipid = p_equipmentid AND mocid = mocidvar; 
      ELSE 
         UPDATE aircraft 
            SET locationcode = p_locationcode, 
                locationid = 
                   (SELECT locationid 
                      FROM locations 
                     WHERE locationcode = p_locationcode 
                           AND elc = p_currentelc), 
                aircraft.locationlastupdated = SYSDATE 
          WHERE aircraft.misequipid = p_equipmentid 
            AND aircraft.mocid = mocidvar; 
      END IF; 
 
      COMMIT; 
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
END insertequiplocationupdatetrx;
 
 
 
 
 
 
 
 
@
