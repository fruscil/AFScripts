--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."DELETEIMDSCDBMICAP" ( 
   equipidin              VARCHAR2, 
   elcin                  VARCHAR2, 
   unitidin               VARCHAR2, 
   jcnin                  VARCHAR2, 
   docnumberin            VARCHAR2 
) 
AS 
   mid        INTEGER; 
   micapid    INTEGER; 
   mocidvar   INTEGER; 
   acidvar    INTEGER; 
BEGIN 
   /*GET MOCID */ 
   SELECT mocid 
     INTO mocidvar 
     FROM wings 
            WHERE elc = elcin AND unitid = unitidin; 
 
   /*Get Aircraftid */ 
   SELECT aircraftid 
     INTO acidvar 
     FROM aircraft 
            WHERE mocid = mocidvar AND misequipid = equipidin; 
 
   SELECT COUNT (*) 
     INTO mid 
     FROM micap 
    WHERE equipmentid = equipidin 
      AND enterpriselocationcode = elcin 
      AND unitid = unitidin 
   AND jobcontrolnumber = jcnin 
   AND documentnumber = docnumberin; 
 
   IF (mid > 0) 
   THEN 
        UPDATE micap 
            SET deletedflag = 1, 
    deleteddate = SYSDATE() 
          WHERE equipmentid = equipidin 
            AND enterpriselocationcode = elcin 
            AND unitid = unitidin 
            AND jobcontrolnumber = jcnin 
            AND documentnumber = docnumberin; 
 
         COMMIT; 
 
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
END deleteimdscdbmicap;
 
 
 
 
 
 
 
 
@
