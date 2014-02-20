--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_POSSESSIONCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   possessionid, possessioncode, possessiondescription,
               defaultpossession, mocid
          FROM possessions
         WHERE mocid = mocidin
      ORDER BY possessioncode;
END get_moc_possessioncodes;

 
 
 
 
 
 
 
 
@
