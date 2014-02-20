--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_ORG2" (
   orgnamein                       organizations.orgname%TYPE,
   orgidin                         organizations.orgid%TYPE,
   station_location_codein         organizations.station_location_code%TYPE,
   camsinitflag                    INTEGER,
   unit_idin                       organizations.unit_id%TYPE,
   lastupdatebyin                  organizations.lastupdateby%TYPE,
   wingidin                        organizations.wingid%TYPE,
   mocidin                         organizations.mocid%TYPE,
   organizationsid           OUT   organizations.organizationsid%TYPE
)
AS
BEGIN
   SELECT seq_organizations.NEXTVAL
     INTO organizationsid
     FROM DUAL;

   INSERT INTO organizations
               (organizationsid, orgname, orgid, station_location_code,
                camsinit, unit_id, wingid, lastupdateby, lastupdate, mocid
               )
        VALUES (organizationsid, orgnamein, orgidin, station_location_codein,
                SYSDATE, unit_idin, wingidin, lastupdatebyin, SYSDATE, mocidin
               );
END add_moc_org2;

 
 
 
 
 
 
 
 
@
