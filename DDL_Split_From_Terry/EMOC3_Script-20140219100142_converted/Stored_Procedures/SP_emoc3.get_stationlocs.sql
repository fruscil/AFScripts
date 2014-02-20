--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_STATIONLOCS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   staloccodeid, stationloc, stalocnarrative, camsinit,
               TO_CHAR (startdate, 'MM/DD/YYYY') AS startdate,
               TO_CHAR (stopdate, 'MM/DD/YYYY') AS stopdate
          FROM stationloccodes
         WHERE mocid = 0
      ORDER BY stationloc;
END get_stationlocs;
 
 
 
 
 
 
 
 
@
