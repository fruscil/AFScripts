--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_ELC_ICONTROL_STATUS" (
   interfaceenabledout   OUT   NUMBER,
   mocidin                     wings.mocid%TYPE,
   elcin						wings.elc%TYPE
)
AS
   enabled   NUMBER(1);
BEGIN
   SELECT imdsinterfaceon
     INTO enabled
     FROM wings
    WHERE elc = elcin AND mocid = mocidin;

   interfaceenabledout := enabled;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_elc_icontrol_status;
 
 
 
 
 
 
 
 
@
