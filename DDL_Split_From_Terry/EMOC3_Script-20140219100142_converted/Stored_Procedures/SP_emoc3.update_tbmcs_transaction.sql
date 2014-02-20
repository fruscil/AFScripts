--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_TBMCS_TRANSACTION" (
INTERFACELOGIDIN  	  TBMCSINTERFACELOG.INTERFACELOGID%TYPE,
TBMCSRESPONSEIN 	  TBMCSINTERFACELOG.TBMCSRESPONSE%TYPE,
TBMCSRESPONSERECVIN   TBMCSINTERFACELOG.TBMCSRESPONSERECV%TYPE
)
/******************************************************************************
   NAME:       UPDATE_TBMCS_TRANSACTION
   PURPOSE:    Updates a transaction record

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        3/16/04      J.Chaplin       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *INTERFACELOGID
   *TBMCSRESPONSERECV,
   *TBMCSRESPONSE
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
	 UPDATE TBMCSINTERFACELOG
	 	SET
		   TBMCSRESPONSE = TBMCSRESPONSEIN,
		   TBMCSRESPONSERECV = TBMCSRESPONSERECVIN
		WHERE
		   INTERFACELOGID = INTERFACELOGIDIN;
COMMIT;
END UPDATE_TBMCS_TRANSACTION;

 
 
 
 
 
 
 
 
@
