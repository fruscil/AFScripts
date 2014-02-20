--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_LOCATION" (
   locationcode             locations.locationcode%TYPE,
   locationname             locations.locationname%TYPE,
   maximumoccupancy         locations.maximumoccupancy%TYPE,
   defaultlocation          locations.defaultlocation%TYPE,
   elcin                    locations.elc%TYPE,
   camsinitin               INTEGER,
   mocidin                  locations.mocid%TYPE,
   locationid         OUT   locations.locationid%TYPE
)
AS
BEGIN
   SELECT seq_locations.NEXTVAL
     INTO locationid
     FROM DUAL;

   INSERT INTO locations
               (locationid, locationcode, locationname, maximumoccupancy,
                defaultlocation, mocid, elc, camsinit
               )
        VALUES (locationid, locationcode, locationname, maximumoccupancy,
                defaultlocation, mocidin, elcin, SYSDATE
               );


END add_moc_location;
 
 
 
 
 
 
 
 
@
