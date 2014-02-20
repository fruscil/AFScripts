--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_SQUADRON_PILOTS" (
   squadronidin   pilot.squadronid%TYPE
)
AS
   CURSOR mycur
   IS
      SELECT pilotid
        FROM pilot
       WHERE squadronid = squadronidin;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      UPDATE schedule
         SET pilotid = NULL
       WHERE pilotid = myrec.pilotid;

      COMMIT;

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   DELETE FROM pilot
         WHERE squadronid = squadronidin;

   COMMIT;
END remove_squadron_pilots;

 
 
 
 
 
 
 
 
@
