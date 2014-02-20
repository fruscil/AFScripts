--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEMICAPCOMMENT" (
   micapidin          micap.micapid%TYPE,
   usercommentin      micap.usercomment%TYPE
)
AS
BEGIN
   UPDATE micap
      SET micap.usercomment = usercommentin,
          micap.lastupdated = SYSDATE
    WHERE (micapid = micapidin);
END spupdatemicapcomment;
 
 
 
 
 
 
 
 
@
