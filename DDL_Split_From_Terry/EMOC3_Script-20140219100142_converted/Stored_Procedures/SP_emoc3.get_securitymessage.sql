--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SECURITYMESSAGE" (
   messageout   OUT   messages.MESSAGE%TYPE
)
AS
BEGIN
   SELECT TRIM (MESSAGE)
     INTO messageout
     FROM messages
    WHERE messages.messagetype = 'SEC';
END get_securitymessage;

 
 
 
 
 
 
 
 
@
