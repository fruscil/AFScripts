--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEMEVENT" (
   unitin                        maintenanceevents.unit%TYPE,
   eventidin                     maintenanceevents.eventid%TYPE,
   pwcin                         maintenanceevents.pwc%TYPE,
   equipidin                     maintenanceevents.equipid%TYPE,
   cpin                          maintenanceevents.cp%TYPE,
   wuclcnin                      maintenanceevents.wuclcn%TYPE,
   wdin                          maintenanceevents.wd%TYPE,
   priorityin                    maintenanceevents.priority%TYPE,
   symbolin                      maintenanceevents.symbol%TYPE,
   tsschin                       maintenanceevents.tssch%TYPE,
   jobdurin                      maintenanceevents.jobdur%TYPE,
   discrepancyin                 maintenanceevents.discrepancy%TYPE,
   wcenarrativein                maintenanceevents.wcenarrative%TYPE,
   empidin                       maintenanceevents.empid%TYPE,
   entry781in                    maintenanceevents.entry781%TYPE,
   deferin                       maintenanceevents.defer%TYPE,
   wcesymbolin                   maintenanceevents.wcesymbol%TYPE,
   jobfollowin                   maintenanceevents.jobfollow%TYPE,
   partsrequiredin               maintenanceevents.partsrequired%TYPE,
   aircraftidin                  maintenanceevents.aircraftid%TYPE,
   maintenanceeventidout   OUT   maintenanceevents.maintenanceeventid%TYPE
)
AS
BEGIN
   SELECT seq_maintenanceevent.NEXTVAL
     INTO maintenanceeventidout
     FROM DUAL;

   INSERT INTO maintenanceevents
               (maintenanceeventid, unit, eventid, pwc, equipid,
                cp, wuclcn, wd, priority, symbol, tssch,
                jobdur, discrepancy, wcenarrative, empid, entry781,
                defer, wcesymbol, jobfollow, partsrequired,
                aircraftid
               )
        VALUES (maintenanceeventidout, unitin, eventidin, pwcin, equipidin,
                cpin, wuclcnin, wdin, priorityin, symbolin, tsschin,
                jobdurin, discrepancyin, wcenarrativein, empidin, entry781in,
                deferin, wcesymbolin, jobfollowin, partsrequiredin,
                aircraftidin
               );
END spupdatemevent;
 
 
 
 
 
 
 
 
@
