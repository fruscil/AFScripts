--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_POSSESSIONCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   possessionid, possessioncode, possessiondescription,
               defaultpossession
          FROM possessions
      ORDER BY possessioncode;
END get_possessioncodes;

 
 
 
 
 
 
 
 
@
