--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MAJCOMS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   majcomid, majcom, majcomnarrative, comid, comcode, camsinit
          FROM majcoms
         WHERE mocid = 0
      ORDER BY majcom;
END get_majcoms;
 
 
 
 
 
 
 
 
@
