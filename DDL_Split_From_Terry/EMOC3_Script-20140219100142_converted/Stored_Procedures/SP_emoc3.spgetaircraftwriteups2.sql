--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTWRITEUPS2" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         writeups.aircraftid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor
    FOR
       SELECT writeups.writeupid, writeups.symbolid, symbols.symbol,
              writeups.discrepancy, writeups.jcn,
              TO_CHAR (writeups.writeuptime,
                       'MM/DD/YYYY HH24:MI:SS'
                      ) "WRITEUPTIME",
              writeups.pacer, writeups.wucid, wuc.wuccode,
              writeups.corrected, writeups.etic,
              TO_CHAR (writeups.correctedtime,
                       'MM/DD/YYYY HH24:MI:SS'
                      ) "CORRECTEDTIME",
              writeups.correctiveaction
         FROM writeups, symbols, wuc
        WHERE (    (writeups.aircraftid = aircraftidin)
               AND (writeups.symbolid = symbols.symbolid(+))
               AND (writeups.corrected = 0)
               AND (writeups.wucid = wuc.wucid(+))
              );
END spgetaircraftwriteups2;
 
 
 
 
 
 
 
 
@
