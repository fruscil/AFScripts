--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_HQCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   hqcodeid, hqcode, hqdescription, hqlevel, NVL(hqdefault, 0) AS hqdefault, mocid
          FROM hanger_queen_code
         WHERE mocid = mocidin
      ORDER BY hqcode;
END get_moc_hqcodes;
 
 
 
 
 
 
 
 
@
