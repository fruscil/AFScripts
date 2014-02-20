--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_SEMEDX" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT semedx, semedxdescription, defaultval, colorrulesid
        FROM semedx
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO semedx
                  (semedxid, semedx,
                   semedxdescription, defaultval,
                   colorrulesid, mocid
                  )
           VALUES (seq_semedx.NEXTVAL, myrec.semedx,
                   myrec.semedxdescription, myrec.defaultval,
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
END copy_semedx;
 
 
 
 
 
 
 
 
@
