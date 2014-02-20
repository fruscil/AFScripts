--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_RANGES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   rangeid, RANGE, rangedescription, mocid
          FROM ranges
         WHERE mocid = mocidin
      ORDER BY RANGE;
END get_moc_ranges;

 
 
 
 
 
 
 
 
@
