--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOCS" (p_cursor OUT emoc_types.emoc_cursor) AS
BEGIN
  -- RETURN THE CURSOR FOR THE RECORDSET
  OPEN p_cursor FOR
    SELECT mocid,
           REPLACE(moctitle, '''''', '''') AS moctitle,
           isactive,
           TO_CHAR(lastupdated, 'MM/DD/YYYY HH24:MI:SS') AS lastupdated
      FROM moc
     ORDER BY moctitle;
END get_mocs;
 
 
 
 
 
 
 
 
@
