--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_WEAPONSCLASS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT weaponsclass, defaultval
        FROM weaponsclass
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO weaponsclass
                  (weaponsclassid, weaponsclass,
                   defaultval, mocid
                  )
           VALUES (seq_weaponsclass.NEXTVAL, myrec.weaponsclass,
                   myrec.defaultval, mocidin
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
END copy_weaponsclass;

 
 
 
 
 
 
 
 
@
