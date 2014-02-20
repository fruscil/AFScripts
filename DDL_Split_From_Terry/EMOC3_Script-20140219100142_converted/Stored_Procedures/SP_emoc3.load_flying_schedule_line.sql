--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOAD_FLYING_SCHEDULE_LINE" (
   GO                       schedule.GO%TYPE,
   sortienum                schedule.sortienum%TYPE,
   aircraftid               schedule.aircraftid%TYPE,
   callsign                 schedule.callsign%TYPE,
   pilotid                  schedule.pilotid%TYPE,
   scheduledtakeoff         schedule.scheduledtakeoff%TYPE,
   scheduledlanding         schedule.scheduledlanding%TYPE,
   spare                    schedule.spare%TYPE,
   areaid                   schedule.areaid%TYPE,
   areaarrivetime           schedule.areaarrivetime%TYPE,
   arealeavetime            schedule.arealeavetime%TYPE,
   deviationcodeid          schedule.deviationcodeid%TYPE,
   causecodeid              schedule.causecodeid%TYPE,
   missionid                schedule.missionid%TYPE,
   scheduleremarks          remarks.remarks%TYPE,
   schedday                 schedule.schedday%TYPE,
   squadronidin             schedule.squadronid%TYPE,
   sortiedatein             schedule.sortiedate%TYPE,
   CONFIGCODE               schedule.CONFIGCODE%TYPE,
   scheduleidout      OUT   schedule.scheduleid%TYPE
)
/******************************************************************************
   NAME:       LOAD_FLYING_SCHEDULE_LINE
   PURPOSE:    Inserts a schedule line.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/18/03      A.Mitchell       1. Created this procedure.
   1.1        2/27/04      A.Mitchell     2. Modified sequencing problem
   3.0        4/24/07      G.Regan        3. Add config code
   PARAMETERS:
   INPUT:
   *SCHEDULEID,
   *GO,
   *CALLSIGN,
   *SCHEDULEDTAKEOFF,
   *SCHEDULEDLANDING,
   *SPARE,
   *AREAID,
   *AIRCRAFTID,
   *PILOTID,
   *SORTIENUM,
   *DEVIATIONCODEID,
   *CAUSECODEID
   *MISSIONID
   *REMARKS
   *SCHEDDAY
   *SQUADRONID
   *SORTIEDATE
   * Config code
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
   remarksid             NUMBER;
   sortie                NUMBER;
BEGIN
   --2.1.1 Standardize addition of spare lines
   IF spare = 1
   THEN
      BEGIN
         SELECT MIN (NVL (sortienum, 0))
           INTO sortie
           FROM schedule
          WHERE schedule.sortiedate = sortiedatein
            AND schedule.squadronid = squadronidin;

         IF sortie < 0
         THEN
            BEGIN
               sortie := sortie - 1;
            END;
         ELSE
            BEGIN
               sortie := -1;
            END;
         END IF;
      END;
   ELSE
      BEGIN
         sortie := sortienum;
      END;
   END IF;

   --INCREMENT
   SELECT seq_schedule.NEXTVAL
     INTO newscheduleid
     FROM DUAL;

   INSERT INTO schedule
               (scheduleid, GO, callsign, scheduledtakeoff,
                scheduledlanding, spare, areaid, areaarrivetime,
                arealeavetime, aircraftid, pilotid, sortienum,
                deviationcodeid, causecodeid, missionid, schedday,
                squadronid, sortiedate, CONFIGCODE, schedulesource
               )
        VALUES (newscheduleid, GO, callsign, scheduledtakeoff,
                scheduledlanding, spare, areaid, areaarrivetime,
                arealeavetime, aircraftid, pilotid, sortie,             --NUM,
                deviationcodeid, causecodeid, missionid, schedday,
                squadronidin, sortiedatein, CONFIGCODE, 'EMC'
               );

   --INCREMENT
   IF LENGTH (scheduleremarks) > 0
   THEN
      BEGIN
         SELECT seq_remarks.NEXTVAL
           INTO remarksid
           FROM DUAL;

         add_remarks (remarksid, scheduleremarks);

         UPDATE schedule
            SET scheduleremarks = remarksid
          WHERE scheduleid = newscheduleid;
      END;
   END IF;

   scheduleidout := newscheduleid;
END load_flying_schedule_line;
 
 
 
 
 
 
 
 
@
