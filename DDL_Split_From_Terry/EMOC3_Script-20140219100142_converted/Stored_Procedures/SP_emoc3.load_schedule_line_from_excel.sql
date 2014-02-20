--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."LOAD_SCHEDULE_LINE_FROM_EXCEL" (
   go                 schedule.go%TYPE,
   sortienum          schedule.sortienum%TYPE,
   aircraftid         schedule.aircraftid%TYPE,
   callsign           schedule.callsign%TYPE,
   pilotid            schedule.pilotid%TYPE,
   scheduledtakeoff   schedule.scheduledtakeoff%TYPE,
   scheduledlanding   schedule.scheduledlanding%TYPE,
   spare              schedule.spare%TYPE,
   areaid             schedule.areaid%TYPE,
   areaarrivetime     schedule.areaarrivetime%TYPE,
   arealeavetime      schedule.arealeavetime%TYPE,
   rangeid            schedule.rangeid%TYPE,
   deviationcodeid    schedule.deviationcodeid%TYPE,
   causecodeid        schedule.causecodeid%TYPE,
   schedday           schedule.schedday%TYPE,
   config             schedule.configcode%TYPE,
   DURATION           schedule.durationscheduled%TYPE,
   sortiedate         schedule.sortiedate%TYPE,
   squadronid         schedule.squadronid%TYPE,
   missionid          schedule.missionid%TYPE,
   remarks            remarks.remarks%TYPE
)
/******************************************************************************
   NAME:       LOAD_FLYING_SCHEDULE_LINE_FROM_EXCEL
   PURPOSE:    Inserts a schedule line.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/12/03      A.Mitchell       1. Created this procedure.
   1.1        6/16/03      A.Mitchell       2. Added proecssing for Deviations

   PARAMETERS:
   INPUT:
   *SCHEDULEID,
   *GO,
   *CALLSIGN,
   *SCHEDULEDTAKEOFF,
   *SCHEDULEDLANDING,
   *SPARE,
   *AREAARRIVETIME,
   *AREALEAVETIME,
   *RANGEID,
   *AREAID,
   *AIRCRAFTID,
   *PILOTID,
   *SORTIENUM,
   *DEVIATIONCODEID,
   *CAUSECODEID,
   *SCHEDDAY
   *CONFIG
   *DURATION
   *SORTIEDATE
   *SQUADRONID
   OUTPUT:

   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
   newscheduleid         NUMBER;
   scheduledeviationid   NUMBER;
   statuscodeid          NUMBER;
   remarksid             NUMBER;
BEGIN
   --INCREMENT
   SELECT seq_schedule.NEXTVAL
     INTO newscheduleid
     FROM DUAL;

   INSERT INTO schedule
               (scheduleid, go, callsign, scheduledtakeoff,
                scheduledlanding, spare, areaarrivetime, arealeavetime,
                rangeid, areaid, aircraftid, pilotid, sortienum,
                deviationcodeid, causecodeid, schedday, configcode,
                durationscheduled, sortiedate, squadronid, schedulesource,
                missionid
               )
        VALUES (newscheduleid, go, callsign, scheduledtakeoff,
                scheduledlanding, spare, areaarrivetime, arealeavetime,
                rangeid, areaid, aircraftid, pilotid, sortienum,
                deviationcodeid, causecodeid, schedday, config,
                DURATION, sortiedate, squadronid, 'XLS',
                missionid
               );

   --INCREMENT
   IF LENGTH (remarks) > 0
   THEN
      BEGIN
         SELECT seq_remarks.NEXTVAL
           INTO remarksid
           FROM DUAL;

         add_remarks (remarksid, remarks);

         UPDATE schedule
            SET scheduleremarks = remarksid
          WHERE scheduleid = newscheduleid;
      END;
   END IF;
END load_schedule_line_from_excel;

 
 
 
 
 
 
 
 
@
