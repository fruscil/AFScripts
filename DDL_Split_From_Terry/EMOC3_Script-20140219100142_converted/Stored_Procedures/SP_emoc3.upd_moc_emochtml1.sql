--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC_EMOCHTML1" (
   mocidin       emocconfig.mocid%TYPE,
   emochtml1in   CLOB
)
AS
BEGIN
   UPDATE emocconfig
      SET emochtml1 = emochtml1in
    WHERE mocid = mocidin;
END upd_moc_emochtml1;

 
 
 
 
 
 
 
 
@
