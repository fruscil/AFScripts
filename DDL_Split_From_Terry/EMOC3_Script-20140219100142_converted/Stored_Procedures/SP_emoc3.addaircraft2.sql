--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."ADDAIRCRAFT2" (
   aircraftyearin            aircraft.aircraftyear%TYPE,
   statuscodeidin            INTEGER,
   equipidin                 VARCHAR,
   locationidin              INTEGER,
   serialnumberin            VARCHAR,
   tailnumberin              VARCHAR,
   aircraftmdsidin           aircraft.aircraftmdsid%TYPE,
   conditioncodeidin         INTEGER,
   firesymbolidin            INTEGER,
   flightidin                aircraft.flightid%TYPE,
   fuelstatusidin            INTEGER,
   possessionidin            INTEGER,
   squadronidin              aircraft.squadronid%TYPE,
   aircraftidout       OUT   aircraft.aircraftid%TYPE
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
                flightid, conditioncodeid, firesymbolid,
                fuelstatusid, locationid, possessionid, statuscodeid
               )
        VALUES (aircraftidout, aircraftmdsidin, tailnumberin, tailnumberin,
                aircraftyearin, equipidin, serialnumberin, squadronidin,
                flightidin, conditioncodeidin, firesymbolidin,
                fuelstatusidin, locationidin, possessionidin, statuscodeidin
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
END addaircraft2;

 
 
 
 
 
 
 
 
@
