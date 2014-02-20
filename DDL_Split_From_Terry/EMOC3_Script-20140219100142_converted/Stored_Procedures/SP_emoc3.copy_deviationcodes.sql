--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_DEVIATIONCODES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT deviationcode, deviationdescription, defaultdeviationcode,
             colorid
        FROM deviationcodes
       WHERE mocid = 0
    AND   deviationcode IN ('TS','SP','NONE');

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO deviationcodes
                  (deviationcodeid, deviationcode, deviationdescription,
                   defaultdeviationcode, colorid, camsinit, mocid
                  )
           VALUES (seq_deviationcodes.NEXTVAL, myrec.deviationcode, myrec.deviationdescription,
                   myrec.defaultdeviationcode, myrec.colorid, NULL, mocidin
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
END copy_deviationcodes;
 
 
 
 
 
 
 
 
@
