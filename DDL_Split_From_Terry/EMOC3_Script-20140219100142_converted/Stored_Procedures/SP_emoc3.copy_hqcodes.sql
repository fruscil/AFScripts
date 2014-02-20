--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_HQCODES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT hqcode, hqdescription, hqlevel, hqdefault
        FROM hanger_queen_code
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO hanger_queen_code
                  (hqcodeid, hqcode,
                   hqdescription, hqlevel, hqdefault,
                   mocid
                  )
           VALUES (seq_hangarqueen.NEXTVAL, myrec.hqcode,
                   myrec.hqdescription, myrec.hqlevel, myrec.hqdefault,
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
END copy_hqcodes;

 
 
 
 
 
 
 
 
@
