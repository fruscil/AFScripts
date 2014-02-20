--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_OPEREVENTDELETETRX" 
AS
   /******************************************************************************
   NAME:       ARCH_OPEREVENTDELETETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     ARCH_OPEREVENTDELETETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventdeletetrx)

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.OPERATIONALEVENTDELETETRX
      SELECT OPERATIONALEVENTDELETETRXID, HOMEENTERPRISELOCATIONCODE,
       CURRENTENTERPRISELOCATIONCODE, UNITID, EQUIPMENTID, SORTIEDATE,
    SORTIENUMBER, DATEPROCESSED,  SYSDATE AS archivedate
   FROM EMOC3.OPERATIONALEVENTDELETETRX
WHERE DATEPROCESSED < SYSDATE - 7;

DELETE FROM EMOC3.OPERATIONALEVENTDELETETRX
WHERE DATEPROCESSED < SYSDATE - 7;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_OPEREVENTDELETETRX;
 
 
 
 
 
 
 
 
@
