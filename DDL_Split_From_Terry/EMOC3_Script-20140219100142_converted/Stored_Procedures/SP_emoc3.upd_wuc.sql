--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_WUC" (
   wuccodein          wuc.wuccode%TYPE,
   wucdescriptionin   wuc.wucdescription%TYPE,
   wucstartdatein     wuc.wucstartdate%TYPE,
   wucstopdatein      wuc.wucstopdate%TYPE,
   lastupdatebyin     wuc.lastupdateby%TYPE,
   wucidin            wuc.wucid%TYPE
)
AS
BEGIN
   UPDATE wuc
      SET wuccode = wuccodein,
          wucdescription = wucdescriptionin,
          wucstartdate = wucstartdatein,
          wucstopdate = wucstopdatein,
          lastupdateby = lastupdatebyin,
          lastupdate = SYSDATE
    WHERE wucid = wucidin;
END upd_wuc;
 
 
 
 
 
 
 
 
@
