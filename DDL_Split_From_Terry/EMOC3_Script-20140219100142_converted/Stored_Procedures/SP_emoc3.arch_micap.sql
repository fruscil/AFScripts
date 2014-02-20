--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_MICAP" (archdate DATE)

AS

   /******************************************************************************
   NAME:       ARCH_MICAP
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        2/23/2007  GMR            1. Created this procedure.

   NOTES:

******************************************************************************/
BEGIN

     INSERT INTO EMOCAUX.MICAP 
SELECT 
MICAPID, DOCUMENTNUMBER, CAMSINIT, 
   AIRCRAFTID, ENTERPRISELOCATIONCODE, UNITID, 
   EQUIPMENTID, JOBCONTROLNUMBER, NOMENCLATURE, 
   ESTIMATEDDELIVERYDATE, ISSUEDATE, URGENCYJUSTIFICATIONCODE, 
   WORKUNITCODE, USERCOMMENT, DELETEDFLAG, 
   DELETEDDATE, sysdate
FROM EMOC3.MICAP
WHERE LASTUPDATED < archdate;

DELETE EMOC3.MICAP
WHERE LASTUPDATED < archdate;

EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END ARCH_MICAP;
 
 
 
 
 
 
 
 
@
