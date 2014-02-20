--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_FIRESYMBOLS" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT FIRESYMBOLID,
 FIRESYMBOL,
 DESCRIPTION,
 NVL(DEFAULTVAL,0) as DEFAULTVAL,
 RANKING
FROM FIRESYMBOLS
ORDER BY FIRESYMBOL;

END GET_FIRESYMBOLS;

 
 
 
 
 
 
 
 
@