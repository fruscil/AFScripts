--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."MAJCOMCODELOAD" (
   p_fromelc               VARCHAR2,
   p_fromunitid            VARCHAR2,
   p_majcomcode            VARCHAR2,
   p_majcomcodenarrative   VARCHAR2,
   p_transactioncode       VARCHAR2,
   p_majcomabbrev     VARCHAR2
)
IS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       MajcomCodeLoad
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006  r mcbride        1. Created this procedure.
        4/30/2007   j chaplin     2.  mod for cams change, code 2 digit
                     abbrev 3 digit

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     MajcomCodeLoad
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (majorCommandCodeTrx)

******************************************************************************/
BEGIN
   INSERT INTO majorcommandcodetrx
               (majorcommandcodetrxid, fromenterpriselocationcode,
                fromunitid, majorcommandcode, majorcommandcodenarrative,
                transactioncode, majorcommandabbrev
               )
        VALUES (seq_majorcommandcodetrx.NEXTVAL, p_fromelc,
                p_fromunitid, p_majcomcode, p_majcomcodenarrative,
                p_transactioncode, p_majcomabbrev
               );

   COMMIT;

   IF (LENGTH (p_majcomabbrev) > 0)
   THEN
      SELECT COUNT (*)
        INTO tmpvar
        FROM majcoms
       WHERE majcoms.majcom = p_majcomabbrev AND mocid = 0;

      IF (tmpvar = 0)
      THEN
         IF (p_transactioncode = 'A')
         THEN
            INSERT INTO majcoms
                        (majcomid, majcom, comcode,
                         majcomnarrative, camsinit, comid, mocid
                        )
                 VALUES (seq_majcoms.NEXTVAL, p_majcomabbrev, p_majcomcode,
                         p_majcomcodenarrative, SYSDATE, p_majcomcode, 0
                        );

            COMMIT;
         END IF;
      ELSE
         IF (p_transactioncode = 'C')
         THEN
            UPDATE majcoms
               SET majcomnarrative = p_majcomcodenarrative,
                   lastupdate = SYSDATE
             WHERE majcom = p_majcomabbrev AND mocid = 0;
         ELSE
            IF (p_transactioncode = 'D')
            THEN
               DELETE      majcoms
                     WHERE majcom = p_majcomabbrev AND mocid = 0;
            END IF;
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
END majcomcodeload;
 
 
 
 
 
 
 
 
@
