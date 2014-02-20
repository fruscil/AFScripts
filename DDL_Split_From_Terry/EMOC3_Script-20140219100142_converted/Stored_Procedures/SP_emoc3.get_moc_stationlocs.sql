--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_STATIONLOCS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   staloccodeid, stationloc, stalocnarrative, camsinit,
               TO_CHAR (startdate, 'MM/DD/YYYY') AS startdate,
               TO_CHAR (stopdate, 'MM/DD/YYYY') AS stopdate, mocid
          FROM stationloccodes
         WHERE mocid = mocidin
      ORDER BY stationloc;
END get_moc_stationlocs;

 
 
 
 
 
 
 
 
@
