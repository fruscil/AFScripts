--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SEMEDXS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   semedx.semedxid, semedx.semedx, semedx.semedxdescription,
               NVL (semedx.defaultval, 0) AS defaultval, semedx.colorrulesid,
               colorrules.colorid, colors.colorname, colors.colorvalue
          FROM semedx, colorrules, colors
         WHERE semedx.colorrulesid = colorrules.colorrulesid
           AND colorrules.colorid = colors.colorid
      ORDER BY semedx;
END get_semedxs;

 
 
 
 
 
 
 
 
@
