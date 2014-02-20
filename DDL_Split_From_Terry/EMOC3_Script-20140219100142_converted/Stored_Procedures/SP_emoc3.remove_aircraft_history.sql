--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_HISTORY" (
   aircraftidin   history.aircraftid%TYPE
)
AS
   CURSOR history_cur
   IS
      SELECT historyid, eventdate, elementvalue, userid, aircraftid, ELEMENT,
             transactionid
        FROM history
       WHERE aircraftid = aircraftidin;

   history_rec   history_cur%ROWTYPE;
BEGIN
   OPEN history_cur;

   FETCH history_cur
    INTO history_rec;

   WHILE history_cur%FOUND
   LOOP
      INSERT INTO emocaux.history
                  (historyid, eventdate,
                   elementvalue, userid,
                   aircraftid, ELEMENT,
                   transactionid
                  )
           VALUES (history_rec.historyid, history_rec.eventdate,
                   history_rec.elementvalue, history_rec.userid,
                   history_rec.aircraftid, history_rec.ELEMENT,
                   history_rec.transactionid
                  );

      FETCH history_cur
       INTO history_rec;
   END LOOP;

   CLOSE history_cur;

   DELETE FROM history
         WHERE aircraftid = aircraftidin;
END remove_aircraft_history;

 
 
 
 
 
 
 
 
@
