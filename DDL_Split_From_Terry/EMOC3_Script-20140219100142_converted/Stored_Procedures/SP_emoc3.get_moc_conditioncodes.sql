--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CONDITIONCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   conditioncodes.condcodeid, conditioncodes.conditioncode,
               conditioncodes.conditiondescription,
               NVL(conditioncodes.defaultconditioncode,0) AS defaultconditioncode,
               conditioncodes.condstatid, conditionstatus.conditionstatus,
               conditioncodes.mocid
          FROM conditioncodes, conditionstatus
         WHERE conditioncodes.condstatid = conditionstatus.condstatid
           AND conditioncodes.mocid = mocidin
      ORDER BY conditioncodes.conditioncode ASC;
END get_moc_conditioncodes;
 
 
 
 
 
 
 
 
@
