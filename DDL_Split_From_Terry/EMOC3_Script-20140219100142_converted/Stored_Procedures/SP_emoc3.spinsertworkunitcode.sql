--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTWORKUNITCODE" (
   wuccodein          wuc.wuccode%TYPE,
   wucdescriptionin   wuc.wucdescription%TYPE,
   wucstartdatein     VARCHAR,
   wucstopdatein      VARCHAR,
   mdsin              VARCHAR,
   blknumberin        VARCHAR,
   lastupdatein       VARCHAR,
   lastupdatebyin     wuc.lastupdateby%TYPE
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
      AND blocknumber = blknumberin;

   IF (dupwuc = 0)
   THEN
      SELECT NVL (MAX (wuc.wucid), 0)
        INTO row_id
        FROM wuc;

      INSERT INTO wuc
                  (wucid, wuccode, wucdescription,
                   wucstartdate,
                   wucstopdate, missiondesignseries,
                   blocknumber,
                   lastupdate,
                   lastupdateby
                  )
           VALUES (row_id + 1, wuccodein, wucdescriptionin,
                   TO_DATE (wucstartdatein, 'MM/DD/YYYY HH24:MI:SS'),
                   TO_DATE (wucstopdatein, 'MM/DD/YYYY HH24:MI:SS'), mdsin,
                   blknumberin,
                   TO_DATE (lastupdatein, 'MM/DD/YYYY HH24:MI:SS'),
                   lastupdatebyin
                  );
   END IF;
END spinsertworkunitcode;
 
 
 
 
 
 
 
 
@
