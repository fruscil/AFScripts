--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_GEOLOCCODETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_GEOLOCTRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        2/16/2007  GMR            1. Created this procedure.

   NOTES:


******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.GEOLOCCODETRX
  SELECT 
GEOLOCCODETRXID, FROMENTERPRISELOCATIONCODE, FROMUNITID, 
   GEOLOCCODE, GEOLOCCODENARRATIVE, STARTDATE, 
   STOPDATE, TRANSACTIONCODE, DATEPROCESSED, 
   SYSDATE AS ARCHIVEDATE
FROM EMOC3.GEOLOCCODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.GEOLOCCODETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_GEOLOCcodeTRX;
 
 
 
 
 
 
 
 
@
