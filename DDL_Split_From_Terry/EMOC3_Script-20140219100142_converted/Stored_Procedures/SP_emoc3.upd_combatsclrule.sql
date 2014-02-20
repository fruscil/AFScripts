--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_COMBATSCLRULE" (
   sclrulesidin      combatsclrules.sclrulesid%TYPE,
   combatsclidin     combatsclrules.combatsclid%TYPE,
   aircraftmdsidin   combatsclrules.aircraftmdsid%TYPE
)
AS
BEGIN
   UPDATE combatsclrules
      SET combatsclid = combatsclidin,
          aircraftmdsid = aircraftmdsidin
    WHERE sclrulesid = sclrulesidin;
END upd_combatsclrule;

 
 
 
 
 
 
 
 
@
