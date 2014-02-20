--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_EMOCHELP" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   emochelp.helpid, emochelp.parentid, emochelp.topic,
               emochelp.helphtml
          FROM emochelp
      ORDER BY topic ASC;
END get_emochelp;

 
 
 
 
 
 
 
 
@
