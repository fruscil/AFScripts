--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE                 "EMOC3"."ADD_WUCFROMXML" (
   wuccodein                wuc.wuccode%TYPE,
   wucdescriptionin         wuc.wucdescription%TYPE,
   mdsin              wuc.MISSIONDESIGNSERIES%type,
   blocknumberin            wuc.BLOCKNUMBER%type,
   wucstartdatein           wuc.wucstartdate%TYPE,
   wucstopdatein            wuc.wucstopdate%TYPE,
   lastupdatebyin           INTEGER,
   wucid              OUT   wuc.wucid%TYPE
)
AS
   row_id   INTEGER;
   dupwuc   INTEGER;
BEGIN


   SELECT COUNT (wucid)
     INTO dupwuc
     FROM wuc
    WHERE wuccode = wuccodein
      AND missiondesignseries = mdsin
      AND blocknumber = blocknumberin;

   IF (dupwuc = 0)
   THEN
      SELECT NVL (MAX (wuc.wucid), 0)
        INTO row_id
        FROM wuc;


      INSERT INTO wuc
               (wucid, wuccode, wucdescription, missiondesignseries,
                blocknumber, wucstartdate, wucstopdate, lastupdateby,
                lastupdate, camsinit
               )
        VALUES (row_id + 1, wuccodein, wucdescriptionin, mdsin,
                nvl(blocknumberin,'000'), wucstartdatein, wucstopdatein, lastupdatebyin,
                SYSDATE, SYSDATE
               );

    END IF;


END add_wucfromxml;

@
