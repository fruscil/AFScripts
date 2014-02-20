--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTSTATUSCORRECTIONTRX" ( 
   p_homeelc                  VARCHAR2, 
   p_currentelc               VARCHAR2, 
   p_unitid                   VARCHAR2, 
   p_equipmentid              VARCHAR2, 
   p_maintenancestatuscode    VARCHAR2, 
   p_conditionstatuscode      VARCHAR2, 
   p_startdate                VARCHAR2, 
   p_starttime                VARCHAR2, 
   p_stopdate                 VARCHAR2, 
   p_stoptime                 VARCHAR2, 
   p_workunitcode             VARCHAR2, 
   p_geoloccode               VARCHAR2, 
   p_transactionordinaldate   VARCHAR2, 
   p_hostunitdateandtime      VARCHAR2 
) 
IS 
   tmpvar     NUMBER; 
   mocidvar   NUMBER; 
   acidvar    NUMBER; 
/****************************************************************************** 
   NAME:       insertstatuscorrectiontrx 
   PURPOSE: 
 
   REVISIONS: 
   Ver        Date        Author           Description 
   ---------  ----------  ---------------  ------------------------------------ 
   1.0        12/15/2006  r mcbride        1. Created this procedure. 
 
   NOTES: 
 
   Automatically available Auto Replace Keywords: 
      Object Name:     insertstatuscorrectiontrx 
      Sysdate:         12/15/2006 
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM 
      Username:         emoc3) 
      Table Name:       statuscorrectiontrx) 
 
******************************************************************************/ 
BEGIN 
   SELECT seq_statuscorrection.NEXTVAL 
     INTO tmpvar 
     FROM DUAL; 
 
   INSERT INTO statuscorrectiontrx 
               (statuscorrectionid, homeenterpriselocationcode, 
                currententerpriselocationcode, unitid, equipmentid, 
                maintenancestatuscode, conditionstatuscode, startdate, 
                starttime, stopdate, stoptime, workunitcode, 
                geoloccode, transactionordinaldate, hostunitdateandtime 
               ) 
        VALUES (tmpvar, p_homeelc, 
                p_currentelc, p_unitid, p_equipmentid, 
                p_maintenancestatuscode, p_conditionstatuscode, p_startdate, 
                p_starttime, p_stopdate, p_stoptime, p_workunitcode, 
                p_geoloccode, p_transactionordinaldate, p_hostunitdateandtime 
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
         INSERT INTO aircraftstatusupdate 
                     (statusupdateid, unitid, equipmentid, 
                      maintenancestatuscode, conditionstatuscode, 
                      statusstartdate, statusstarttime, workunitcode, 
                      aircraftid, geoloccode 
                     ) 
              VALUES (seq_statusupdate.NEXTVAL, p_unitid, p_equipmentid, 
                      p_maintenancestatuscode, p_conditionstatuscode, 
                      p_startdate, p_starttime, p_workunitcode, 
                      acidvar, p_geoloccode 
                     ); 
 
         COMMIT; 
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
END insertstatuscorrectiontrx;
 
 
 
 
 
 
 
 
@
