--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CAMS_VALIDATION_TIMEOUT" (
TBMCSTIMER OUT EMOCCONFIG.TBMCSTIMER%TYPE
)
AS
MINUTES NUMBER(3);
BEGIN

   SELECT
   TBMCSTIMER
   INTO MINUTES
   FROM EMOCCONFIG;

   TBMCSTIMER := MINUTES;

END GET_CAMS_VALIDATION_TIMEOUT;

 
 
 
 
 
 
 
 
@
