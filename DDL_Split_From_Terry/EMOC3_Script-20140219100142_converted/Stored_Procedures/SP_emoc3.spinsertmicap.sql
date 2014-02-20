--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTMICAP" (
   aircraftidin      micap.AIRCRAFTID%TYPE,
   equipidin          micap.equipmentid%TYPE,
   elcin              micap.enterpriselocationcode%TYPE,
   unitidin           micap.unitid%TYPE,
   jcnin              micap.jobcontrolnumber%TYPE,
   documentnumberin   micap.documentnumber%TYPE,
   partin         micap.nomenclature%TYPE,
   eddin              micap.estimateddeliverydate%TYPE
)
AS
   row_id   INTEGER;
BEGIN
   SELECT NVL (MAX (micap.micapid), 0)
     INTO row_id
     FROM micap;

   INSERT INTO micap
               (micapid, equipmentid, enterpriselocationcode, unitid,
                jobcontrolnumber, documentnumber, nomenclature,
                estimateddeliverydate, aircraftid
               )
        VALUES (row_id + 1, equipidin, elcin, unitidin,
                jcnin, documentnumberin, partin,
                eddin, aircraftidin
               );
END spinsertmicap;
 
 
 
 
 
 
 
 
@
