--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ORGLOAD" (
   elcin                      wings.elc%TYPE,
   unitidin                   organizations.unit_id%TYPE,
   orgidin                    organizations.orgid%TYPE,
   orgnamein                  organizations.orgname%TYPE,
   installationcodein         VARCHAR2,
   orgnumberin                organizations.organizationnumber%TYPE,
   orgkindin                  organizations.organizationkind%TYPE,
   orgtypein                  organizations.organizationtype%TYPE,
   afiorgnumberin             organizations.afi21103organizationnumber%TYPE,
   afiorgkindin               organizations.afi21103organizationkind%TYPE,
   afiorgtypein               organizations.afi21103organizationtype%TYPE,
   detachmentnumberin         organizations.detachmentnumber%TYPE,
   overseasindicatorin        organizations.overseasindicator%TYPE,
   celastreportingdatein      organizations.celastreportingdate%TYPE,
   hostunitdateandtimein      VARCHAR2,
   transactionordinaldatein   VARCHAR2,
   transactiontypein          VARCHAR2
)
AS
   wingidin   NUMBER;
   mocidin    NUMBER;
   tmpvar     NUMBER;
BEGIN
   INSERT INTO organizationtrx
               (organizationloadtrxid, currententerpriselocationcode,
                homeenterpriselocationcode, unitid, organizationid,
                organizationnumber, organizationkind, organizationtype,
                nomenclature, installtioncode, afi21103organizationnumber,
                afi21103organizationkind, afi21103organizationtype,
                detachmentnumber, overseasindicator,
                celastreportingdate, hostunitdateandtime,
                transactionordinaldate, dateprocessed, transactiontype
               )
        VALUES (seq_organizationtrx.NEXTVAL, elcin,
                elcin, unitidin, orgidin,
                orgnumberin, orgkindin, orgtypein,
                orgnamein, installationcodein, afiorgnumberin,
                afiorgkindin, afiorgtypein,
                detachmentnumberin, overseasindicatorin,
                celastreportingdatein, hostunitdateandtimein,
                transactionordinaldatein, SYSDATE, transactiontypein
               );

   COMMIT;

   IF (LENGTH (orgidin) > 0)
   THEN
      /* GET MOCID ids */
      get_mocid_by_elcunitid (elcin, unitidin, mocidin);

      IF (mocidin IS NOT NULL)
      THEN
         /* GET WINGID from wings table using elc and unitid */
         get_wingid_by_elcunitid (elcin, unitidin, wingidin);
         tmpvar := 0;

         SELECT COUNT (*)
           INTO tmpvar
           FROM organizations
          WHERE orgid = orgidin AND wingid = wingidin;

         IF (tmpvar = 0)
         THEN
            INSERT INTO organizations
                        (organizationsid, orgname, orgid,
                         station_location_code, camsinit, unit_id, wingid,
                         mocid, organizationnumber, organizationkind,
                         organizationtype, afi21103organizationnumber,
                         afi21103organizationkind, afi21103organizationtype,
                         detachmentnumber, overseasindicator,
                         celastreportingdate
                        )
                 VALUES (seq_organizations.NEXTVAL, orgnamein, orgidin,
                         installationcodein, SYSDATE, unitidin, wingidin,
                         mocidin, orgnumberin, orgkindin,
                         orgtypein, afiorgnumberin,
                         afiorgkindin, afiorgtypein,
                         detachmentnumberin, overseasindicatorin,
                         celastreportingdatein
                        );
         END IF;
      END IF;
   END IF;
END orgload;
 
 
 
 
 
 
 
 
@
