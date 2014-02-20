--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_COLORRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colorrulesid, colorrules.colorrank, colorrules.codetype,
               colorrules.colorid,
               (SELECT colors.colorname
                  FROM colors
                 WHERE colorid = colorrules.colorid) AS colorname,
               (SELECT colors.colorvalue
                  FROM colors
                 WHERE colorid = colorrules.colorid) AS colorvalue
          FROM colorrules
         WHERE mocid = mocidin
      ORDER BY codetype, colorrank;
END get_moc_colorrules;

 
 
 
 
 
 
 
 
@
