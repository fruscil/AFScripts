--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ORGCHANGE" (
   elcin                      wings.elc%TYPE,
   unitidin                   organizations.unit_id%TYPE,
   orgidin                    organizations.orgid%TYPE,
   orgnumberin                organizations.organizationnumber%TYPE,
   orgkindin                  organizations.organizationkind%TYPE,
   orgtypein                  organizations.organizationtype%TYPE,
   neworgidin                 organizations.orgid%TYPE,
   neworgnumberin             organizations.organizationnumber%TYPE,
   neworgkindin               organizations.organizationkind%TYPE,
   neworgtypein               organizations.organizationtype%TYPE,
   hostunitdateandtimein      VARCHAR2,
   transactionordinaldatein   VARCHAR2,
   nomenclaturein             organizations.orgname%TYPE
)
AS
   mocidin    NUMBER;
   wingidin   NUMBER;
   orgidvar   NUMBER;
   tmpvar     NUMBER;
BEGIN
   INSERT INTO organizationtrx
               (organizationloadtrxid, currententerpriselocationcode,
                homeenterpriselocationcode, unitid, organizationid,
                organizationnumber, organizationkind, organizationtype,
                neworganizationid, neworganizationnumber,
                neworganizationkind, neworganizationtype,
                hostunitdateandtime, transactionordinaldate, dateprocessed,
                transactiontype, nomenclature
               )
        VALUES (seq_organizationtrx.NEXTVAL, elcin,
                elcin, unitidin, orgidin,
                orgnumberin, orgkindin, orgtypein,
                neworgidin, neworgnumberin,
                neworgkindin, neworgtypein,
                hostunitdateandtimein, transactionordinaldatein, SYSDATE,
                'OrganizationChange', nomenclaturein
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

         SELECT organizationsid
           INTO orgidvar
           FROM organizations
          WHERE orgid = orgidin AND mocid = mocidin AND wingid = wingidin;

         IF (orgidvar IS NOT NULL)
         THEN
            IF (neworgidin IS NOT NULL)
            THEN
               UPDATE organizations
                  SET lastupdate = SYSDATE,
                      orgid = neworgidin
                WHERE organizationsid = orgidvar;

               COMMIT;

               SELECT COUNT (*)
                 INTO tmpvar
                 FROM workcenters
                WHERE porgid = orgidin
                  AND mocid = mocidin
                  AND wingid = wingidin;

               IF (tmpvar > 0)
               THEN
                  UPDATE workcenters
                     SET porgid = neworgidin
                   WHERE porgid = orgidin
                     AND mocid = mocidin
                     AND wingid = wingidin;

                  COMMIT;
               END IF;

               SELECT COUNT (*)
                 INTO tmpvar
                 FROM squadrons
                WHERE organization_id = orgidin
                  AND mocid = mocidin
                  AND wingid = wingidin;

               IF (tmpvar > 0)
               THEN
                  UPDATE squadrons
                     SET organization_id = neworgidin
                   WHERE organization_id = orgidin
                     AND mocid = mocidin
                     AND wingid = wingidin;

                  COMMIT;
               END IF;
            END IF;

            COMMIT;

            IF (neworgnumberin IS NOT NULL)
            THEN
               UPDATE organizations
                  SET organizationnumber = neworgnumberin,
                      lastupdate = SYSDATE
                WHERE organizationsid = orgidvar;
            END IF;

            IF (neworgkindin IS NOT NULL)
            THEN
               UPDATE organizations
                  SET organizationkind = neworgkindin,
                      lastupdate = SYSDATE
                WHERE organizationsid = orgidvar;
            END IF;

            IF (neworgtypein IS NOT NULL)
            THEN
               UPDATE organizations
                  SET organizationtype = neworgtypein,
                      lastupdate = SYSDATE
                WHERE organizationsid = orgidvar;
            END IF;

            COMMIT;

            IF (nomenclaturein IS NOT NULL)
            THEN
               UPDATE organizations
                  SET orgname = nomenclaturein,
                      lastupdate = SYSDATE
                WHERE organizationsid = orgidvar;
            END IF;

            COMMIT;
         END IF;
      END IF;

      COMMIT;
   END IF;
END orgchange;
 
 
 
 
 
 
 
 
@
