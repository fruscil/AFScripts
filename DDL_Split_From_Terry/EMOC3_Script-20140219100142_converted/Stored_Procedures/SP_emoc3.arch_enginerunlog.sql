--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_ENGINERUNLOG" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.enginerunlog
      SELECT enginelogid, moccontroller, runperson, employeenumber, rundate,
             qualchecked, standbyfiretruck, reason, idlestart, idlestop,
             milstart, milstop, abstart, abstop, misupdated, spapproval,
             towerrunclearance, enginedataid, lastupdate, lastupdateby,
             SYSDATE AS archivedate
        FROM enginerunlog
       WHERE lastupdate < archdate;

--Then delete
   DELETE      enginerunlog
         WHERE lastupdate < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
