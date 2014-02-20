--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_WEAPONTYPES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT weapontype
        FROM weapontypes
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO weapontypes
                  (weaponstypeid, weapontype, mocid
                  )
           VALUES (seq_weapontypes.NEXTVAL, myrec.weapontype, mocidin
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
END copy_weapontypes;

 
 
 
 
 
 
 
 
@
