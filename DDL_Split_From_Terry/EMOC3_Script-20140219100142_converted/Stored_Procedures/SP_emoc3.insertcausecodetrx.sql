--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTCAUSECODETRX" (
   p_homeelc                  VARCHAR2,
   p_currentelc               VARCHAR2,
   p_unitid                   VARCHAR2,
   p_causecode                VARCHAR2,
   p_causecodenarrative       VARCHAR2,
   p_causecodetypeindicator   VARCHAR2,
   p_defercodetypeindicator   VARCHAR2,
   p_hostunitdateandtime      VARCHAR2,
   p_transactionordinaldate   VARCHAR2,
   p_transactiontype          VARCHAR2
)
IS
   tmpvar   NUMBER;
/******************************************************************************
   NAME:       InsertCauseCodeTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertCauseCodeTrx
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 10:16:05 AM, and 12/18/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       CauseCodeTrx)

******************************************************************************/
BEGIN
   SELECT seq_causecodetrx.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   INSERT INTO causecodetrx
               (causecodetrxid, homeenterpriselocationcode,
                currententerpriselocationcode, unitid, causecode,
                causecodenarrative, causecodetypeindicator,
                defercodetypeindicator, transactionordinaldate,
                hostunitdateandtime, transactiontype
               )
        VALUES (tmpvar, p_homeelc,
                p_currentelc, p_unitid, p_causecode,
                p_causecodenarrative, p_causecodetypeindicator,
                p_defercodetypeindicator, p_transactionordinaldate,
                p_hostunitdateandtime, p_transactiontype
               );
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertcausecodetrx;
 
 
 
 
 
 
 
 
@
