--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_AIRCRAFTMDS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT aircraftmds, numberofstations, numberofengines,
             timebetweenphase, defaultaircrafttype, blocknumber, phaseunit,
             camsinit, acftmdstypecd
        FROM aircraftmds
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO aircraftmds
                  (aircraftmdsid, aircraftmds,
                   blocknumber, numberofengines,
                   numberofstations, timebetweenphase,
                   defaultaircrafttype, phaseunit,
                   camsinit, acftmdstypecd, mocid
                  )
           VALUES (seq_aircraftmds.NEXTVAL, myrec.aircraftmds,
                   myrec.blocknumber, myrec.numberofengines,
                   myrec.numberofstations, myrec.timebetweenphase,
                   myrec.defaultaircrafttype, myrec.phaseunit,
                   myrec.camsinit, myrec.acftmdstypecd, mocidin
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
END copy_aircraftmds;

 
 
 
 
 
 
 
 
@
