--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_AREA" (
   area                    areas.area%TYPE,
   areadescription         areas.areadescription%TYPE,
   areaid            OUT   areas.areaid%TYPE
)
AS
BEGIN
   SELECT seq_areas.NEXTVAL
     INTO areaid
     FROM DUAL;

   INSERT INTO areas
               (areaid, area, areadescription
               )
        VALUES (areaid, area, areadescription
               );
END add_area;

 
 
 
 
 
 
 
 
@
