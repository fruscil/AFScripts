--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_SORTIE_LINE" (
   scheduleidin         schedule.scheduleid%TYPE,
   camsloaded     OUT   interfacelog.interfacelogid%TYPE
)
/******************************************************************************
   NAME:       DELETE_SORTIE_LINE
   PURPOSE:    DELETEs status record for a previously entered line, deviations, status

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/1/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SCHEDULEID
   OUTPUT:
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
   cams_loaded_schedule   NUMBER   := 0;
   schedsource            CHAR(3);
   remarkstemp            NUMBER;
BEGIN
   /*
   SELECT SCHEDULESOURCE
   INTO SCHEDSOURCE
   FROM SCHEDULE
   WHERE SCHEDULEID = SCHEDULEIDIN;

   IF SCHEDSOURCE = '174' THEN
    BEGIN
      CAMS_LOADED_SCHEDULE := 1;
    END;
   ELSE
    BEGIN
    */
   SELECT scheduleremarks
     INTO remarkstemp
     FROM schedule
    WHERE scheduleid = scheduleidin;

   IF remarkstemp IS NOT NULL
   THEN
      BEGIN
         UPDATE schedule
            SET scheduleremarks = NULL
          WHERE scheduleid = scheduleidin;

         DELETE FROM remarks
               WHERE remarksid = remarkstemp;
      END;
   END IF;

   SELECT maintremarks
     INTO remarkstemp
     FROM schedule
    WHERE scheduleid = scheduleidin;

   IF remarkstemp IS NOT NULL
   THEN
      BEGIN
         UPDATE schedule
            SET maintremarks = NULL
          WHERE scheduleid = scheduleidin;

         DELETE FROM remarks
               WHERE remarksid = remarkstemp;
      END;
   END IF;

   remove_deviation_remarks (scheduleidin);

   DELETE      schedulestatus
         WHERE scheduleid = scheduleidin;

   DELETE      scheduledeviations
         WHERE scheduleid = scheduleidin;

   --Added next 3 for version 2.1 - noticed deficiency
   UPDATE joapdata
      SET scheduleid = NULL
    WHERE scheduleid = scheduleidin;

   UPDATE semedxdata
      SET scheduleid = NULL
    WHERE scheduleid = scheduleidin;

   DELETE      schedule
         WHERE scheduleid = scheduleidin;

   COMMIT;

   cams_loaded_schedule := 0;
    /*
     END;
   END IF;
   */
   camsloaded := cams_loaded_schedule;
END delete_sortie_line;
 
 
 
 
 
 
 
 
@
