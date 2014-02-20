--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."WORKCENTERLOADTRX" (
   elcin                      wings.elc%TYPE,
   unitidin                   wings.unitid%TYPE,
   workcenterin               workcenters.workcentercode%TYPE,
   organizationidin           workcenters.porgid%TYPE,
   workcenternarrativein      workcenters.workcentername%TYPE,
   hostunitdateandtimein      VARCHAR,
   transactionordinaldatein   VARCHAR,
   importtype                 VARCHAR
)
AS
   mocidin    NUMBER;
   wingidin   NUMBER;
   tmpvar     NUMBER;
BEGIN
   tmpvar := 0;

   INSERT INTO workcentertrx
               (workcentertrxid, enterpriselocationcode, unitid, workcenter,
                workcenternarrative, organizationid,
                hostunitdateandtime, transactionordinaldate,
                transactiontype, dateprocessed
               )
        VALUES (seq_workcentertrx.NEXTVAL, elcin, unitidin, workcenterin,
                workcenternarrativein, organizationidin,
                hostunitdateandtimein, transactionordinaldatein,
                importtype, SYSDATE
               );

   COMMIT;

   IF (LENGTH (workcenterin) > 0)
   THEN
      get_mocid_by_elcunitid (elcin, unitidin, mocidin);

      IF (mocidin IS NOT NULL)
      THEN
         get_wingid_by_elcunitid (elcin, unitidin, wingidin);

         SELECT COUNT (*)
           INTO tmpvar
           FROM workcenters
          WHERE workcentercode = workcenterin
            AND mocid = mocidin
            AND wingid = wingidin;

         IF (tmpvar = 0)
         THEN
            INSERT INTO workcenters
                        (workcenterid, workcentercode,
                         workcentername, porgid, unit_id,
                         wingid, mocid, lastupdate, camsinit
                        )
                 VALUES (seq_workcenters.NEXTVAL, workcenterin,
                         workcenternarrativein, organizationidin, unitidin,
                         wingidin, mocidin, SYSDATE, SYSDATE
                        );
         END IF;
      END IF;
   END IF;
END workcenterloadtrx;
 
 
 
 
 
 
 
 
@
