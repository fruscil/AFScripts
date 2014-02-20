--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_LANDINGCODES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT landingcode, landingcodedescription, writeupneeded
        FROM landingcodes
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO landingcodes
                  (landingcodeid, landingcode,
                   landingcodedescription, writeupneeded, mocid
                  )
           VALUES (seq_landingcodes.NEXTVAL, myrec.landingcode,
                   myrec.landingcodedescription, myrec.writeupneeded, mocidin
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
END copy_landingcodes;

 
 
 
 
 
 
 
 
@
