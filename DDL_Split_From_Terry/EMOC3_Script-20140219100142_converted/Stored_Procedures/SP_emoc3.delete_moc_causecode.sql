--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_CAUSECODE" (
   p_mocid           moc.mocid%TYPE,
   p_causecode       causecodes.causecode%TYPE,
   p_causecodetype   causecodes.causecodetype%TYPE
)
AS
   CURSOR cau_cur
   IS
      SELECT causecodeid, causecodetype
        FROM causecodes
       WHERE mocid = p_mocid AND causecode = p_causecode;

   cau_rec      cau_cur%ROWTYPE;
   oktodelete   BOOLEAN;
BEGIN
   oktodelete := FALSE;

   OPEN cau_cur;

   FETCH cau_cur
    INTO cau_rec;

   WHILE cau_cur%FOUND
   LOOP
      oktodelete := TRUE;
      IF (p_causecodetype IS NOT NULL)
      THEN
         IF (cau_rec.causecodetype = p_causecodetype)
         THEN
            oktodelete := TRUE;
         ELSE
            oktodelete := FALSE;
         END IF;
      ELSE
         oktodelete := TRUE;
      END IF;

      IF (oktodelete)
      THEN
         UPDATE schedule
            SET causecodeid = NULL
          WHERE causecodeid = cau_rec.causecodeid;

         COMMIT;

         UPDATE scheduledeviations
            SET causecodeid = NULL
          WHERE causecodeid = cau_rec.causecodeid;

         UPDATE scheduledeviations
            SET newcausecode = NULL
          WHERE newcausecode = cau_rec.causecodeid;

         COMMIT;

         DELETE FROM causecodes
               WHERE causecodeid = cau_rec.causecodeid;

         COMMIT;
      END IF;

      FETCH cau_cur
       INTO cau_rec;
   END LOOP;

   CLOSE cau_cur;
END delete_moc_causecode;
 
 
 
 
 
 
 
 
@
