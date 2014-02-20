--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_STATUSRULE" (
   statuscodeidin          statustransitionrule.statuscodeid%TYPE,
   transition2idin         statustransitionrule.transition2id%TYPE,
   mocidin                 statustransitionrule.mocid%TYPE,
   statruleid        OUT   statustransitionrule.statruleid%TYPE
)
AS
BEGIN
   SELECT seq_statusrule.NEXTVAL
     INTO statruleid
     FROM DUAL;

   INSERT INTO statustransitionrule
               (statruleid, statuscodeid, transition2id, mocid
               )
        VALUES (statruleid, statuscodeidin, transition2idin, mocidin
               );
END add_moc_statusrule;

 
 
 
 
 
 
 
 
@
