--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_EVENTLOG" (archdate DATE, mocidin moc.mocid%TYPE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.eventlog
      SELECT logid, datetimeentered, eventtype, eventnarrative,
             shorttailnumber, userid, SYSDATE AS archivedate, mocid
        FROM eventlog
       WHERE datetimeentered < archdate
	     AND mocid = mocidin;

--Then delete
   DELETE      eventlog
         WHERE datetimeentered < archdate
		   AND mocid = mocidin;

--Commit only if both successful
   COMMIT;
END;
 
 
 
 
 
 
 
 
@
