--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOCUSERS" (
   mocidin    moc.mocid%TYPE
)
AS
BEGIN
   DELETE      mocusers
         WHERE mocid = mocidin;

   COMMIT;
END delete_mocusers;

 
 
 
 
 
 
 
 
@
