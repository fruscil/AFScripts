--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTSTATUSUPDATE" (
   unitidin                      aircraftstatusupdate.unitid%TYPE,
   equipmentidin                 aircraftstatusupdate.equipmentid%TYPE,
   maintenancestatuscodein       aircraftstatusupdate.maintenancestatuscode%TYPE,
   conditionstatuscodein         aircraftstatusupdate.conditionstatuscode%TYPE,
   statusstartdatein             aircraftstatusupdate.statusstartdate%TYPE,
   statusstarttimein             aircraftstatusupdate.statusstarttime%TYPE,
   workunitcodein                aircraftstatusupdate.workunitcode%TYPE,
   openstatuseventin             aircraftstatusupdate.openstatusevent%TYPE,
   estimatedtimeincommissionin   aircraftstatusupdate.estimatedtimeincommission%TYPE,
   partsplusin                   aircraftstatusupdate.partsplus%TYPE,
   statusnarrativein             aircraftstatusupdate.statusnarrative%TYPE,
   configurationin               aircraftstatusupdate.configuration%TYPE,
   priorityin                    aircraftstatusupdate.priority%TYPE,
   armin                         aircraftstatusupdate.arm%TYPE,
   multipleconfigidin            aircraftstatusupdate.multipleconfigid%TYPE,
   localoptionin                 aircraftstatusupdate.localoption%TYPE,
   enteredbyin                   aircraftstatusupdate.enteredby%TYPE,
   aircraftidin                  aircraftstatusupdate.aircraftid%TYPE
)
AS
   statusupdateidin   INTEGER;
   mdsid              INTEGER;
BEGIN
   SELECT seq_statusupdate.NEXTVAL
     INTO statusupdateidin
     FROM DUAL;

   INSERT INTO aircraftstatusupdate
               (statusupdateid, unitid, equipmentid,
                maintenancestatuscode, conditionstatuscode,
                statusstartdate, statusstarttime, workunitcode,
                openstatusevent, estimatedtimeincommission, partsplus,
                statusnarrative, configuration, priority, arm,
                multipleconfigid, localoption, enteredby, aircraftid
               )
        VALUES (statusupdateidin, unitidin, equipmentidin,
                maintenancestatuscodein, conditionstatuscodein,
                statusstartdatein, statusstarttimein, workunitcodein,
                openstatuseventin, estimatedtimeincommissionin, partsplusin,
                statusnarrativein, configurationin, priorityin, armin,
                multipleconfigidin, localoptionin, enteredbyin, aircraftidin
               );

   IF (LENGTH (workunitcodein) > 0 AND LENGTH (openstatuseventin) > 0)
   THEN
      SELECT aircraftmdsid
        INTO mdsid
        FROM aircraft
       WHERE aircraftid = aircraftidin;
   END IF;
END spinsertstatusupdate;
 
 
 
 
 
 
 
 
@
