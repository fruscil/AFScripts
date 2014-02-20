--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADDSTATUSUPDATEREC" (
   unitidin                        VARCHAR2,
   equipmentidin                   VARCHAR2,
   maintstatuscodein               VARCHAR2,
   condstatuscodein                VARCHAR2,
   statusstartdatein               VARCHAR2,
   statusstarttimein               VARCHAR2,
   workunitcodein                  VARCHAR2,
   jcnin                           VARCHAR2,
   eticin                          VARCHAR2,
   partsplusin                     VARCHAR2,
   statusnarrativein               VARCHAR2,
   configurationin                 VARCHAR2,
   priorityin                      VARCHAR2,
   armin                           VARCHAR2,
   multifigidin                    VARCHAR2,
   localoptionin                   VARCHAR2,
   enteredbyin                     NUMBER,
   aircraftidin                    NUMBER,
   updateid                  OUT   NUMBER,
   prevconditioncodeidin           NUMBER,
   prevstartdatein                 VARCHAR2,
   prevstarttimein                 VARCHAR2,
   prevwucin                       VARCHAR2,
   prevwucidin                     NUMBER,
   prevosein                       VARCHAR2,
   preveticin                      VARCHAR2,
   prevpartsplusin                 VARCHAR2,
   prevnarrativein                 VARCHAR2,
   prevmaintenancestatusin         VARCHAR2,
   prevconditionstatusin           VARCHAR2,
   prevconfigin                    VARCHAR2,
   prevpriorityin                  VARCHAR2,
   prevarmin                       VARCHAR2,
   prevmultifigidin                VARCHAR2,
   prevlocaloptionin               VARCHAR2,
   locationin                      VARCHAR2,
   prevlocationin                  VARCHAR2,
   locationidin                    NUMBER,
   prevlocationidin                NUMBER,
   geoloccodein                    VARCHAR2,
   prevgeoloccodein                VARCHAR2,
   mocidin                         NUMBER
)
AS
   username   VARCHAR2(50);
   mdsidin    INTEGER;
   wucidin    INTEGER;
BEGIN
   SELECT seq_statusupdate.NEXTVAL
     INTO updateid
     FROM DUAL;

   SELECT users.fullname
     INTO username
     FROM users
    WHERE userid = enteredbyin;

   INSERT INTO aircraftstatusupdate
               (statusupdateid, unitid, equipmentid, maintenancestatuscode,
                conditionstatuscode, statusstartdate, statusstarttime,
                workunitcode, openstatusevent, estimatedtimeincommission,
                partsplus, statusnarrative, configuration, priority,
                arm, multipleconfigid, localoption, enteredby, aircraftid,
                prevconditioncodeid, prevstartdate, prevstarttime,
                prevwuc, prevose, prevetic, prevpartsplus,
                prevnarrative, prevmaintenancestatus,
                prevconditionstatus, prevconfig, prevpriority,
                prevarm, prevmultifigid, prevlocaloption, LOCATION,
                prevlocation, locationid, prevlocationid, geoloccode,
                prevgeoloccode,prevwucid
               )
        VALUES (updateid, unitidin, equipmentidin, maintstatuscodein,
                condstatuscodein, statusstartdatein, statusstarttimein,
                workunitcodein, jcnin, eticin,
                partsplusin, statusnarrativein, configurationin, priorityin,
                armin, multifigidin, localoptionin, username, aircraftidin,
                prevconditioncodeidin, prevstartdatein, prevstarttimein,
                prevwucin, prevosein, preveticin, prevpartsplusin,
                prevnarrativein, prevmaintenancestatusin,
                prevconditionstatusin, prevconfigin, prevpriorityin,
                prevarmin, prevmultifigidin, prevlocaloptionin, locationin,
                prevlocationin, locationidin, prevlocationidin, geoloccodein,
                prevgeoloccodein, prevwucidin
               );
/*
   IF (LENGTH (workunitcodein) > 0)
   THEN
      SELECT aircraftmdsid
        INTO mdsidin
        FROM aircraft
       WHERE aircraftid = aircraftidin;

      spinsertworkunitcode (workunitcodein,
                            '',
                            TO_CHAR (SYSDATE, 'MM/DD/YYYY HH24:MI:SS'),
                            NULL,
                            mdsidin,
                            TO_CHAR (SYSDATE, 'MM/DD/YYYY HH24:MI:SS'),
                            enteredbyin,
                            mocidin
                           );

      SELECT wucid
        INTO wucidin
        FROM wuc
       WHERE wuccode = workunitcodein AND aircraftmdsid = mdsidin;

      IF (wucidin IS NOT NULL)
      THEN
         UPDATE aircraft
            SET aircraftwucid = wucidin
          WHERE aircraftid = aircraftidin;
      END IF;
   END IF;
*/
END addstatusupdaterec;
 
 
 
 
 
 
 
 
@
