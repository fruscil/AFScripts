--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_CONDITIONSTATUS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT conditionstatus, conditionlevel, flyable, colorid
        FROM conditionstatus
       WHERE mocid = 0;

   myrec          mycur%ROWTYPE;
   v_colorname    VARCHAR2(50);
   v_colorvalue   VARCHAR2(7);
   v_colorid      NUMBER(10);
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      SELECT colorname, colorvalue
        INTO v_colorname, v_colorvalue
        FROM colors
       WHERE colorid = myrec.colorid;

      SELECT colorid
        INTO v_colorid
        FROM colors
       WHERE colorname = v_colorname
         AND colorvalue = v_colorvalue
         AND mocid = mocidin;

      INSERT INTO conditionstatus
                  (condstatid, conditionstatus,
                   conditionlevel, flyable, colorid, mocid
                  )
           VALUES (seq_conditionstatus.NEXTVAL, myrec.conditionstatus,
                   myrec.conditionlevel, myrec.flyable, v_colorid, mocidin
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
END copy_conditionstatus;



 
 
 
 
 
 
 
 
@
