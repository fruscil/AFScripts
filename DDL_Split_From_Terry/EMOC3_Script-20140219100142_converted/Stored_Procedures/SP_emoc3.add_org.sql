--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_ORG" (
   orgnamein                       organizations.orgname%TYPE,
   orgidin                         organizations.orgid%TYPE,
   station_location_codein         organizations.station_location_code%TYPE,
   camsinitflag                    INTEGER,
   unit_idin                       organizations.unit_id%TYPE,
   lastupdatebyin                  organizations.lastupdateby%TYPE,
   organizationsid           OUT   organizations.organizationsid%TYPE
)
AS
   wingidin   INTEGER;
BEGIN
   SELECT seq_organizations.NEXTVAL
     INTO organizationsid
     FROM DUAL;

   SELECT wingid
     INTO wingidin
     FROM wings
    WHERE unitid = unit_idin;

   INSERT INTO organizations
               (organizationsid, orgname, orgid, station_location_code,
                camsinit, unit_id, wingid, lastupdateby, lastupdate
               )
        VALUES (organizationsid, orgnamein, orgidin, station_location_codein,
                SYSDATE, unit_idin, wingidin, lastupdatebyin, SYSDATE
               );
END add_org;

 
 
 
 
 
 
 
 
@
