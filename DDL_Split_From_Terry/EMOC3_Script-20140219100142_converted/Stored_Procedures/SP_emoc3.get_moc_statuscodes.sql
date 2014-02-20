--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_STATUSCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   statuscodeid, statuscode, ordernumber, iconname,
               defaultstatuscode, lastflown, flying, takeoff,
               statuscodelabel, allowsortieupdate, isrequired, mocid
          FROM statuscode
         WHERE mocid = mocidin
      ORDER BY ordernumber, statuscode;
END get_moc_statuscodes;

 
 
 
 
 
 
 
 
@
