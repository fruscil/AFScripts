--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_SYMBOLS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT condcodeid, symbol, symboldescription
        FROM symbols
       WHERE mocid = 0;

   myrec             mycur%ROWTYPE;
   v_conditioncode   VARCHAR2(5);
   v_condcodeid      NUMBER(10);
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      SELECT conditioncode
        INTO v_conditioncode
        FROM conditioncodes
       WHERE condcodeid = myrec.condcodeid;

      SELECT condcodeid
        INTO v_condcodeid
        FROM conditioncodes
       WHERE conditioncode = v_conditioncode AND mocid = mocidin;

      INSERT INTO symbols
                  (symbolid, symbol,
                   symboldescription, condcodeid, mocid
                  )
           VALUES (seq_symbols.NEXTVAL, myrec.symbol,
                   myrec.symboldescription, v_condcodeid, mocidin
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
END copy_symbols;



 
 
 
 
 
 
 
 
@
