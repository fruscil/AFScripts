--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_LOCATION" (
   locationcodein      locations.locationcode%TYPE,
   locationnamein      locations.locationname%TYPE,
   maxoccupancyin      locations.maximumoccupancy%TYPE,
   defaultlocationin   locations.defaultlocation%TYPE,
   elcin               locations.elc%TYPE,
   camsinitin          INTEGER,
   locationidin        locations.locationid%TYPE
)
AS
   locid   INTEGER;
BEGIN
   UPDATE locations
      SET locationcode = locationcodein,
          locationname = locationnamein,
          maximumoccupancy = maxoccupancyin,
          elc = elcin,
    lastupdate = SYSDATE
    WHERE locationid = locationidin;

   IF (defaultlocationin = 1)
   THEN
      IF (LENGTH (elcin) > 0)
      THEN
         UPDATE locations
            SET defaultlocation = 0
          WHERE locationid != locationidin AND elc = elcin;
      ELSE
         UPDATE locations
            SET defaultlocation = 0
          WHERE (LENGTH (elc) = 0 OR elc IS NULL)
                AND locationid != locationidin;
      END IF;

      UPDATE locations
         SET defaultlocation = 1
       WHERE locationid = locationidin;
   ELSE
      UPDATE locations
         SET defaultlocation = 0
       WHERE locationid = locationidin;
   END IF;

   IF (camsinitin = 1)
   THEN
      UPDATE locations
         SET camsinit = SYSDATE
       WHERE locationid = locationidin;
   END IF;
END upd_location;
 
 
 
 
 
 
 
 
@
