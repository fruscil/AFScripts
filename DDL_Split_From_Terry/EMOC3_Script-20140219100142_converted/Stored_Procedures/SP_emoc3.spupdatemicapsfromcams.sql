--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEMICAPSFROMCAMS" (
   equipidin          micap.equipmentid%TYPE,
   elcin              micap.enterpriselocationcode%TYPE,
   unitidin           micap.unitid%TYPE,
   jcnin              micap.jobcontrolnumber%TYPE,
   documentnumberin   micap.documentnumber%TYPE,
   nomenclaturein     micap.nomenclature%TYPE,
   eddin              micap.estimateddeliverydate%TYPE,
   camsinitin         micap.camsinit%TYPE
)
AS
   counter   INTEGER;
   row_id    INTEGER;
BEGIN
   SELECT COUNT (*)
     INTO counter
     FROM micap
    WHERE (    (equipmentid = equipidin)
           AND (enterpriselocationcode = elcin)
           AND (unitid = unitidin)
           AND (jobcontrolnumber = jcnin)
           AND (documentnumber = documentnumberin)
          );

   SELECT NVL (MAX (micap.micapid), 0)
     INTO row_id
     FROM micap;

   IF (counter = 0)
   THEN
      INSERT INTO micap
                  (micapid, equipmentid, documentnumber,
                   nomenclature, estimateddeliverydate, camsinit,
                   jobcontrolnumber, enterpriselocationcode, unitid
                  )
           VALUES (row_id + 1, equipidin, documentnumberin,
                   nomenclaturein, eddin, camsinitin,
                   jcnin, elcin, unitidin
                  );
   ELSE
      UPDATE micap
         SET micap.nomenclature = nomenclaturein,
             micap.estimateddeliverydate = eddin,
             micap.camsinit = camsinitin
       WHERE (    (equipmentid = equipidin)
              AND (enterpriselocationcode = elcin)
              AND (unitid = unitidin)
              AND (jobcontrolnumber = jcnin)
              AND (documentnumber = documentnumberin)
             );
   END IF;
END spupdatemicapsfromcams;
 
 
 
 
 
 
 
 
@
