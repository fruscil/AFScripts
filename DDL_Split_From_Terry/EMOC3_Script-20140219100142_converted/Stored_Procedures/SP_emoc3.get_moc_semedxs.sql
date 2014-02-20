--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_SEMEDXS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   colors.colorname, colors.colorvalue, colors.fontcolor,
               colorrules.colorrank, colorrules.codetype, colorrules.colorid,
               semedx.semedxid, semedx.semedx, semedx.defaultval,
               semedx.colorrulesid, semedx.semedxdescription, semedx.mocid
          FROM semedx, colorrules, colors
         WHERE (    (semedx.colorrulesid = colorrules.colorrulesid(+))
                AND (colors.colorid(+) = colorrules.colorid)
                AND (semedx.mocid = mocidin)
               )
      ORDER BY semedx;
END get_moc_semedxs;
 
 
 
 
 
 
 
 
@
