--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_FLIGHTS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   flightid, flights.squadronid, flightname,
               flights.workcenterid,
               (SELECT workcenters.workcentercode
                  FROM workcenters
                 WHERE workcenters.workcenterid =
                                       flights.workcenterid)
                                                           AS workcentercode,
               (SELECT workcenters.porgid
                  FROM workcenters
                 WHERE workcenters.workcenterid =
                                                flights.workcenterid)
                                                                    AS orgid,
               (SELECT workcenters.unit_id
                  FROM workcenters
                 WHERE workcenters.workcenterid =
                                              flights.workcenterid)
                                                                  AS unit_id,
               (SELECT squadrons.squadronname
                  FROM squadrons
                 WHERE squadrons.squadronid =
                                           flights.squadronid)
                                                             AS squadronname,
               (SELECT wingid
                  FROM squadrons
                 WHERE squadronid = flights.squadronid) AS wingid
          FROM flights
      ORDER BY flightname;
END get_flights;

 
 
 
 
 
 
 
 
@
