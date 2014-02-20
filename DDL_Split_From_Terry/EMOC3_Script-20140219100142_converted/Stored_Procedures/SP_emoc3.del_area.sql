--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEL_AREA" (areaidin areas.areaid%TYPE)
AS
BEGIN
   UPDATE schedule
      SET areaid = NULL
    WHERE areaid = areaidin;

   DELETE      areas
         WHERE areaid = areaidin;
END del_area;

 
 
 
 
 
 
 
 
@
