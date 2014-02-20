--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CAUSECODECHANGE" (
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
   tmpvar      NUMBER;
   mocidvar    NUMBER;
   wingidvar   NUMBER;
 /******************************************************************************
   NAME:       CauseCodeChange
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     CauseCodeChange
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (CausecodeTrx)

******************************************************************************/
BEGIN
   insertcausecodetrx (p_homeelc,
                       p_currentelc,
                       p_unitid,
                       p_causecode,
                       p_causecodenarrative,
                       p_causecodetypeindicator,
                       p_defercodetypeindicator,
                       p_hostunitdateandtime,
                       p_transactionordinaldate,
                       p_transactiontype
                      );

   IF (p_causecode IS NOT NULL)
   THEN
      get_mocid_by_elcunitid (p_currentelc, p_unitid, mocidvar);

      IF (mocidvar IS NOT NULL)
      THEN
         UPDATE causecodes
            SET description = RTRIM (p_causecodenarrative)
          WHERE causecodes.mocid = mocidvar
            AND causecodes.causecode = RTRIM (p_causecode)
            AND causecodes.causecodetype =
                                   RTRIM (NVL (p_causecodetypeindicator, 'O'));

         COMMIT;
      END IF;
   END IF;
END causecodechange;
 
 
 
 
 
 
 
 
@
