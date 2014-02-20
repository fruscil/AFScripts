--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_COLORS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT colorname, colorvalue, fontcolor
        FROM colors
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO colors
                  (colorid, colorname, colorvalue,
                   fontcolor, mocid
                  )
           VALUES (seq_colors.NEXTVAL, myrec.colorname, myrec.colorvalue,
                   myrec.fontcolor, mocidin
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
END copy_colors;

 
 
 
 
 
 
 
 
@
