--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SORTIE_FOR_DUPLICATE" (
   sortieexists   OUT   schedule.scheduleid%TYPE,
   squadronidin         squadrons.squadronid%TYPE,
   sortiedatein         schedule.sortiedate%TYPE,
   sortienumin          schedule.sortienum%TYPE
)
AS
   sortie   NUMBER(10) := 0;
BEGIN
   SELECT MAX (scheduleid)
     INTO sortie
     FROM schedule sc
    WHERE squadronid = squadronidin
      AND sortiedate = sortiedatein
      AND sortienum = sortienumin;

   IF sortie IS NULL OR LENGTH (sortie) = 0
   THEN
      BEGIN
         sortieexists := 0;
      END;
   ELSE
      BEGIN
         sortieexists := sortie;
      END;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_sortie_for_duplicate;

 
 
 
 
 
 
 
 
@
