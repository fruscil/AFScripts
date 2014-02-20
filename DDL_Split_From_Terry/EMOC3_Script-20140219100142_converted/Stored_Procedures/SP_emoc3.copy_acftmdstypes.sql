--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_ACFTMDSTYPES" (
   newmocid       moc.mocid%TYPE,
   defaultmocid   moc.mocid%TYPE
)
AS
   CURSOR mycur
   IS
      SELECT acftmdstypecd, acftmdstypenm
        FROM acftmdstypes
       WHERE mocid = defaultmocid;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO acftmdstypes
                  (acftmdstypecd, acftmdstypenm, mocid
                  )
           VALUES (myrec.acftmdstypecd, myrec.acftmdstypenm, newmocid
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;
  /* Formatted on 2005/06/24 11:56 (Formatter Plus v4.8.5) */
COMMIT ;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END copy_acftmdstypes;

 
 
 
 
 
 
 
 
@
