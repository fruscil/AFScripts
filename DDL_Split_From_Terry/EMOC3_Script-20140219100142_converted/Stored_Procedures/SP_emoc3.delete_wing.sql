--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_WING" (wingidin wings.wingid%TYPE)
AS
   CURSOR sqcur
   IS
      SELECT squadronid
        FROM squadrons
       WHERE wingid = wingidin;

   sqrec   sqcur%ROWTYPE;
BEGIN
   OPEN sqcur;

   FETCH sqcur
    INTO sqrec;

   WHILE sqcur%FOUND
   LOOP
      delete_squadron (sqrec.squadronid);

      FETCH sqcur
       INTO sqrec;
   END LOOP;

   CLOSE sqcur;

   COMMIT;

   DELETE      imdslogins
         WHERE wingid = wingidin;

   COMMIT;

   DELETE      wings
         WHERE wingid = wingidin;

   COMMIT;
END delete_wing;
 
 
 
 
 
 
 
 
@
