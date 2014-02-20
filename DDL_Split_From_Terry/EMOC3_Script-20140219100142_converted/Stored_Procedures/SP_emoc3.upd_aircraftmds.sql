--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_AIRCRAFTMDS" (
   aircraftmdsidin      IN   aircraftmds.aircraftmdsid%TYPE,
   aircraftmdsin             aircraftmds.aircraftmds%TYPE,
   numberofstationsin        aircraftmds.numberofstations%TYPE,
   numberofenginesin         aircraftmds.numberofengines%TYPE,
   timebetweenphasein        aircraftmds.timebetweenphase%TYPE,
   blocknumberin             aircraftmds.blocknumber%TYPE,
   phaseunitin               aircraftmds.phaseunit%TYPE,
   defaultmdsin              aircraftmds.defaultaircrafttype%TYPE,
   acftmdstypecdin           aircraftmds.acftmdstypecd%TYPE
)
AS
   CURSOR aircraftcur
   IS
      SELECT aircraftid
        FROM aircraft
       WHERE aircraftmdsid = aircraftmdsidin;

   aircraftrec        aircraftcur%ROWTYPE;
   counter1           INTEGER               := 0;
   defaultval         INTEGER               := 0;
   cnumberofengines   INTEGER               := 0;
BEGIN
   SELECT numberofengines
     INTO cnumberofengines
     FROM aircraftmds
    WHERE aircraftmdsid = aircraftmdsidin;

   BEGIN
      OPEN aircraftcur;

      FETCH aircraftcur
       INTO aircraftrec;

      WHILE aircraftcur%FOUND
      LOOP
         changenumberofengines (aircraftrec.aircraftid,
                                cnumberofengines,
                                numberofenginesin
                               );

         FETCH aircraftcur
          INTO aircraftrec;
      END LOOP;

      CLOSE aircraftcur;
   END;

   defaultval := defaultmdsin;

   IF defaultval = 0
   THEN
      SELECT COUNT (*)
        INTO counter1
        FROM aircraftmds
       WHERE defaultaircrafttype = 1 AND aircraftmdsid != aircraftmdsidin;

      IF counter1 = 0
      THEN
         defaultval := 1;
      END IF;
   END IF;

   UPDATE aircraftmds
      SET aircraftmds = aircraftmdsin,
          numberofstations = numberofstationsin,
          numberofengines = numberofenginesin,
          timebetweenphase = timebetweenphasein,
          blocknumber = blocknumberin,
          phaseunit = phaseunitin,
          defaultaircrafttype = defaultval,
          acftmdstypecd = acftmdstypecdin
    WHERE aircraftmds.aircraftmdsid = aircraftmdsidin;
END upd_aircraftmds;
 
 
 
 
 
 
 
 
@
