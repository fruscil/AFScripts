--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_WDC" (
   wdcin                whendiscoveredcodes.wdc%TYPE,
   wdcnarrativein       whendiscoveredcodes.wdcnarrative%TYPE,
   startdatein          whendiscoveredcodes.startdate%TYPE,
   stopdatein           whendiscoveredcodes.stopdate%TYPE,
   whendiscoveredidin   whendiscoveredcodes.whendiscoveredid%TYPE
)
AS
BEGIN
   UPDATE whendiscoveredcodes
      SET wdc = wdcin,
          wdcnarrative = wdcnarrativein,
          startdate = startdatein,
          stopdate = stopdatein,
    lastupdate = SYSDATE
    WHERE whendiscoveredid = whendiscoveredidin;
END upd_wdc;
 
 
 
 
 
 
 
 
@
