--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_SECURITYMESSAGE" (
   messageout   OUT   messages.MESSAGE%TYPE,
   mocidin            NUMBER
)
AS
BEGIN
   SELECT TRIM (MESSAGE)
     INTO messageout
     FROM messages
    WHERE messages.messagetype = 'SEC' AND mocid = mocidin;
END get_moc_securitymessage;

 
 
 
 
 
 
 
 
@
