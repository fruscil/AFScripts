--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACECONTROL_STATUS" (
   interfaceenabledout   OUT   NUMBER,
   interfacenamein             interfacecontrol.interfacename%TYPE
)
AS
   enabled   NUMBER(1);
BEGIN
   SELECT interfaceenabled
     INTO enabled
     FROM interfacecontrol
    WHERE interfacename = interfacenamein;

   interfaceenabledout := enabled;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_interfacecontrol_status;

 
 
 
 
 
 
 
 
@
