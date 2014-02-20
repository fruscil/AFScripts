--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_STATUSCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   statuscodeid, statuscode, ordernumber, iconname,
               defaultstatuscode, lastflown, flying, takeoff,
               statuscodelabel, allowsortieupdate, isrequired
          FROM statuscode
      ORDER BY ordernumber, statuscode;
END get_statuscodes;

 
 
 
 
 
 
 
 
@
