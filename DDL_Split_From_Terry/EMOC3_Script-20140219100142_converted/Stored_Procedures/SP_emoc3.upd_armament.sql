--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_ARMAMENT" (
   armamentidin      armament.armamentid%TYPE,
   stationin         armament.station%TYPE,
   aircraftmdsidin   armament.aircraftmdsid%TYPE,
   ordnanceidin      armament.ordnanceid%TYPE
)
AS
BEGIN
   UPDATE armament
      SET station = stationin,
          aircraftmdsid = aircraftmdsidin,
          ordnanceid = ordnanceidin
    WHERE armament.armamentid = armamentidin;
END upd_armament;

 
 
 
 
 
 
 
 
@
