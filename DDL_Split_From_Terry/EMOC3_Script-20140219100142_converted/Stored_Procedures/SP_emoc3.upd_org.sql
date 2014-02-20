--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_ORG" (
   orgnamein                 organizations.orgname%TYPE,
   orgidin                   organizations.orgid%TYPE,
   station_location_codein   organizations.station_location_code%TYPE,
   unit_idin                 organizations.unit_id%TYPE,
   wingidin                  organizations.wingid%TYPE,
   lastupdatebyin            organizations.lastupdateby%TYPE,
   organizationsidin         organizations.organizationsid%TYPE
)
AS
   tmporg   VARCHAR2(10);
   tmpvar   NUMBER;
BEGIN
   SELECT TRIM (orgid)
     INTO tmporg
     FROM organizations
    WHERE organizationsid = organizationsidin;

   UPDATE organizations
      SET orgname = orgnamein,
          orgid = orgidin,
          station_location_code = station_location_codein,
          unit_id = unit_idin,
          lastupdateby = lastupdatebyin,
          lastupdate = SYSDATE,
          wingid = wingidin
    WHERE organizationsid = organizationsidin;

   COMMIT;

   IF (tmporg != orgidin)
   THEN
      UPDATE workcenters
         SET porgid = orgidin
       WHERE porgid = tmporg AND wingid = wingidin;

      COMMIT;
   END IF;
END upd_org;
 
 
 
 
 
 
 
 
@
