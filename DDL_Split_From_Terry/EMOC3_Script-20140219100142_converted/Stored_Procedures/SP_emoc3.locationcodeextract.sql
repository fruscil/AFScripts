--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOCATIONCODEEXTRACT" (
   p_homeelc             VARCHAR2,
   p_locationcode        VARCHAR2,
   p_allowablequantity   VARCHAR2,
   p_unitid              VARCHAR2
)
IS
   tmpvar   NUMBER;
/******************************************************************************
   NAME:       LocationCodeExtract

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     LocationCodeExtract
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (LocatoncodeTrx)

******************************************************************************/
BEGIN
   insertlocationcodetrx (p_homeelc,
                          p_homeelc,
                          p_locationcode,
                          p_allowablequantity,
                          NULL,
                          NULL,
                          NULL,
                          'LocationCodeExtract',
                          NULL
                         );

   SELECT COUNT (*)
     INTO tmpvar
     FROM locations
    WHERE locations.elc = p_homeelc
          AND locations.locationcode = p_locationcode;

   IF (tmpvar = 0)
   THEN
      INSERT INTO locations
                  (locationid, locationcode,
                   maximumoccupancy, camsinit,
                   elc,
                   mocid
                  )
           VALUES (seq_locations.NEXTVAL, p_locationcode,
                   NVL (isnumeric (p_allowablequantity), 9999), SYSDATE,
                   p_homeelc, 0
                  );

      COMMIT;
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
END locationcodeextract;
 
 
 
 
 
 
 
 
@
