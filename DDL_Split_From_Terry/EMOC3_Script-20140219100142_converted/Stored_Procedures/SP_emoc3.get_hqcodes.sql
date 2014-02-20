--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_HQCODES" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT HQCODEID, HQCODE, HQDESCRIPTION,HQLEVEL, NVL(HQDEFAULT,0) AS HQDEFAULT
FROM HANGER_QUEEN_CODE
ORDER BY HQCODE;

END GET_HQCODES;

 
 
 
 
 
 
 
 
@