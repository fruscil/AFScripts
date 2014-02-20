--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."WORKCENTERLOAD" (
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
   mocvar    NUMBER;
   wingvar   NUMBER;
   tmpvar    NUMBER;
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
      /* GET MOCID for gathering code ids */
      get_mocid_by_elcunitid (elcin, unitidin, mocvar);

      IF (mocvar IS NOT NULL)
      THEN
         /* GET WINGID from wings table using elc and unitid */
         get_wingid_by_elcunitid (elcin, unitidin, wingvar);

         SELECT COUNT (*)
           INTO tmpvar
           FROM workcenters
          WHERE workcentercode = workcenterin
            AND mocid = mocvar
            AND wingid = wingvar;

         IF (tmpvar = 0)
         THEN
            INSERT INTO workcenters
                        (workcenterid, workcentercode,
                         workcentername, porgid, unit_id,
                         wingid, mocid, lastupdate, camsinit
                        )
                 VALUES (seq_workcenters.NEXTVAL, workcenterin,
                         workcenternarrativein, organizationidin, unitidin,
                         wingvar, mocvar, SYSDATE, SYSDATE
                        );
         END IF;
      END IF;
   END IF;
END workcenterload;
 
 
 
 
 
 
 
 
@
