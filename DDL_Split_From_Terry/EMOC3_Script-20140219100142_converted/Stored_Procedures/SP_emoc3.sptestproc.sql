--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPTESTPROC" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT * FROM AIRCRAFT;
END SPTESTPROC;

 
 
 
 
 
 
 
 
@
