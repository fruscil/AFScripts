--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_AREA" (
   area                    areas.area%TYPE,
   areadescription         areas.areadescription%TYPE,
   mocidin                 areas.mocid%TYPE,
   areaid            OUT   areas.areaid%TYPE
)
AS
BEGIN
   SELECT seq_areas.NEXTVAL
     INTO areaid
     FROM DUAL;

   INSERT INTO areas
               (areaid, area, areadescription, mocid
               )
        VALUES (areaid, area, areadescription, mocidin
               );
END add_moc_area;

 
 
 
 
 
 
 
 
@
