--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_RANGES" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   rangeid, RANGE, rangedescription
          FROM ranges
      ORDER BY RANGE;
END get_ranges;

 
 
 
 
 
 
 
 
@
