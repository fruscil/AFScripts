--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADDWRITEUP" (
   aircraftidin         aircraft.aircraftid%TYPE,
   jcnin                writeups.jcn%TYPE,
   wid            OUT   NUMBER
)
AS
   row_id   NUMBER;
BEGIN
   SELECT NVL (MAX (writeups.writeupid), 0)
     INTO row_id
     FROM writeups;

   wid := row_id + 1;

   INSERT INTO writeups
               (writeupid, writeuptime, jcn, corrected, pacer, aircraftid,
                discrepancy,
                wucid,
                etic
               )
        VALUES (wid, SYSDATE, jcnin, 0, 0, aircraftidin,
                (SELECT statusnarrative
                   FROM aircraft
                  WHERE aircraftid = aircraftidin),
                (SELECT aircraftwucid
                   FROM aircraft
                  WHERE aircraftid = aircraftidin),
                (SELECT etic
                   FROM aircraft
                  WHERE aircraftid = aircraftidin)
               );
END addwriteup;
 
 
 
 
 
 
 
 
@
