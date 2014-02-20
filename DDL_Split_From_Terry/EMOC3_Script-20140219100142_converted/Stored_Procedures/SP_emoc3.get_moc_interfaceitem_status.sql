--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_INTERFACEITEM_STATUS" (
   itemstatus   OUT   interfaceitems.itemenabled%TYPE,
   tricin             interfaceitems.tric%TYPE,
   mocidin            INTEGER
)
AS
   status   NUMBER;
BEGIN
   SELECT itemenabled
     INTO status
     FROM interfaceitems
    WHERE tric = tricin AND mocid = mocidin;

   itemstatus := status;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_moc_interfaceitem_status;

 
 
 
 
 
 
 
 
@
