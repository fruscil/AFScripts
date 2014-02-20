--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC_BROADCAST_MSG" (
   subjectin   messages.messagetitle%TYPE,
   messagein   messages.MESSAGE%TYPE,
   userin      messages.lastupdateby%TYPE,
   mocidin     messages.mocid%TYPE
)
AS
BEGIN
   UPDATE messages
      SET messagetitle = subjectin,
          MESSAGE = messagein,
          lastupdateby = userin,
          lastupdate = SYSDATE
    WHERE messagetype = 'EBM' AND mocid = mocidin;

   COMMIT;
END upd_moc_broadcast_msg;

 
 
 
 
 
 
 
 
@
