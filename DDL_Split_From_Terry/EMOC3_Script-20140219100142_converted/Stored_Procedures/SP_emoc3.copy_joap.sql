--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_JOAP" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT joapcode, joapdescription, landing, redcapstatus, defaultjoap,
             colorrulesid
        FROM joap
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO joap
                  (joapid, joapcode, joapdescription,
                   landing, redcapstatus, defaultjoap,
                   colorrulesid, mocid
                  )
           VALUES (seq_joaps.NEXTVAL, myrec.joapcode, myrec.joapdescription,
                   myrec.landing, myrec.redcapstatus, myrec.defaultjoap,
                   myrec.colorrulesid, mocidin
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END copy_joap;

 
 
 
 
 
 
 
 
@
