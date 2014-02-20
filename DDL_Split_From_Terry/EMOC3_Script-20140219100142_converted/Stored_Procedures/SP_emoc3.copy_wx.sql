--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_WX" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT weathercode, weatherdescription, defaultweathercode
        FROM wx
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO wx
                  (wxcodeid, weathercode,
                   weatherdescription, defaultweathercode,
                   mocid
                  )
           VALUES (seq_wx.NEXTVAL, myrec.weathercode,
                   myrec.weatherdescription, myrec.defaultweathercode,
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
END copy_wx;

 
 
 
 
 
 
 
 
@
