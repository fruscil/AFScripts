--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WHENDISCOVEREDCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   whendiscoveredid, wdc,
               TO_CHAR (startdate, 'MM/DD/YYYY') AS startdate,
               TO_CHAR (stopdate, 'MM/DD/YYYY') AS stopdate, wdcnarrative,
               camsinit, mocid
          FROM whendiscoveredcodes
         WHERE mocid = mocidin
      ORDER BY wdc;
END get_moc_whendiscoveredcodes;

 
 
 
 
 
 
 
 
@
