--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_SHOPDISPATCH" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.history
      SELECT historyid, eventdate, elementvalue, userid, aircraftid, ELEMENT,
             transactionid, SYSDATE AS archivedate
        FROM history
       WHERE eventdate < archdate;

--Then delete
   DELETE      history
         WHERE eventdate < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
