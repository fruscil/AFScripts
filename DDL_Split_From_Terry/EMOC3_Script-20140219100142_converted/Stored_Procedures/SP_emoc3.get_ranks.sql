--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_RANKS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   rankid, rankcode, rankdescription, defaultrank
          FROM ranks
      ORDER BY rankcode;
END get_ranks;

 
 
 
 
 
 
 
 
@
