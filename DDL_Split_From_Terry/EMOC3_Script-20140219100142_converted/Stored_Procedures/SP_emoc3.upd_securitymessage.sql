--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_SECURITYMESSAGE" (
   messagein   messages.MESSAGE%TYPE,
   useridin    messages.lastupdateby%TYPE
)
AS
BEGIN
   UPDATE messages
      SET MESSAGE = messagein,
          lastupdate = SYSDATE,
          lastupdateby = useridin
    WHERE messages.messagetype = 'SEC';
END upd_securitymessage;

 
 
 
 
 
 
 
 
@
