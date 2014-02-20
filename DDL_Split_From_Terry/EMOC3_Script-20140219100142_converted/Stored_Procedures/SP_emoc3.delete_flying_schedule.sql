--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_FLYING_SCHEDULE" (
   MESSAGE        OUT   remarks.remarks%TYPE,
   rcount         OUT   remarks.remarksid%TYPE,
   squadronidin         schedule.squadronid%TYPE,
   sortiedatein         schedule.sortiedate%TYPE
)
/******************************************************************************
   NAME:       DELETE_FLYING_SCHEDULE
   PURPOSE:    DELETES schedule records as long as no aircraft have flown or have deviaitons

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/1/03      A.Mitchell       1. Created this procedure.
   1.1        2/27/04     A.Mitchell      2. Modified to use cursor to remove recs
   PARAMETERS:
   INPUT:
   *SQUADRONID
   *SORTIEDATE
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
   reccount   NUMBER             := 0;
   msg        VARCHAR2(500);

   CURSOR schedcur
   IS
      SELECT schedule.scheduleid, schedule.scheduleremarks,
             schedule.maintremarks, scheduledeviations.deviationsremarks
        FROM schedule LEFT JOIN scheduledeviations ON schedule.scheduleid =
                                                        scheduledeviations.scheduleid
       WHERE squadronid = squadronidin AND schedule.sortiedate = sortiedatein;

   schedrec   schedcur%ROWTYPE;
BEGIN
   SELECT COUNT (schedule.scheduleid)
     INTO reccount
     FROM schedule LEFT JOIN scheduledeviations ON schedule.scheduleid =
                                                     scheduledeviations.scheduleid
          LEFT JOIN schedulestatus ON schedulestatus.scheduleid =
                                                           schedule.scheduleid
          JOIN statuscode ON statuscode.statuscodeid =
                                                   schedulestatus.statuscodeid
    WHERE schedule.sortiedate = sortiedatein
      AND squadronid = squadronidin
      AND (   LENGTH (actualtakeoff) > 0
           OR LENGTH (scheduledeviations.deviationcodeid) > 0
           OR (statustype = 0 AND flying = 1)
          );

   IF reccount > 0
   THEN
      BEGIN
         msg :=
               'The Schedule records could not be deleted because '
            || 'one of the Aircraft has been flown or has deviation(s) against it';
      END;
   ELSE
      BEGIN
         OPEN schedcur;

         FETCH schedcur
          INTO schedrec;

         WHILE schedcur%FOUND
         LOOP
            DELETE FROM semedxdata
                  WHERE scheduleid = schedrec.scheduleid;

            DELETE FROM joapdata
                  WHERE scheduleid = schedrec.scheduleid;

            DELETE FROM schedulestatus
                  WHERE scheduleid = schedrec.scheduleid;

            UPDATE schedule
               SET scheduleremarks = NULL,
                   maintremarks = NULL
             WHERE scheduleid = schedrec.scheduleid;

            UPDATE scheduledeviations
               SET deviationsremarks = NULL
             WHERE scheduleid = schedrec.scheduleid;

            DELETE FROM remarks
                  WHERE remarksid = schedrec.scheduleremarks;

            DELETE FROM remarks
                  WHERE remarksid = schedrec.maintremarks;

            DELETE FROM remarks
                  WHERE remarksid = schedrec.deviationsremarks;

            DELETE FROM scheduledeviations
                  WHERE scheduleid = schedrec.scheduleid;

            DELETE FROM schedule
                  WHERE scheduleid = schedrec.scheduleid;

            FETCH schedcur
             INTO schedrec;
         END LOOP;

         CLOSE schedcur;

         COMMIT;
         msg :=
               'All Sortie records of this squadron for Sortie Date '
            || sortiedatein
            || ' were deleted.';
      END;
   END IF;

   rcount := reccount;
   MESSAGE := msg;
END delete_flying_schedule;

 
 
 
 
 
 
 
 
@
