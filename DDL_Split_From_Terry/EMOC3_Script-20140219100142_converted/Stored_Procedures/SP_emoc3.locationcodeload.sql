--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOCATIONCODELOAD" (
   p_homeelc                   VARCHAR2,
   p_currentelc                VARCHAR2,
   p_locationcode              VARCHAR2,
   p_allowablequantity         VARCHAR2,
   p_locationrestrictioncode   VARCHAR2,
   p_hostunitdateandtime       VARCHAR2,
   p_transactionordinaldate    VARCHAR2
)
IS
   tmpvar     NUMBER;
   recordid   NUMBER;
/******************************************************************************
   NAME:       LocationCodeLoad
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006          1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     LocationCodeLoad
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
                          'LocationCodeLoad',
                          ''
                         );

   IF (LENGTH (p_locationcode) > 0)
   THEN
      SELECT COUNT (*)
        INTO recordid
        FROM locations
       WHERE locations.elc = p_homeelc
         AND locations.locationcode = p_locationcode;

      IF (recordid = 0)
      THEN
         INSERT INTO locations
                     (locationid, locationcode, locationname,
                      maximumoccupancy, camsinit,
                      elc, locationrestrictioncode, mocid
                     )
              VALUES (seq_locations.NEXTVAL, p_locationcode, '',
                      NVL (isnumeric (p_allowablequantity), 9999), SYSDATE,
                      p_homeelc, p_locationrestrictioncode, 0
                     );

         COMMIT;
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END locationcodeload;
 
 
 
 
 
 
 
 
@
