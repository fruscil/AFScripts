--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC_SECURITYMESSAGE" (
   messagein   messages.MESSAGE%TYPE,
   useridin    messages.lastupdateby%TYPE,
   mocidin     messages.mocid%TYPE
)
AS
BEGIN
   UPDATE messages
      SET MESSAGE = messagein,
          lastupdate = SYSDATE,
          lastupdateby = useridin
    WHERE messages.messagetype = 'SEC' AND mocid = mocidin;
END upd_moc_securitymessage;

 
 
 
 
 
 
 
 
@
