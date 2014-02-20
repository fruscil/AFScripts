--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_MAINTENANCEEVENTS" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.maintenanceevents
      SELECT maintenanceeventid, unit, eventid, pwc, equipid, cp, wuclcn, wd,
             priority, symbol, tssch, jobdur, discrepancy, wcenarrative,
             empid, entry781, defer, wcesymbol, jobfollow, partsrequired,
             aircraftid, entered, SYSDATE AS archivedate
        FROM maintenanceevents
       WHERE entered < archdate;

--Then delete
   DELETE      maintenanceevents
         WHERE entered < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
