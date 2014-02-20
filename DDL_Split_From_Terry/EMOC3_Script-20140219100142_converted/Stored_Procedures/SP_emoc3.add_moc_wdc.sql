--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WDC" (
   wdcin                    whendiscoveredcodes.wdc%TYPE,
   wdcnarrativein           whendiscoveredcodes.wdcnarrative%TYPE,
   startdatein              whendiscoveredcodes.startdate%TYPE,
   stopdatein               whendiscoveredcodes.stopdate%TYPE,
   camsinitflag             INTEGER,
   mocidin                  whendiscoveredcodes.mocid%TYPE,
   whendiscoveredid   OUT   whendiscoveredcodes.whendiscoveredid%TYPE
)
AS
BEGIN
   SELECT seq_whendisccodes.NEXTVAL
     INTO whendiscoveredid
     FROM DUAL;

   INSERT INTO whendiscoveredcodes
               (whendiscoveredid, wdc, wdcnarrative, mocid,
                startdate, stopdate
               )
        VALUES (whendiscoveredid, wdcin, wdcnarrativein, mocidin,
                startdatein, stopdatein
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE whendiscoveredcodes
         SET camsinit = SYSDATE
       WHERE whendiscoveredid = whendiscoveredid;
   END IF;
END add_moc_wdc;

 
 
 
 
 
 
 
 
@
