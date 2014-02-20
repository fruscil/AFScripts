--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_SEMEDXDATA" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.semedxdata
      SELECT semdataid, enginedataid,
             (SELECT semedx
                FROM semedx
               WHERE semedxid = semedxdata.semedxid) AS semedx,
             moccontroller, sampledate, reason, hoursrequired,
             hoursremaining, notifiedby, expediternotified,
             semedxlastupdated, scheduleid, SYSDATE AS archivedate
        FROM semedxdata
       WHERE sampledate < archdate;

--Then delete
   DELETE      semedxdata
         WHERE sampledate < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
