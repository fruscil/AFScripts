--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOAD_SPARE_LINE_FROM_EXCEL" (
   aircraftid        schedule.aircraftid%TYPE,
   deviationcodeid   schedule.deviationcodeid%TYPE,
   causecodeid       schedule.causecodeid%TYPE,
   schedday          schedule.schedday%TYPE,
   squadronid        schedule.squadronid%TYPE,
   sortiedate        schedule.sortiedate%TYPE,
   missionid         schedule.missionid%TYPE
)
/******************************************************************************
   NAME:       LOAD_FLYING_SCHEDULE_LINE_FROM_EXCEL
   PURPOSE:    Inserts a schedule line.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/2/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *AIRCRAFTID,
   *DEVIATIONCODEID,
   *CAUSECODEID,
   *SCHEDDAY
   *SQUADRONID,
   *SORTIEDATE
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
BEGIN
   --INCREMENT
   SELECT seq_schedule.NEXTVAL
     INTO newscheduleid
     FROM DUAL;

   INSERT INTO schedule
               (scheduleid, spare, aircraftid, sortienum, deviationcodeid,
                causecodeid, schedday, squadronid, sortiedate, missionid
               )
        VALUES (newscheduleid, 1, aircraftid, -1,           --BLANK SORTIENUM,
                                                 deviationcodeid,
                causecodeid, schedday, squadronid, sortiedate, missionid
               );
END load_spare_line_from_excel;

 
 
 
 
 
 
 
 
@
