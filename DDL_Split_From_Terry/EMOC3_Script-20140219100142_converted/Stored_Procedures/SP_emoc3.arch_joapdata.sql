--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_JOAPDATA" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.joapdata
      SELECT joapdataid, (SELECT joapcode
                            FROM joap
                           WHERE joapid = joapdata.joapid) AS joap,
             enginedataid, moccontroller, sampledate, reason, hoursrequired,
             hoursremaining, notifiedby, expediternotified, joaplastupdated,
             scheduleid, SYSDATE AS archivedate
        FROM joapdata
       WHERE sampledate < archdate;

--Then delete
   DELETE      joapdata
         WHERE sampledate < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
