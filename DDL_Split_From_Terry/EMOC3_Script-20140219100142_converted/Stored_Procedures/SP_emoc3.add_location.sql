--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_LOCATION" (
   locationcode             locations.locationcode%TYPE,
   locationname             locations.locationname%TYPE,
   maximumoccupancy         locations.maximumoccupancy%TYPE,
   defaultlocation          locations.defaultlocation%TYPE,
   elcin                    locations.elc%TYPE,
   camsinitin               INTEGER,
   locationid         OUT   locations.locationid%TYPE
)
AS
BEGIN
   SELECT seq_locations.NEXTVAL
     INTO locationid
     FROM DUAL;

   INSERT INTO locations
               (locationid, locationcode, locationname, maximumoccupancy,
                defaultlocation, elc
               )
        VALUES (locationid, locationcode, locationname, maximumoccupancy,
                defaultlocation, elcin
               );

   IF (camsinitin = 1)
   THEN
      UPDATE locations
         SET camsinit = SYSDATE
       WHERE locationid = locationid;
   END IF;
END add_location;
 
 
 
 
 
 
 
 
@
