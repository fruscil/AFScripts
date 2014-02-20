--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_BROADCAST_EMAIL_MESSAGE" (
SUBJECTIN  	  MESSAGES.MESSAGETITLE%TYPE,
MESSAGEIN 	  MESSAGES.MESSAGE%TYPE,
USERIN		  MESSAGES.LASTUPDATEBY%TYPE
)
/******************************************************************************
   NAME:       UPDATE_BROADCAST_EMAIL_MESSAGE
   PURPOSE:    Updates message table with the last broadcast message sent out

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/10/04      J.Chaplin       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SUBJECTIN
   *MESSAGEIN
   *USERIN
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/

AS

BEGIN
	 UPDATE MESSAGES
	 	SET
		   MESSAGETITLE = SUBJECTIN,
		   MESSAGE = MESSAGEIN,
		   LASTUPDATEBY = USERIN,
		   LASTUPDATE = SYSDATE
		WHERE
		   MESSAGETYPE = 'EBM';
COMMIT;
END UPDATE_BROADCAST_EMAIL_MESSAGE;

 
 
 
 
 
 
 
 
@
