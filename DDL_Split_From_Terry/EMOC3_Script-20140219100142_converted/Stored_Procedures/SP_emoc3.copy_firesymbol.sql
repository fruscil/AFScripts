--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_FIRESYMBOL" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT firesymbol, ranking, defaultval, description
        FROM firesymbols
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO firesymbols
                  (firesymbolid, firesymbol, ranking,
                   defaultval, description, mocid
                  )
           VALUES (seq_firesymbols.NEXTVAL, myrec.firesymbol, myrec.ranking,
                   myrec.defaultval, myrec.description, mocidin
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
END copy_firesymbol;

 
 
 
 
 
 
 
 
@
