--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEVIEWABLESQUADS" (
USERIDIN USERS.USERID%TYPE,
VIEWABLESQUADSIN USERS.VIEWABLESQUADRONS%TYPE

)
AS
BEGIN

UPDATE USERS
SET VIEWABLESQUADRONS=VIEWABLESQUADSIN

WHERE
USERID=USERIDIN;

END SPUPDATEVIEWABLESQUADS;
 
 
 
 
 
 
 
 
@
