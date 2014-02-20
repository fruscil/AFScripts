--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_STATUSRULE" (
   statruleidin      statustransitionrule.statruleid%TYPE,
   statuscodeidin    statustransitionrule.statuscodeid%TYPE,
   transition2idin   statustransitionrule.transition2id%TYPE
)
AS
BEGIN
   UPDATE statustransitionrule
      SET statuscodeid = statuscodeidin,
          transition2id = transition2idin
    WHERE statruleid = statruleidin;
END upd_statusrule;

 
 
 
 
 
 
 
 
@
