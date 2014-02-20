--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEMICAP" (
   micapidin          micap.micapid%TYPE,
   documentnumberin   micap.DOCUMENTNUMBER%TYPE,
   partin             micap.nomenclature%TYPE,
   erdin              micap.estimateddeliverydate%TYPE
)
AS
BEGIN
   UPDATE micap
      SET micap.nomenclature = partin,
          micap.estimateddeliverydate = erdin,
          micap.documentnumber = documentnumberin
    WHERE (micapid = micapidin);
END spupdatemicap;
 
 
 
 
 
 
 
 
@
