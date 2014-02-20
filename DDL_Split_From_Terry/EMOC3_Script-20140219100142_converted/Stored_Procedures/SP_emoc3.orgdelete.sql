--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ORGDELETE" (
   elcin                      wings.elc%TYPE,
   unitidin                   organizations.unit_id%TYPE,
   orgidin                    organizations.orgid%TYPE,
   hostunitdateandtimein      VARCHAR2,
   transactionordinaldatein   VARCHAR2
)
AS
   wingidin   NUMBER;
   mocidin    NUMBER;
BEGIN
   INSERT INTO organizationtrx
               (organizationloadtrxid, currententerpriselocationcode,
                homeenterpriselocationcode, unitid, organizationid,
                hostunitdateandtime, transactionordinaldate, dateprocessed,
                transactiontype
               )
        VALUES (seq_organizationtrx.NEXTVAL, elcin,
                elcin, unitidin, orgidin,
                hostunitdateandtimein, transactionordinaldatein, SYSDATE,
                'OrganizationDelete'
               );

   COMMIT;

   IF (LENGTH (orgidin) > 0)
   THEN
      /* GET MOCID  */
      get_mocid_by_elcunitid (elcin, unitidin, mocidin);

      IF (mocidin IS NOT NULL)
      THEN
         /* GET WINGID from wings table using elc and unitid */
         get_wingid_by_elcunitid (elcin, unitidin, wingidin);

         UPDATE workcenters
            SET porgid = NULL
          WHERE workcenters.porgid = orgidin AND workcenters.mocid = mocidin;

         COMMIT;

         UPDATE squadrons
            SET organization_id = NULL,
                organizationsid = NULL
          WHERE organization_id = orgidin AND squadrons.mocid = mocidin;

         COMMIT;

         DELETE FROM organizations
               WHERE orgid = orgidin AND mocid = mocidin;

         COMMIT;
      END IF;
   END IF;
END orgdelete;
 
 
 
 
 
 
 
 
@
