--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTLOCATIONCODETRX" (
   p_homeelc                   VARCHAR2,
   p_currentelc                VARCHAR2,
   p_locationcode              VARCHAR2,
   p_allowablequantity         VARCHAR2,
   p_locationrestrictioncode   VARCHAR2,
   p_hostunitdateandtime       VARCHAR2,
   p_transactionordinaldate    VARCHAR2,
   p_transactiontype           VARCHAR2,
   p_newlocationcode           VARCHAR2
)
IS
   tmpvar   NUMBER;
/******************************************************************************
   NAME:       InsertLocationCodeTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertLocationCodeTrx
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 10:16:05 AM, and 12/18/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       InsertLocationCodeTrx)

******************************************************************************/
BEGIN
   SELECT seq_locationcodetrx.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   INSERT INTO locationcodetrx
               (locationcodetrxid, homeenterpriselocationcode,
                currententerpriselocationcode, locationcode, newlocationcode,
                allowablequantity, locationrestrictioncode,
                transactionordinaldate, hostunitdateandtime,
                transactiontype
               )
        VALUES (tmpvar, p_homeelc,
                p_currentelc, p_locationcode, p_newlocationcode,
                p_allowablequantity, p_locationrestrictioncode,
                p_transactionordinaldate, p_hostunitdateandtime,
                p_transactiontype
               );

   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertlocationcodetrx;
 
 
 
 
 
 
 
 
@
