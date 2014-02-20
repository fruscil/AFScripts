--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_COMBATSCLRULES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   sclrulesid, combatsclrules.aircraftmdsid,
               combatsclrules.combatsclid, aircraftmds.aircraftmds,
               (aircraftmds || ' / ' || blocknumber) AS mds_block,
               combatscls.combatscl
          FROM combatsclrules, combatscls, aircraftmds
         WHERE combatsclrules.aircraftmdsid = aircraftmds.aircraftmdsid
           AND combatsclrules.combatsclid = combatscls.combatsclid
           AND combatsclrules.mocid = mocidin
      ORDER BY aircraftmds, combatscl;
END get_moc_combatsclrules;

 
 
 
 
 
 
 
 
@
