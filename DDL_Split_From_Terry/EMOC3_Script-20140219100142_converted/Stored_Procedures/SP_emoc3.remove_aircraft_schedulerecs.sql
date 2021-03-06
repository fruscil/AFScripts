--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_SCHEDULERECS" (
   aircraftidin   aircraftenginedata.aircraftid%TYPE
)
AS
   CURSOR schedcur
   IS
      SELECT scheduleid, scheduleremarks, maintremarks
        FROM schedule
       WHERE aircraftid = aircraftidin;

   schedrec   schedcur%ROWTYPE;
BEGIN
   OPEN schedcur;

   FETCH schedcur
    INTO schedrec;

   WHILE schedcur%FOUND
   LOOP
      DELETE FROM semedxdata
            WHERE scheduleid = schedrec.scheduleid;

      COMMIT;

      DELETE FROM joapdata
            WHERE scheduleid = schedrec.scheduleid;

      COMMIT;

      DELETE FROM schedulestatus
            WHERE scheduleid = schedrec.scheduleid;

      COMMIT;
      remove_deviation_remarks (schedrec.scheduleid);

      DELETE FROM scheduledeviations
            WHERE scheduleid = schedrec.scheduleid;

      COMMIT;

      UPDATE schedule
         SET scheduleremarks = NULL,
             maintremarks = NULL
       WHERE scheduleid = schedrec.scheduleid;

      COMMIT;

      DELETE FROM remarks
            WHERE remarksid = schedrec.scheduleremarks;

      COMMIT;

      DELETE FROM remarks
            WHERE remarksid = schedrec.maintremarks;

      COMMIT;

      DELETE FROM schedule
            WHERE scheduleid = schedrec.scheduleid;

      COMMIT;

      FETCH schedcur
       INTO schedrec;
   END LOOP;

   CLOSE schedcur;
END remove_aircraft_schedulerecs;

 
 
 
 
 
 
 
 
@
