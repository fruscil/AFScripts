--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOCATIONCODECHANGE" (
   p_homeelc                   VARCHAR2,
   p_currentelc                VARCHAR2,
   p_locationcode              VARCHAR2,
   p_allowablequantity         VARCHAR2,
   p_locationrestrictioncode   VARCHAR2,
   p_hostunitdateandtime       VARCHAR2,
   p_transactionordinaldate    VARCHAR2,
   p_newlocationcode           VARCHAR2
)
IS
   tmpvar     NUMBER;
   recordid   NUMBER;

   CURSOR loc_cur
   IS
      SELECT locationid
        FROM locations
       WHERE locationcode = p_locationcode
         AND (elc = p_homeelc OR elc = p_currentelc);

   loc_rec    loc_cur%ROWTYPE;
/******************************************************************************
   NAME:       LocationCodeChange

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006          1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     LocationCodeChange
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (LocatoncodeTrx)

******************************************************************************/
BEGIN
   insertlocationcodetrx (p_homeelc,
                          p_currentelc,
                          p_locationcode,
                          p_allowablequantity,
                          p_locationrestrictioncode,
                          p_hostunitdateandtime,
                          p_transactionordinaldate,
                          'LocationCodeChange',
                          p_newlocationcode
                         );

   IF (LENGTH (p_locationcode) > 0)
   THEN
      OPEN loc_cur;

      FETCH loc_cur
       INTO loc_rec;

      WHILE loc_cur%FOUND
      LOOP
         IF (p_locationrestrictioncode IS NOT NULL)
         THEN
            UPDATE locations
               SET locationrestrictioncode = p_locationrestrictioncode
             WHERE locationid = loc_rec.locationid;

            COMMIT;
         END IF;

         IF (p_allowablequantity IS NOT NULL)
         THEN
            UPDATE locations
               SET maximumoccupancy = p_allowablequantity
             WHERE locationid = loc_rec.locationid;

            COMMIT;
         END IF;

         IF (p_newlocationcode IS NOT NULL)
         THEN
            UPDATE locations
               SET locationcode = p_newlocationcode
             WHERE locationid = loc_rec.locationid;

            COMMIT;

            SELECT COUNT (*)
              INTO tmpvar
              FROM aircraft
             WHERE locationid = loc_rec.locationid;

            IF (tmpvar > 0)
            THEN
               UPDATE aircraft
                  SET locationcode = p_newlocationcode
                WHERE locationid = loc_rec.locationid;

               COMMIT;
            END IF;
         END IF;

         FETCH loc_cur
          INTO loc_rec;
      END LOOP;

      CLOSE loc_cur;
   END IF;
/*  need to add code hear to process location code load */
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END locationcodechange;
 
 
 
 
 
 
 
 
@
