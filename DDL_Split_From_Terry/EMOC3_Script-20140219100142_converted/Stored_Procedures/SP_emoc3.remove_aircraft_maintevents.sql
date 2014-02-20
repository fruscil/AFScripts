--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_MAINTEVENTS" (aircraftidin INTEGER)
AS
BEGIN
   INSERT INTO emocaux.maintenanceevents
      SELECT maintenanceeventid, unit, eventid, pwc, equipid, cp, wuclcn, wd,
             priority, symbol, tssch, jobdur, discrepancy, wcenarrative,
             empid, entry781, defer, wcesymbol, jobfollow, partsrequired,
             aircraftid, entered, SYSDATE AS archivedate
        FROM maintenanceevents
       WHERE aircraftid = aircraftidin;

   --Then delete
   DELETE      maintenanceevents
         WHERE aircraftid = aircraftidin;

   --Commit only if both successful
   COMMIT;
END remove_aircraft_maintevents;

 
 
 
 
 
 
 
 
@
