--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ARMAMENTS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   armamentid, armament.aircraftmdsid, aircraftmds.aircraftmds,
               (aircraftmds || ' / ' || blocknumber) AS mds_block,
               armament.ordnanceid, ordnance.ordnance, station
          FROM armament, aircraftmds, ordnance
         WHERE armament.aircraftmdsid = aircraftmds.aircraftmdsid
           AND armament.ordnanceid = ordnance.ordnanceid
           AND armament.mocid = mocidin
      ORDER BY station;
END get_moc_armaments;

 
 
 
 
 
 
 
 
@
