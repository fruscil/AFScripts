--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_WORKCENTER" (
   workcenternamein   workcenters.workcentername%TYPE,
   workcentercodein   workcenters.workcentercode%TYPE,
   lastupdatebyin     INTEGER,
   workcenteridin     workcenters.workcenterid%TYPE,
   porgidin           workcenters.porgid%TYPE
)
AS
BEGIN
   UPDATE workcenters
      SET workcentername = workcenternamein,
          workcentercode = workcentercodein,
          lastupdateby = lastupdatebyin,
          lastupdate = SYSDATE,
          porgid = porgidin
    WHERE workcenterid = workcenteridin;
END upd_workcenter;
 
 
 
 
 
 
 
 
@
