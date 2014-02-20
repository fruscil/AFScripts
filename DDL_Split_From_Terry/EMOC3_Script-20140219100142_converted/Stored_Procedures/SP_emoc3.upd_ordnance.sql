--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_ORDNANCE" (
   ordnanceidin      ordnance.ordnanceid%TYPE,
   ordnancein        ordnance.ordnance%TYPE,
   configurationin   ordnance.configuration%TYPE,
   weaponstypeidin   ordnance.weaponstypeid%TYPE
)
AS
BEGIN
   UPDATE ordnance
      SET ordnance = ordnancein,
          configuration = configurationin,
          weaponstypeid = weaponstypeidin
    WHERE ordnanceid = ordnanceidin;
END upd_ordnance;

 
 
 
 
 
 
 
 
@
