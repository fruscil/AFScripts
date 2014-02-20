--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTREQINQ" (
   equipidin       supplyinquiry.equipid%TYPE,
   documentnumin   supplyinquiry.documentnum%TYPE,
   workcenterin    supplyinquiry.workcenter%TYPE,
   statin          supplyinquiry.stat%TYPE,
   eddin           supplyinquiry.edd%TYPE,
   wucin           supplyinquiry.wuc%TYPE,
   qtyin           supplyinquiry.qty%TYPE,
   eventnumin      supplyinquiry.eventnum%TYPE,
   locin           supplyinquiry.loc%TYPE,
   narrativein     supplyinquiry.narrative%TYPE,
   unitidin        supplyinquiry.unitid%TYPE,
   elcin           supplyinquiry.elc%TYPE,
   aircraftidin    supplyinquiry.aircraftid%TYPE
)
AS
BEGIN
   INSERT INTO supplyinquiry
               (equipid, documentnum, workcenter, stat, edd,
                wuc, qty, eventnum, loc, narrative, unitid,
                elc, aircraftid
               )
        VALUES (equipidin, documentnumin, workcenterin, statin, eddin,
                wucin, qtyin, eventnumin, locin, narrativein, unitidin,
                elcin, aircraftidin
               );

   COMMIT;

   IF (LENGTH (documentnumin) > 0)
   THEN
      IF (LENGTH (eventnumin) > 0)
      THEN
         addimdscdbmicap (equipidin,
                          elcin,
                          unitidin,
                          eventnumin,
                          documentnumin,
                          narrativein,
                          eddin,
                          NULL,
                          NULL,
                          wucin
                         );
      END IF;
   END IF;
END spinsertreqinq;
 
 
 
 
 
 
 
 
@
