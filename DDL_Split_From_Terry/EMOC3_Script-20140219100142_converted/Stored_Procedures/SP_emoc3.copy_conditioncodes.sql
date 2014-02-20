--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_CONDITIONCODES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT conditioncode, conditiondescription, defaultconditioncode,
             condstatid
        FROM conditioncodes
       WHERE mocid = 0;

   myrec               mycur%ROWTYPE;
   v_conditionstatus   VARCHAR2(50);
   v_condstatid        NUMBER(10);
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      SELECT conditionstatus
        INTO v_conditionstatus
        FROM conditionstatus
       WHERE condstatid = myrec.condstatid;

      SELECT condstatid
        INTO v_condstatid
        FROM conditionstatus
       WHERE conditionstatus = v_conditionstatus AND mocid = mocidin;

      INSERT INTO conditioncodes
                  (condcodeid, conditioncode,
                   conditiondescription, defaultconditioncode,
                   condstatid, mocid
                  )
           VALUES (seq_conditioncodes.NEXTVAL, myrec.conditioncode,
                   myrec.conditiondescription, myrec.defaultconditioncode,
                   v_condstatid, mocidin
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
END copy_conditioncodes;
 
 
 
 
 
 
 
 
@
