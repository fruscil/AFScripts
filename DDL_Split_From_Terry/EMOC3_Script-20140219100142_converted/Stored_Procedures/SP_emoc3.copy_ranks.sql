--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_RANKS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT rankcode, rankdescription, defaultrank, gradecode
        FROM ranks
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO ranks
                  (rankid, rankcode, rankdescription,
                   defaultrank, gradecode, mocid
                  )
           VALUES (seq_ranks.NEXTVAL, myrec.rankcode, myrec.rankdescription,
                   myrec.defaultrank, myrec.gradecode, mocidin
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
END copy_ranks;

 
 
 
 
 
 
 
 
@
