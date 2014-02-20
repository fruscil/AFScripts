--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETSYMBOLSCONDITIONS" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR

SELECT SYMBOLID, SYMBOLS.CONDCODEID, CONDITIONCODE, SYMBOL
FROM SYMBOLS, CONDITIONCODES
WHERE SYMBOLS.CONDCODEID = CONDITIONCODES.CONDCODEID
ORDER BY SYMBOLS.CONDCODEID, SYMBOLID;

END SPGETSYMBOLSCONDITIONS;

 
 
 
 
 
 
 
 
@