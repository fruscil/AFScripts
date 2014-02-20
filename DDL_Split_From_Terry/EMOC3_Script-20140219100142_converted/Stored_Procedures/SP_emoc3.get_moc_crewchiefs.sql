--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CREWCHIEFS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   crewchiefid, crewchief, NVL(defaultcrewchief,0) AS defaultcrewchief, picture, rankid,
               (SELECT ranks.rankcode
                  FROM ranks
                 WHERE ranks.rankid = crewchiefs.rankid) AS rankcode, mocid
          FROM crewchiefs
         WHERE mocid = mocidin
      ORDER BY crewchief;
END get_moc_crewchiefs;
 
 
 
 
 
 
 
 
@
