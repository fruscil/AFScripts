--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WING_ICONTROL_STATUS" (
   interfaceenabledout   OUT   NUMBER,
   wingidin                     wings.wingid%TYPE
)
AS
   enabled   NUMBER(1);
BEGIN
   SELECT imdsinterfaceon
     INTO enabled
     FROM wings
    WHERE wingid = wingidin;

   interfaceenabledout := enabled;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_wing_icontrol_status;
 
 
 
 
 
 
 
 
@
