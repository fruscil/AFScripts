--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_COLORRULES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT colorid, colorrank, codetype
        FROM colorrules
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

      INSERT INTO colorrules
                  (colorrulesid, colorid, colorrank,
                   codetype, mocid
                  )
           VALUES (seq_colorrules.NEXTVAL, v_colorid, myrec.colorrank,
                   myrec.codetype, mocidin
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
END copy_colorrules;



 
 
 
 
 
 
 
 
@
