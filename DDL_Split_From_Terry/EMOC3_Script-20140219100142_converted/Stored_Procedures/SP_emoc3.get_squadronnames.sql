--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SQUADRONNAMES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor
    FOR
       SELECT   squadronid, shortname
           FROM squadrons
       ORDER BY shortname;
END get_squadronnames;

 
 
 
 
 
 
 
 
@
