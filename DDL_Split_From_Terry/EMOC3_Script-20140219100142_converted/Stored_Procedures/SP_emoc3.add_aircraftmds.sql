--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_AIRCRAFTMDS" (
   aircraftmds              aircraftmds.aircraftmds%TYPE,
   numberofstations         aircraftmds.numberofstations%TYPE,
   numberofengines          aircraftmds.numberofengines%TYPE,
   timebetweenphase         aircraftmds.timebetweenphase%TYPE,
   defaultmds               aircraftmds.defaultaircrafttype%TYPE,
   phaseunit                aircraftmds.phaseunit%TYPE,
   blocknumber              aircraftmds.blocknumber%TYPE,
   acftmdstypecdin          aircraftmds.acftmdstypecd%TYPE,
   aircraftmdsid      OUT   aircraftmds.aircraftmdsid%TYPE
)
AS
BEGIN
   SELECT seq_aircraftmds.NEXTVAL
     INTO aircraftmdsid
     FROM DUAL;

   INSERT INTO aircraftmds
               (aircraftmdsid, aircraftmds, numberofstations,
                numberofengines, timebetweenphase, defaultaircrafttype,
                blocknumber, phaseunit, acftmdstypecd
               )
        VALUES (aircraftmdsid, aircraftmds, numberofstations,
                numberofengines, timebetweenphase, defaultmds,
                blocknumber, phaseunit, acftmdstypecdin
               );
END add_aircraftmds;

 
 
 
 
 
 
 
 
@
