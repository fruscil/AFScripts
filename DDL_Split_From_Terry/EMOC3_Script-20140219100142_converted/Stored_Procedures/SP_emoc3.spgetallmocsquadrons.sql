--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLMOCSQUADRONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT squ.squadronid, squ.squadronname, squ.shortname, squ.colorid,
             c.colorvalue, c.fontcolor, squ.mocid,
    w.elc, w.unitid, w.wingid,
    (Select sum(micapcount) from squadronmicapcount where squadronid=squ.squadronid) as squadronmicapcount
 FROM SQUADRONS squ, COLORS c, wings w
 WHERE c.colorid(+) = squ.colorid
      and squ.wingid = w.wingid 
         and squ.mocid = mocidin;
END spgetallmocsquadrons;
 
 
 
 
 
 
 
 
@
