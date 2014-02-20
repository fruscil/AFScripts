--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_MAIN" 
IS
  CURSOR moccur IS
    SELECT mocid FROM moc;

  mocrec moccur%ROWTYPE;

   archdate   DATE;
   dom        NUMBER(2);
BEGIN
  OPEN moccur;

    FETCH moccur
     INTO mocrec;

  WHILE moccur%FOUND LOOP
   SELECT archivedom
     INTO dom
     FROM emocconfig
 WHERE mocid = mocrec.mocid;

--Define the archive cutoff date. Cutoff defined as (1 previous month) and (Day of Month).
   archdate := (ADD_MONTHS (SYSDATE, -1)) - dom;
   arch_eventlog (archdate,mocrec.mocid);
   FETCH moccur
      INTO mocrec;
  END LOOP;

  CLOSE moccur;
  ARCH_WRITEUPS(archdate);
  arch_joapdata (archdate);
  arch_semedxdata (archdate);
  arch_shopdispatch (archdate);
  arch_enginerunlog (archdate);
  arch_MICAP(archdate);
  arch_history (archdate);
  arch_maintenanceevents (archdate);
  arch_interfacehistory (archdate);
  arch_interfaceitemshistory (archdate);
-- Must keep live schedule data for 90 days for deviations.
   archdate := (SYSDATE - 90);
   arch_schedulestatus (archdate);
   arch_scheduledeviations (archdate);
   arch_schedule (archdate);
--new
   arch_schedule (archdate);
   arch_AIRCRAFTEXTRACTTRX;
   ARCH_CAUSECODETRX;
   arch_DEVIATIONABORTTRX;
   arch_DEVIATIONCODETRX;
   arch_DEVIATIONCORRECTIONTRX;
   arch_DEVIATIONDELETETRX;
   arch_DEVIATIONSTARTSTOPTRX;
   ARCH_GEOLOCCODETRX;
   arch_GAINLOSSSTATUSUPDATETRX;
   arch_equipmentlocupdtrx;
   arch_INVENTORYSTATUSUPDATETRX;
   arch_LOCATIONCODETRX;
   arch_MAJORCOMMANDCODETRX;
   arch_MICAPTRX ;
   arch_MDSEQUIPMENTTRX;
   arch_OPERATIONALEVENTLOADTRX;
   arch_OPEREVENTDELETETRX;
   arch_OPEREVENTUPDATETRX;
   arch_OPEREVENTREPLACEMENTTRX;
   arch_ORGANIZATIONTRX;
   arch_STATUSCORRECTIONTRX;
   arch_STATUSUPDATETRX;
   arch_UTILIZATIONCODETRX;
   arch_UVRCHANGETRX;
   arch_WORKCENTERTRX;
   arch_WORKUNITCODETRX;
   arch_WHENDISCOVEREDCODETRX;
-- added mar 26 2007
   ARCH_USERALERT;

END arch_main;
 
 
 
 
 
 
 
 
@
