--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_SCHEDULEDEVIATIONS" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.scheduledeviations
      SELECT   scheduledeviationid, scheduledeviations.scheduleid,
               deviationcode, cc.causecode, cc2.causecode newcausecode,
               scheduledeviations.sortienum,
               scheduledeviations.sortiedate,
               scheduledeviations.sortiemod, actionoptions, chargeable,
               startdatetime, stopdatetime, maintenanceeventid,
               remarks.remarksid deviationsremarks,
               scheduledeviations.interfacelogid,
               SYSDATE AS archivedate
          FROM scheduledeviations JOIN schedule ON schedule.scheduleid =
                                                                 scheduledeviations.scheduleid
               LEFT JOIN deviationcodes ON deviationcodes.deviationcodeid =
                                                   scheduledeviations.deviationcodeid
               LEFT JOIN causecodes cc ON cc.causecodeid =
                                                  scheduledeviations.causecodeid
               LEFT JOIN causecodes cc2 ON cc2.causecodeid =
                                                   scheduledeviations.newcausecode
               LEFT JOIN remarks ON remarks.remarksid =
                                            scheduledeviations.deviationsremarks
         WHERE schedule.schedday < archdate
      ORDER BY scheduledeviations.scheduledeviationid;

--Then delete
   DELETE      scheduledeviations
         WHERE startdatetime < archdate;

--Commit only if both successful
   COMMIT;
END;

 
 
 
 
 
 
 
 
@
