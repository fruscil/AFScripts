--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADDAIRCRAFTFROMADMIN" (
   aircraftyearin                   aircraft.aircraftyear%TYPE,
   armin                            INTEGER,
   assignmentstatuscodein           CHAR,
   conditionstatusin                VARCHAR,
   localconfigidin                  VARCHAR,
   crewchiefin                      VARCHAR,
   equipidin                        VARCHAR,
   eticin                           VARCHAR,
   eticdatetimein                   DATE,
   lastflydatein                    DATE,
   locationin                       VARCHAR,
   localoptionin                    VARCHAR,
   maintenancestatuscodein          VARCHAR,
   commandcodein                    VARCHAR,
   mdsblocknumberin                 VARCHAR,
   missiondesignseriesin            VARCHAR,
   multiconfigidin                  VARCHAR,
   owningworkcenterin               VARCHAR,
   possessioncodein                 VARCHAR,
   priorityin                       INTEGER,
   serialnumberin                   VARCHAR,
   shorttailnumberin                VARCHAR,
   statcodetimein                   DATE,
   statusdatein                     VARCHAR,
   statuseticin                     VARCHAR,
   statusjobcontrolnumberin         VARCHAR,
   statusnarrativein                VARCHAR,
   statustimein                     VARCHAR,
   statusworkunitcodein             VARCHAR,
   tailnumberin                     VARCHAR,
   unitidin                         VARCHAR,
   aircraftmdsidin                  aircraft.aircraftmdsid%TYPE,
   aircraftwucidin                  INTEGER,
   conditioncodeidin                INTEGER,
   crewchiefidin                    INTEGER,
   firesymbolidin                   INTEGER,
   flightidin                       aircraft.flightid%TYPE,
   fuelstatusidin                   INTEGER,
   locationidin                     INTEGER,
   possessionidin                   INTEGER,
   staloccodeidin                   INTEGER,
   squadronidin                     aircraft.squadronid%TYPE,
   mocidin                          aircraft.mocid%TYPE,
   statuscodeidin					aircraft.STATUSCODEID%TYPE,
   aircraftidout              OUT   aircraft.aircraftid%TYPE
)
AS
   stations   INTEGER := 0;
   engines    INTEGER := 0;
   newrowid   INTEGER;
   loops      INTEGER := 0;
BEGIN
   SELECT seq_aircraft.NEXTVAL
     INTO aircraftidout
     FROM DUAL;

   INSERT INTO aircraft
               (aircraftid, aircraftmdsid, tailnumber, shorttailnumber,
                aircraftyear, misequipid, serialnumber, squadronid,
                flightid, aircraftwucid, conditioncodeid,
                crewchiefid, firesymbolid, fuelstatusid, locationid,
                possessionid, staloccodeid, etic, mocid, statuscodeid
               )
        VALUES (aircraftidout, aircraftmdsidin, tailnumberin, tailnumberin,
                aircraftyearin, equipidin, serialnumberin, squadronidin,
                flightidin, aircraftwucidin, conditioncodeidin,
                crewchiefidin, firesymbolidin, fuelstatusidin, locationidin,
                possessionidin, staloccodeidin, eticin, mocidin, statuscodeidin
               );

   SELECT numberofengines, numberofstations
     INTO engines, stations
     FROM aircraftmds
    WHERE aircraftmdsid = aircraftmdsidin;

   IF engines > 0
   THEN
      BEGIN
         loops := 0;

         WHILE loops < engines
         LOOP
            SELECT NVL (MAX (aircraftenginedata.enginedataid), 0)
              INTO newrowid
              FROM aircraftenginedata;

            INSERT INTO aircraftenginedata
                        (enginedataid, aircraftid, enginenumber
                        )
                 VALUES (newrowid + 1, aircraftidout, loops + 1
                        );

            loops := loops + 1;
         END LOOP;
      END;
   END IF;
/*************************************************
if stations > 0 then
   begin
         loops := 0;
         while loops < stations loop
            SELECT NVL(MAX(weaponsload.loadid), 0)
         INTO newrowid
         FROM weaponsload;
         insert into weaponsload (loadid,
              aircraftid, station, weaponsnumber) values (newrowid+1,
              AIRCRAFTIDOUT, loops+1, 0);
         loops := loops + 1;
      end loop;
   end;

end if;

*/
END addaircraftfromadmin;
 
 
 
 
 
 
 
 
@
