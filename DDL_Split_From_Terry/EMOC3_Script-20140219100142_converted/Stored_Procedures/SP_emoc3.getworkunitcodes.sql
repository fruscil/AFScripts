--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GETWORKUNITCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT t.wuccode, t.wucdescription, t.wucstartdate, t.wucstopdate, t.missiondesignseries
          FROM wuc t
      ORDER BY t.wuccode;
END GetWorkUnitCodes;
 
 
 
 
 
 
 
 
@
