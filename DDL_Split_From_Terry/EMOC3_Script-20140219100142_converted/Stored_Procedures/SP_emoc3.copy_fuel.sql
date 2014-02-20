--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_FUEL" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT colorid, fuelstatus, fueldescription, landing, defaultfuel,
             allowsortieupdate, fuelstatuslabel
        FROM fuel
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO fuel
                  (fuelstatusid, colorid, fuelstatus,
                   fueldescription, landing, defaultfuel,
                   allowsortieupdate, fuelstatuslabel, mocid
                  )
           VALUES (seq_fuels.NEXTVAL, myrec.colorid, myrec.fuelstatus,
                   myrec.fueldescription, myrec.landing, myrec.defaultfuel,
                   myrec.allowsortieupdate, myrec.fuelstatuslabel, mocidin
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
END copy_fuel;
 
 
 
 
 
 
 
 
@
