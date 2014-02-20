--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WDC" (
   wdcin                    whendiscoveredcodes.wdc%TYPE,
   wdcnarrativein           whendiscoveredcodes.wdcnarrative%TYPE,
   startdatein              whendiscoveredcodes.startdate%TYPE,
   stopdatein               whendiscoveredcodes.stopdate%TYPE,
   camsinitflag             INTEGER,
   whendiscoveredid   OUT   whendiscoveredcodes.whendiscoveredid%TYPE
)
AS
BEGIN
   SELECT seq_whendisccodes.NEXTVAL
     INTO whendiscoveredid
     FROM DUAL;

   INSERT INTO whendiscoveredcodes
               (whendiscoveredid, wdc, wdcnarrative, startdate,
                stopdate, mocid
               )
        VALUES (whendiscoveredid, wdcin, wdcnarrativein, startdatein,
                stopdatein, 0
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE whendiscoveredcodes
         SET camsinit = SYSDATE
       WHERE whendiscoveredid = whendiscoveredid;
   END IF;
END add_wdc;
 
 
 
 
 
 
 
 
@
