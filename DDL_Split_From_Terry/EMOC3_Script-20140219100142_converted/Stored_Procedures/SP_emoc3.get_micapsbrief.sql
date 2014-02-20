--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MICAPSBRIEF" (
   mocidin          aircraft.mocid%TYPE,
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT mc.micapid AS micapid, sq.shortname AS squadron,
             sq.squadronid AS squadronid,
             mc.documentnumber AS documentnumber, mc.nomenclature AS noun,
             ac.shorttailnumber AS tailnumber, mc.usercomment AS usercomment
        FROM micap mc LEFT JOIN aircraft ac ON mc.aircraftid = ac.aircraftid
             LEFT JOIN squadrons sq ON ac.squadronid = sq.squadronid
       WHERE ac.mocid = mocidin;
--ORDER BY AC.SHORTTAILNUMBER;
END get_micapsbrief;
 
 
 
 
 
 
 
 
@
