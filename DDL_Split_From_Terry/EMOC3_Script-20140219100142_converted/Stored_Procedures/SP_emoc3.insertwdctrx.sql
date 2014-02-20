--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTWDCTRX" (
   p_fromelc              VARCHAR2,
   p_fromunitid           VARCHAR2,
   p_whendiscoveredcode   VARCHAR2,
   p_wdcnarrative         VARCHAR2,
   p_startdate            VARCHAR2,
   p_stopdate             VARCHAR2,
   p_transactioncode      VARCHAR2
)
AS
   tmpvar   NUMBER;
   stopdt   DATE;
/********************************** ********************************************
   NAME:       InsertWDCTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/24/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertWDCTrx
      Sysdate:         12/24/2006
      Date and Time:   12/24/2006, 10:38:46 AM, and 12/24/2006 10:38:46 AM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
BEGIN
   stopdt := NULL;

   INSERT INTO whendiscoveredcodetrx
               (whendiscoveredcodetrxid, fromenterpriselocationcode,
                fromunitid, whendiscoveredcode, whendiscoveredcodenarrative,
                startdate, stopdate, transactioncode
               )
        VALUES (seq_whendisccodetrx.NEXTVAL, p_fromelc,
                p_fromunitid, p_whendiscoveredcode, p_wdcnarrative,
                p_startdate, p_stopdate, p_transactioncode
               );

   COMMIT;

   IF (LENGTH (p_whendiscoveredcode) > 0)
   THEN
      IF (p_stopdate IS NOT NULL)
      THEN
         stopdt := TO_DATE (p_stopdate, 'YYYY-MM-DD');
      END IF;

      SELECT COUNT (*)
        INTO tmpvar
        FROM whendiscoveredcodes
       WHERE wdc = p_whendiscoveredcode AND mocid = 0;

      IF (tmpvar = 0)
      THEN
         IF (p_transactioncode != 'D')
         THEN
            INSERT INTO whendiscoveredcodes
                        (whendiscoveredid, wdc,
                         wdcnarrative,
                         startdate, stopdate,
                         camsinit, mocid
                        )
                 VALUES (seq_whendisccodes.NEXTVAL, p_whendiscoveredcode,
                         p_wdcnarrative,
                         TO_DATE (p_startdate, 'YYYY-MM-DD'), stopdt,
                         SYSDATE, 0
                        );

            COMMIT;
         END IF;
      ELSE
         SELECT whendiscoveredid
           INTO tmpvar
           FROM whendiscoveredcodes
          WHERE wdc = p_whendiscoveredcode AND mocid = 0;

         IF (p_transactioncode = 'D')
         THEN
            DELETE FROM whendiscoveredcodes
                  WHERE whendiscoveredid = tmpvar;
         ELSE
            upd_wdc (p_whendiscoveredcode,
                     p_wdcnarrative,
                     TO_DATE (p_startdate, 'YYYY-MM-DD'),
                     stopdt,
                     tmpvar
                    );
         END IF;

         COMMIT;
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
END insertwdctrx;
 
 
 
 
 
 
 
 
@
