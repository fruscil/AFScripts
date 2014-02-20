--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_PILOTS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   pilotid, pilotname, pilot.rankid, pilot.squadronid,
               (SELECT ranks.rankcode
                  FROM ranks
                 WHERE ranks.rankid = pilot.rankid) AS rankcode,
               (SELECT squadrons.shortname
                  FROM squadrons
                 WHERE pilot.squadronid = squadrons.squadronid) AS shortname,
               (SELECT squadrons.squadronname
                  FROM squadrons
                 WHERE pilot.squadronid =
                                         squadrons.squadronid)
                                                             AS squadronname
          FROM pilot
      ORDER BY pilotname;
END get_pilots;

 
 
 
 
 
 
 
 
@
