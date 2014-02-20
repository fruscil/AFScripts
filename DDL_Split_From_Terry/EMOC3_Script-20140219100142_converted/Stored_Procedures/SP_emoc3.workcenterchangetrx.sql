--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."WORKCENTERCHANGETRX" (
   elcin                      wings.elc%TYPE,
   unitidin                   wings.unitid%TYPE,
   workcenterin               workcenters.workcentercode%TYPE,
   newworkcenterin            workcenters.workcentercode%TYPE,
   workcenternarrativein      workcenters.workcentername%TYPE,
   organizationidin           workcenters.porgid%TYPE,
   hostunitdateandtimein      VARCHAR,
   transactionordinaldatein   VARCHAR
)
AS
   mocvar            NUMBER;
   wingvar           NUMBER;
   workcenteridvar   NUMBER;
BEGIN
   INSERT INTO workcentertrx
               (workcentertrxid, enterpriselocationcode, unitid, workcenter,
                workcenternarrative, organizationid, newworkcenter,
                hostunitdateandtime, transactionordinaldate,
                transactiontype, dateprocessed
               )
        VALUES (seq_workcentertrx.NEXTVAL, elcin, unitidin, workcenterin,
                workcenternarrativein, organizationidin, newworkcenterin,
                hostunitdateandtimein, transactionordinaldatein,
                'WorkcenterChange', SYSDATE
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

         IF (wingvar IS NOT NULL)
         THEN
            SELECT workcenterid
              INTO workcenteridvar
              FROM (SELECT workcenterid
                      FROM workcenters
                     WHERE workcentercode = workcenterin
                       AND mocid = mocvar
                       AND wingid = wingvar
                       AND ROWNUM < 2);

            IF (workcenteridvar IS NOT NULL)
            THEN
               IF (organizationidin IS NOT NULL)
               THEN
                  UPDATE workcenters
                     SET porgid = organizationidin,
                         lastupdate = SYSDATE
                   WHERE workcenterid = workcenteridvar;

                  COMMIT;
               END IF;

               IF (newworkcenterin IS NOT NULL)
               THEN
                  UPDATE workcenters
                     SET workcentercode = newworkcenterin,
                         lastupdate = SYSDATE
                   WHERE workcenterid = workcenteridvar;

                  COMMIT;
               END IF;

               IF (workcenternarrativein IS NOT NULL)
               THEN
                  UPDATE workcenters
                     SET workcentername = workcenternarrativein,
                         lastupdate = SYSDATE
                   WHERE workcenterid = workcenteridvar;

                  COMMIT;
               END IF;
            END IF;
         END IF;
      END IF;
   END IF;
END workcenterchangetrx;
 
 
 
 
 
 
 
 
@
