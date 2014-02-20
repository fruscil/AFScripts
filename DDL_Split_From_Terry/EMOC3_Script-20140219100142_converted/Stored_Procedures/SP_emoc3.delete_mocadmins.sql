--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOCADMINS" (
   mocidin    moc.mocid%TYPE
)
AS
BEGIN
   DELETE      mocadmins
         WHERE mocid = mocidin;

   COMMIT;
END delete_mocadmins;

 
 
 
 
 
 
 
 
@
