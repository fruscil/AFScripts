--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_HELP_BY_PARENTID" (
   p_cursor     OUT   emoc_types.emoc_cursor,
   parentidin         INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   emochelp.helpid, emochelp.parentid, emochelp.topic,
               emochelp.helphtml, emochelp.node
          FROM emochelp
         WHERE parentid = parentidin
      ORDER BY node, topic ASC;
END get_help_by_parentid;

 
 
 
 
 
 
 
 
@
