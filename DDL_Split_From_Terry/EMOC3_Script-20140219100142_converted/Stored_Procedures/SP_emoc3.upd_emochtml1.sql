--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_EMOCHTML1" (
   emocconfigidin   emocconfig.emocconfigid%TYPE,
   emochtml1in      CLOB
)
AS
BEGIN
   UPDATE emocconfig
      SET emochtml1 = emochtml1in
    WHERE emocconfigid = emocconfigidin;
END upd_emochtml1;

 
 
 
 
 
 
 
 
@
