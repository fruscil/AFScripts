--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_STATUSIMAGE" (mocidin moc.mocid%TYPE)
AS
BEGIN
   DELETE FROM mocstatusicons
            WHERE mocid = mocidin;

   COMMIT;
END delete_moc_STATUSIMAGE;
 
 
 
 
 
 
 
 
@
