--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_MAJCOMS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   majcomid, majcom, majcomnarrative, comid, comcode, camsinit,
               mocid
          FROM majcoms
         WHERE mocid = mocidin
      ORDER BY majcom;
END get_moc_majcoms;

 
 
 
 
 
 
 
 
@
