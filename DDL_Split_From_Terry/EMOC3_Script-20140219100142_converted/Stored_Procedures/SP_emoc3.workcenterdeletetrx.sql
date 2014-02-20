--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."WORKCENTERDELETETRX" (
   elcin                      wings.elc%TYPE,
   unitidin                   wings.unitid%TYPE,
   workcenterin               workcenters.workcentercode%TYPE,
   hostunitdateandtimein      VARCHAR2,
   transactionordinaldatein   VARCHAR2
)
AS
   mocvar    NUMBER;
   wingvar   NUMBER;
   wcrid     NUMBER;
   tmpvar    NUMBER;
BEGIN
   INSERT INTO workcentertrx
               (workcentertrxid, enterpriselocationcode, unitid, workcenter,
                hostunitdateandtime, transactionordinaldate,
                transactiontype, dateprocessed
               )
        VALUES (seq_workcentertrx.NEXTVAL, elcin, unitidin, workcenterin,
                hostunitdateandtimein, transactionordinaldatein,
                'WorkcenterDelete', SYSDATE
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
            AND wingid = wingvar
            AND mocid = mocvar;

         IF (tmpvar > 0)
         THEN
            SELECT workcenterid
              INTO wcrid
              FROM workcenters
             WHERE workcentercode = workcenterin
               AND wingid = wingvar
               AND mocid = mocvar;

            IF (wcrid IS NOT NULL)
            THEN
               UPDATE flights
                  SET workcenterid = NULL
                WHERE workcenterid = wcrid;

               COMMIT;

               DELETE      workcenters
                     WHERE workcenterid = wcrid;

               COMMIT;
            END IF;
         END IF;
      END IF;
   END IF;
END workcenterdeletetrx;
 
 
 
 
 
 
 
 
@
