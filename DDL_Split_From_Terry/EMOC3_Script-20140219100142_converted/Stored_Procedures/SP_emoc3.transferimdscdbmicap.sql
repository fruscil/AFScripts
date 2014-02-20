--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."TRANSFERIMDSCDBMICAP" ( 
   equipidin        VARCHAR2, 
   elcin            VARCHAR2, 
   unitidin         VARCHAR2, 
   jcnin            VARCHAR2, 
   docnumberin      VARCHAR2, 
   nomenclaturein   VARCHAR2, 
   eddin            VARCHAR2, 
   issuedatein      VARCHAR2, 
   ujcin            VARCHAR2, 
   wucin            VARCHAR2 
) 
AS 
   mocidvar   INTEGER; 
   acidvar    INTEGER; 
   wucidvar   INTEGER; 
BEGIN 
   /*GET MOCID */ 
   get_mocid_by_elcunitid (elcin, unitidin, mocidvar); 
 
   IF (mocidvar IS NOT NULL) 
   THEN 
      get_aircraftid_by_mocequipid (mocidvar, equipidin, acidvar); 
 
 
         UPDATE micap 
            SET equipmentid = equipidin, 
    jobcontrolnumber = jcnin, 
    nomenclature = nomenclaturein, 
                estimateddeliverydate = eddin, 
                issuedate = issuedatein, 
                urgencyjustificationcode = ujcin, 
                workunitcode = wucin, 
      aircraftid = acidvar 
          WHERE enterpriselocationcode = elcin 
            AND unitid = unitidin 
            AND documentnumber = docnumberin; 
 
         COMMIT; 
 
         IF (LENGTH (wucin) > 0) 
         THEN 
            get_wucid_by_wucaircraftid (wucin, acidvar, wucidvar); 
         ELSE 
            wucidvar := NULL; 
         END IF; 
 
         spinsertwriteup (acidvar, 
                          jcnin, 
                          NULL, 
                          0, 
                          NULL, 
                          NULL, 
                          wucidvar, 
                          NULL, 
                          0, 
                          NULL 
                         ); 
      END IF; 
         emoc_cache.updatechangenotification('aircraft'||to_char(acidvar), 0); 
EXCEPTION 
   WHEN NO_DATA_FOUND 
   THEN 
      NULL; 
   WHEN OTHERS 
   THEN 
      -- Consider logging the error and then re-raise 
      RAISE; 
END transferimdscdbmicap;
 
 
 
 
 
 
 
 
@
