--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_INTERFACEITEMSHISTORY" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.interfaceitemshistory
      SELECT statuschangetime, statuschangeby, currentstatus,
             interfacecontrolid, preenabled, interfaceitemid,
             SYSDATE AS archivedate
        FROM interfaceitemshistory
       WHERE statuschangetime < archdate;

--Then delete
   DELETE      interfaceitemshistory
         WHERE statuschangetime < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
