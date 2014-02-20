--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_USERALERT" IS
/******************************************************************************
   NAME:       ARCH_USERALERT
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/26/2006  GMR             1. Created this procedure.

   NOTES:

******************************************************************************/

BEGIN

--Delete all rows older than the cutoff date.
DELETE EMOC3.USERALERT
WHERE RECEIVED < SYSDATE - 7;

--Commit if successful.
COMMIT;

END;
 
 
 
 
 
 
 
 
@
