--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ASSIGNMENTS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   assignmentcodeid, assignmentcode, assignmentdescription,
               NVL (defaultassignment, 0) AS defaultassignment, mocid
          FROM assignmentcodes
         WHERE mocid = mocidin
      ORDER BY assignmentcode;
END get_moc_assignments;
 
 
 
 
 
 
 
 
@
