--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_EVENTLOG" (
   shorttailin   eventlog.shorttailnumber%TYPE
)
AS
BEGIN
   INSERT INTO emocaux.eventlog
      SELECT logid, datetimeentered, eventtype, eventnarrative,
             shorttailnumber, userid, SYSDATE AS archivedate, mocid
        FROM eventlog
       WHERE shorttailnumber = shorttailin;

   DELETE FROM eventlog
         WHERE shorttailnumber = shorttailin;
END remove_aircraft_eventlog;
 
 
 
 
 
 
 
 
@
