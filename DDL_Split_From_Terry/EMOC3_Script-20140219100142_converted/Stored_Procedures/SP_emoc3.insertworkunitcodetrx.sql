--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTWORKUNITCODETRX" (
   p_fromelc           workunitcodetrx.fromenterpriselocationcode%TYPE,
   p_fromunitid        workunitcodetrx.fromunitid%TYPE,
   p_workunitcode      workunitcodetrx.workunitcode%TYPE,
   p_narrative         workunitcodetrx.workunitcodenarrative%TYPE,
   p_mds               workunitcodetrx.missiondesignseries%TYPE,
   p_block             workunitcodetrx.blocknumbertype%TYPE,
   p_startdate         workunitcodetrx.startdate%TYPE,
   p_stopdate          workunitcodetrx.stopdate%TYPE,
   p_newworkunitcode   workunitcodetrx.newworkunitcode%TYPE,
   p_transactioncode   workunitcodetrx.transactioncode%TYPE
)
AS
   tmpvar    NUMBER;
   stopdt    DATE;

   CURSOR wuc_cur
   IS
      SELECT wucid
        FROM wuc
       WHERE wuccode = p_workunitcode
         AND missiondesignseries = p_mds
         AND blocknumber = NVL (p_block, '000');

   wuc_rec   wuc_cur%ROWTYPE;
/******************************************************************************
   NAME:       insertworkunitcodetrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/26/2006   r mcbride       1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     insertworkunitcodetrx
      Sysdate:         12/26/2006
      Date and Time:   12/26/2006, 10:07:12 AM, and 12/26/2006 10:07:12 AM
      Username:         (emoc3)
      Table Name:       (workunitcodetrx)
******************************************************************************/
BEGIN
   SELECT seq_workunitcodetrx.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   INSERT INTO workunitcodetrx
               (workunitcodetrxid, fromenterpriselocationcode, fromunitid,
                workunitcode, workunitcodenarrative, startdate, stopdate,
                missiondesignseries, blocknumbertype, newworkunitcode,
                dateprocessed, transactioncode
               )
        VALUES (tmpvar, p_fromelc, p_fromunitid,
                p_workunitcode, p_narrative, p_startdate, p_stopdate,
                p_mds, p_block, p_newworkunitcode,
                SYSDATE, p_transactioncode
               );

   COMMIT;

   IF (LENGTH (p_workunitcode) > 0)
   THEN
      tmpvar := 0;

      IF (p_stopdate IS NOT NULL)
      THEN
         stopdt := TO_DATE (p_stopdate, 'YYYY-MM-DD');
      END IF;

      IF (p_transactioncode = 'A')
      THEN
         SELECT COUNT (*)
           INTO tmpvar
           FROM wuc
          WHERE wuccode = p_workunitcode
            AND missiondesignseries = p_mds
            AND blocknumber = NVL (p_block, '000');

         IF (tmpvar = 0)
         THEN
            INSERT INTO wuc
                        (wucid, wuccode, wucdescription,
                         wucstartdate, wucstopdate,
                         camsinit, lastupdate, missiondesignseries,
                         blocknumber, newwuc
                        )
                 VALUES (seq_wucs.NEXTVAL, p_workunitcode, p_narrative,
                         TO_DATE (p_startdate, 'YYYY-MM-DD'), stopdt,
                         SYSDATE, SYSDATE, p_mds,
                         NVL (p_block, '000'), p_newworkunitcode
                        );

            COMMIT;
         END IF;
      ELSE
         IF (p_transactioncode = 'D')
         THEN
            OPEN wuc_cur;

            FETCH wuc_cur
             INTO wuc_rec;

            WHILE wuc_cur%FOUND
            LOOP
               UPDATE aircraft
                  SET aircraftwucid = NULL
                WHERE aircraftwucid = wuc_rec.wucid;

               UPDATE writeups
                  SET wucid = NULL
                WHERE wucid = wuc_rec.wucid AND corrected = 0;

               DELETE FROM wuc
                     WHERE wucid = wuc_rec.wucid;

               FETCH wuc_cur
                INTO wuc_rec;
            END LOOP;

            CLOSE wuc_cur;

            COMMIT;
         ELSE
            -- assume p_transactioncode = 'C' --

            -- need to reconcile new workunitcode if startdate > sysdate --
            /*IF (stopdt IS NULL)
            THEN
               IF (TO_DATE (p_startdate, 'YYYY-MM-DD') > SYSDATE)
               THEN
                  INSERT INTO wuc
                              (wucid, wuccode, wucdescription,
                               wucstartdate, wucstopdate,
                               camsinit, lastupdate, missiondesignseries,
                               blocknumber, newwuc
                              )
                       VALUES (seq_wucs.NEXTVAL, p_workunitcode, p_narrative,
                               TO_DATE (p_startdate, 'YYYY-MM-DD'), stopdt,
                               SYSDATE, SYSDATE, p_mds,
                               NVL (p_block, '000'), p_newworkunitcode
                              );

                  OPEN wuc_cur;

                  FETCH wuc_cur
                   INTO wuc_rec;

                  WHILE wuc_cur%FOUND
                  LOOP
                     UPDATE wuc
                        SET wucstopdate = stopdt,
                            newwuc = p_newworkunitcode
                      WHERE wucid = wuc_rec.wucid;

                     FETCH wuc_cur
                      INTO wuc_rec;
                  END LOOP;

                  CLOSE wuc_cur;

                  COMMIT;
               ELSE
                  OPEN wuc_cur;

                  FETCH wuc_cur
                   INTO wuc_rec;

                  WHILE wuc_cur%FOUND
                  LOOP
                     UPDATE aircraft
                        SET statuswuclcn = p_newworkunitcode
                      WHERE aircraftwucid = wuc_rec.wucid;

                     UPDATE wuc
                        SET newwuc = p_newworkunitcode,
                            wucdescription = p_narrative
                      WHERE wucid = wuc_rec.wucid;

                     FETCH wuc_cur
                      INTO wuc_rec;
                  END LOOP;

                  CLOSE wuc_cur;

                  COMMIT;
               END IF;
            ELSE */
            UPDATE wuc
               SET wucdescription = p_narrative,
                   wucstartdate = TO_DATE (p_startdate, 'YYYY-MM-DD'),
                   wucstopdate = stopdt,
                   lastupdate = SYSDATE,
                   newwuc = p_newworkunitcode
             WHERE wuccode = p_workunitcode
               AND missiondesignseries = p_mds
               AND blocknumber = NVL (p_block, '000');
         --END IF;
         END IF;
      END IF;

      COMMIT;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertworkunitcodetrx;
 
 
 
 
 
 
 
 
@
