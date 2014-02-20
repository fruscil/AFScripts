--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETONESQUADRON" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   squadronidin         squadrons.squadronid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT squ.squadronid, squ.squadronname, squ.shortname, squ.colorid,
             c.colorvalue, c.fontcolor, squ.mocid, w.elc, w.unitid, w.wingid,
             (SELECT SUM (micapcount)
                FROM squadronmicapcount
               WHERE squadronid = squ.squadronid) AS squadronmicapcount
        FROM squadrons squ, colors c, wings w
       WHERE c.colorid(+) = squ.colorid
         AND squ.wingid = w.wingid
         AND squ.squadronid = squadronidin;
END spgetonesquadron;
 
 
 
 
 
 
 
 
@
