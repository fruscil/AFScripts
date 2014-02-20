--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ICONTROL_STATUS" (
   interfaceenabledout   OUT   NUMBER,
   interfacenamein             interfacecontrol.interfacename%TYPE,
   mocidin                     interfacecontrol.mocid%TYPE
)
AS
   enabled   NUMBER(1);
BEGIN
   SELECT interfaceenabled
     INTO enabled
     FROM interfacecontrol
    WHERE interfacename = interfacenamein AND mocid = mocidin;

   interfaceenabledout := enabled;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_moc_icontrol_status;

 
 
 
 
 
 
 
 
@
