--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_RANKS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   rankid, rankcode, rankdescription, defaultrank, gradecode, mocid
          FROM ranks
         WHERE mocid = mocidin
      ORDER BY rankcode;
END get_moc_ranks;

 
 
 
 
 
 
 
 
@
