--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPDELETESHOPDISPATCH" (

SHOPDISPATCHIDIN SHOPDISPATCH.SHOPDISPATCHID%TYPE

)
AS
BEGIN

DELETE FROM SHOPDISPATCH

WHERE SHOPDISPATCHID=SHOPDISPATCHIDIN;


END SPDELETESHOPDISPATCH;

 
 
 
 
 
 
 
 
@
