--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACEITEM_STATUS" (
   itemstatus   OUT   interfaceitems.itemenabled%TYPE,
   tricin             interfaceitems.tric%TYPE,
   mocin			  interfaceitems.mocid%TYPE
)
AS
   status   NUMBER;
BEGIN
   SELECT itemenabled
     INTO status
     FROM interfaceitems
    WHERE tric = tricin
	  AND mocid = mocin;

   itemstatus := status;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_interfaceitem_status;
 
 
 
 
 
 
 
 
@
