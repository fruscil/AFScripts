--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GETAIRCRAFTBYEQUIPID" (
   p_cursor    OUT   emoc_types.emoc_cursor,
   equipidin         VARCHAR2,
   unitidin          VARCHAR2
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT aircraft.tailnumber, aircraft.shorttailnumber,
             aircraft.misequipid, squadrons.squadronname,
             squadrons.squadronid, squadrons.shortname, squadrons.wingid,
             wings.wingname, wings.unitid, wings.elc
        FROM aircraft, squadrons, wings
       WHERE aircraft.squadronid = squadrons.squadronid(+)
         AND squadrons.wingid = wings.wingid(+)
         AND aircraft.misequipid = equipidin
         AND wings.unitid = unitidin;
END getaircraftbyequipid;

 
 
 
 
 
 
 
 
@
