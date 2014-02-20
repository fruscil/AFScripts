--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MESSAGEOFTHEDAY" (
   messagein   messages.MESSAGE%TYPE,
   useridin    messages.lastupdateby%TYPE
)
AS
BEGIN
   UPDATE messages
      SET MESSAGE = messagein,
          lastupdate = SYSDATE,
          lastupdateby = useridin
    WHERE messages.messagetype = 'MOD';
END upd_messageoftheday;

 
 
 
 
 
 
 
 
@
