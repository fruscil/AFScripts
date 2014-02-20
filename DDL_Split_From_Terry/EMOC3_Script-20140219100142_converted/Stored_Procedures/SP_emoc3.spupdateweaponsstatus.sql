--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEWEAPONSSTATUS" (
   aircraftidin                 aircraft.aircraftid%TYPE,
   combatsclidin                aircraft.combatsclid%TYPE,
   chaffin                      aircraft.chaff%TYPE,
   flarein                      aircraft.flare%TYPE,
   hotgunsin                    aircraft.hotguns%TYPE,
   armedin                      aircraft.arm_dearm%TYPE,
   weaponsstatuslastupdatedin   VARCHAR
)
AS
BEGIN
   UPDATE aircraft
      SET aircraft.combatsclid = combatsclidin,
          aircraft.chaff = chaffin,
          aircraft.flare = flarein,
          aircraft.hotguns = hotgunsin,
          aircraft.arm_dearm = armedin,
          aircraft.weaponsstatuslastupdated =
                 TO_DATE (weaponsstatuslastupdatedin, 'MM/DD/YYYY HH24:MI:SS')
    WHERE aircraftid = aircraftidin;
END spupdateweaponsstatus;

 
 
 
 
 
 
 
 
@
