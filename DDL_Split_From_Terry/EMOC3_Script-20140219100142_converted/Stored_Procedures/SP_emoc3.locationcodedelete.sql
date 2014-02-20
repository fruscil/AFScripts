--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOCATIONCODEDELETE" (
   p_homeelc                  VARCHAR2,
   p_currentelc               VARCHAR2,
   p_locationcode             VARCHAR2,
   p_hostunitdateandtime      VARCHAR2,
   p_transactionordinaldate   VARCHAR2
)
IS
   tmpvar     NUMBER;
   recordid   NUMBER;

   CURSOR loc_cur
   IS
      SELECT locationid
        FROM locations
       WHERE locationcode = p_locationcode AND elc = p_homeelc;

   loc_rec    loc_cur%ROWTYPE;
/******************************************************************************
   NAME:       LocationCodeDelete
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006          1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     LocationCodeDelete
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (LocatoncodeTrx)

******************************************************************************/
BEGIN
   insertlocationcodetrx (p_homeelc,
                          p_currentelc,
                          p_locationcode,
                          NULL,
                          NULL,
                          p_hostunitdateandtime,
                          p_transactionordinaldate,
                          'LocationCodeDelete',
                          NULL
                         );

   IF (LENGTH (p_locationcode) > 0)
   THEN
      OPEN loc_cur;

      FETCH loc_cur
       INTO loc_rec;

      WHILE loc_cur%FOUND
      LOOP
         DELETE FROM hotspots
               WHERE locationid = loc_rec.locationid;

         COMMIT;

         UPDATE aircraft
            SET locationid = NULL,
                locationcode = NULL
          WHERE locationid = loc_rec.locationid;

         DELETE FROM locations
               WHERE locationid = loc_rec.locationid;

         COMMIT;

         FETCH loc_cur
          INTO loc_rec;
      END LOOP;

      CLOSE loc_cur;
   END IF;
/*  need to add code hear to process location code delete */
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END locationcodedelete;
 
 
 
 
 
 
 
 
@
