--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LINKS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   linkid, linktitle, linkurl, linkdescription, enteredon,
               enteredby, lastupdated, linkorder
          FROM links
      ORDER BY linkorder, linkurl ASC;
END get_links;

 
 
 
 
 
 
 
 
@
