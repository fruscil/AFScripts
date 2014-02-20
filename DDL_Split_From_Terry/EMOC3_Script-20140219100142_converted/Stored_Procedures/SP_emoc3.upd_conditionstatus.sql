--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_CONDITIONSTATUS" (
   condstatidin        conditionstatus.condstatid%TYPE,
   conditionstatusin   conditionstatus.conditionstatus%TYPE,
   conditionlevelin    conditionstatus.conditionlevel%TYPE,
   flyablein           conditionstatus.flyable%TYPE,
   coloridin           conditionstatus.colorid%TYPE
)
AS
BEGIN
   UPDATE conditionstatus
      SET conditionstatus = conditionstatusin,
          conditionlevel = conditionlevelin,
          flyable = flyablein,
          colorid = coloridin
    WHERE condstatid = condstatidin;
END upd_conditionstatus;

 
 
 
 
 
 
 
 
@
