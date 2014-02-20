--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_DEVIATION_REMARKS" (
   scheduleidin   schedule.scheduleid%TYPE
)
AS
   CURSOR cur
   IS
      SELECT deviationsremarks
        FROM scheduledeviations
       WHERE scheduleid = scheduleidin AND deviationsremarks IS NOT NULL;

   rec   cur%ROWTYPE;
BEGIN
   UPDATE scheduledeviations
      SET deviationsremarks = NULL
    WHERE scheduleid = scheduleidin;

   OPEN cur;

   FETCH cur
    INTO rec;

   WHILE cur%FOUND
   LOOP
      DELETE FROM remarks
            WHERE remarksid = rec.deviationsremarks;

      FETCH cur
       INTO rec;
   END LOOP;

   CLOSE cur;

   COMMIT;
END remove_deviation_remarks;

 
 
 
 
 
 
 
 
@
