--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_STATUSRULE" (
   statuscodeidin          statustransitionrule.statuscodeid%TYPE,
   transition2idin         statustransitionrule.transition2id%TYPE,
   statruleid        OUT   statustransitionrule.statruleid%TYPE
)
AS
BEGIN
   SELECT seq_statusrule.NEXTVAL
     INTO statruleid
     FROM DUAL;

   INSERT INTO statustransitionrule
               (statruleid, statuscodeid, transition2id
               )
        VALUES (statruleid, statuscodeidin, transition2idin
               );
END add_statusrule;

 
 
 
 
 
 
 
 
@
