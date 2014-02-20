--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CAUSECODELOAD" (
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
   NAME:       CauseCodeLoad
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     CauseCodeLoad
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
         SELECT COUNT (*)
           INTO tmpvar
           FROM causecodes
          WHERE causecodes.mocid = mocidvar
            AND causecodes.causecode = p_causecode
            AND causecodes.causecodetype = NVL(p_causecodetypeindicator,'O');

         IF (tmpvar = 0)
         THEN
            INSERT INTO causecodes
                        (causecodeid, causecode,
                         description, causecodetype, defaultcausecode,
                         camsinit, mocid
                        )
                 VALUES (seq_causecodes.NEXTVAL, p_causecode,
                         p_causecodenarrative, NVL(p_causecodetypeindicator,'O'), 0,
                         SYSDATE, mocidvar
                        );

            COMMIT;
         END IF;
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END causecodeload;
 
 
 
 
 
 
 
 
@
