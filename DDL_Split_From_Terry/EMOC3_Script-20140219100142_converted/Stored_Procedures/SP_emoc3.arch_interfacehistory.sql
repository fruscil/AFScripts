--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_INTERFACEHISTORY" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.interfacehistory
      SELECT statuschangetime, statuschangeby, currentstatus,
             interfacecontrolid, currentenabled, SYSDATE AS archivedate
        FROM interfacehistory
       WHERE statuschangetime < archdate;

--Then delete
   DELETE      interfacehistory
         WHERE statuschangetime < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
