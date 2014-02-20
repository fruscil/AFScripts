--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_POSSESSIONCODES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT *
        FROM possessions
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO possessions
                  (possessionid, possessioncode,
                   possessiondescription, defaultpossession,
                   mocid
                  )
           VALUES (seq_possessions.NEXTVAL, myrec.possessioncode,
                   myrec.possessiondescription, myrec.defaultpossession,
                   mocidin
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
END copy_possessioncodes;
 
 
 
 
 
 
 
 
@
