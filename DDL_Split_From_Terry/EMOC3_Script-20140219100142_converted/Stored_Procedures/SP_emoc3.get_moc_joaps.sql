--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_JOAPS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   joap.joapid, joap.joapcode, joap.joapdescription,
               joap.landing, joap.redcapstatus, joap.defaultjoap,
               joap.colorrulesid, joap.mocid, colorrules.colorid,
               colorrules.colorrank, colorrules.codetype, colors.colorname,
               colors.colorvalue, colors.fontcolor
          FROM joap, colorrules, colors
         WHERE (    (colors.colorid(+) = colorrules.colorid)
                AND (colorrules.colorrulesid(+) = joap.colorrulesid)
                AND (joap.mocid = mocidin)
               )
      ORDER BY joapcode;
END get_moc_joaps;
 
 
 
 
 
 
 
 
@
