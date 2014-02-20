--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOCUSER" (
   useridin   users.userid%TYPE,
   mocidin    moc.mocid%TYPE
)
AS
BEGIN
   DELETE      mocusers
         WHERE mocid = mocidin AND userid = useridin;

   COMMIT;
END delete_mocuser;

 
 
 
 
 
 
 
 
@
