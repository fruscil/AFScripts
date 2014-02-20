--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_GENFLOW" (mocidin moc.mocid%TYPE)
AS
   CURSOR gfcur
   IS
      SELECT generationflowname
        FROM generationflow
       WHERE mocid = mocidin;

   gfrec   gfcur%ROWTYPE;
BEGIN
   OPEN gfcur;

   FETCH gfcur
    INTO gfrec;

   WHILE gfcur%FOUND
   LOOP
      DELETE      generationflowsteps
            WHERE generationflowname = gfrec.generationflowname;

      DELETE      generationflowitems
            WHERE generationflowname = gfrec.generationflowname;

      DELETE      generationflowprogress
            WHERE generationflowname = gfrec.generationflowname;

      FETCH gfcur
       INTO gfrec;
   END LOOP;

   CLOSE gfcur;

   COMMIT;

   DELETE      generationflow
         WHERE mocid = mocidin;

   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END delete_moc_genflow;
 
 
 
 
 
 
 
 
@
