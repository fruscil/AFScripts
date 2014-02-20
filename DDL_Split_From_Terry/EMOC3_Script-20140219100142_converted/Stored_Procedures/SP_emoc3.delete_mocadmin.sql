--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOCADMIN" (
   useridin   users.userid%TYPE,
   mocidin    moc.mocid%TYPE
)
AS
BEGIN
   DELETE      mocadmins
         WHERE mocid = mocidin AND userid = useridin;

   COMMIT;
END delete_mocadmin;

 
 
 
 
 
 
 
 
@
