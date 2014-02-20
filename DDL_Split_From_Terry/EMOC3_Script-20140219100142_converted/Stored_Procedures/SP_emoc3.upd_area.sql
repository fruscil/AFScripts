--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_AREA" (
   areain              areas.area%TYPE,
   areadescriptionin   areas.areadescription%TYPE,
   areaidin            areas.areaid%TYPE
)
AS
BEGIN
   UPDATE areas
      SET area = areain,
          areadescription = areadescriptionin
    WHERE areaid = areaidin;
END upd_area;

 
 
 
 
 
 
 
 
@
