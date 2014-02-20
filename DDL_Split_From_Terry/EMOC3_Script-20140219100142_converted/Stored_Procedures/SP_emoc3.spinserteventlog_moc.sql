--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTEVENTLOG_MOC" (
   datetimeenteredin   VARCHAR,
   useridin            NUMBER,
   eventtypein         eventlog.eventtype%TYPE,
   eventnarrativein    eventlog.eventnarrative%TYPE,
   tailnumberin        eventlog.shorttailnumber%TYPE,
   mocidin             INTEGER
)
AS
   row_id   INTEGER;
BEGIN
   SELECT NVL (MAX (eventlog.logid), 0)
     INTO row_id
     FROM eventlog;

   INSERT INTO eventlog
               (logid,
                datetimeentered,
                userid, eventtype, eventnarrative, shorttailnumber, mocid
               )
        VALUES (row_id + 1,
                TO_DATE (datetimeenteredin, 'MM/DD/YYYY HH24:MI:SS'),
                useridin, eventtypein, eventnarrativein, tailnumberin, mocidin
               );
END spinserteventlog_moc;

 
 
 
 
 
 
 
 
@
