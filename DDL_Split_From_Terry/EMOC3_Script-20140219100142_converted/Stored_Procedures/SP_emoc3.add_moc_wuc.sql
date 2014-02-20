--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WUC" (
   wuccodein                wuc.wuccode%TYPE,
   wucdescriptionin         wuc.wucdescription%TYPE,
   wucstartdatein           wuc.wucstartdate%TYPE,
   wucstopdatein            wuc.wucstopdate%TYPE,
   lastupdatebyin           INTEGER,
   wucid              OUT   wuc.wucid%TYPE,
   mdsin                    wuc.missiondesignseries%TYPE,
   blocknumberin            wuc.blocknumber%TYPE,
   newwucin                 wuc.newwuc%TYPE
)
AS
BEGIN
   SELECT NVL (MAX (wuc.wucid), 0) + 1
     INTO wucid
     FROM wuc;

   INSERT INTO wuc
               (wucid, wuccode, wucdescription, wucstartdate,
                wucstopdate, lastupdateby, lastupdate, missiondesignseries,
                blocknumber, newwuc
               )
        VALUES (wucid, wuccodein, wucdescriptionin, wucstartdatein,
                wucstopdatein, lastupdatebyin, SYSDATE, mdsin,
                blocknumberin, newwucin
               );
END add_moc_wuc;
 
 
 
 
 
 
 
 
@
