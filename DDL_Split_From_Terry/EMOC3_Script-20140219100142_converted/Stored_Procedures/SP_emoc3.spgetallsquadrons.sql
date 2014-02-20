--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLSQUADRONS" (
P_CURSOR OUT Emoc_Types.EMOC_CURSOR)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT squ.squadronid, squ.squadronname, squ.shortname, squ.colorid, c.colorvalue, c.fontcolor, w.elc, w.unitid,
(Select sum(micapcount) from squadronmicapcount where squadronid=squ.squadronid) as squadronmicapcount
FROM SQUADRONS squ, COLORS c, wings w
WHERE (c.colorid(+) = squ.colorid
   and squ.wingid = w.wingid) ;
END Spgetallsquadrons;
 
 
 
 
 
 
 
 
@
