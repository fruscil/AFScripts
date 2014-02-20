--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEAIRCRAFTCD" (
   aircraftidin     aircraft.aircraftid%TYPE,
   customdataidin   customdata.customdataid%TYPE,
   datavaluein      aircraftcustomdata.datavalue%TYPE,
   lastupdatebyin   users.userid%TYPE
)
AS
   reccount   INTEGER;
   cdlabel    VARCHAR (50);
   cdtype     VARCHAR (10);
   cdvalue    VARCHAR (50);
BEGIN
   SELECT COUNT (*)
     INTO reccount
     FROM aircraftcustomdata
    WHERE customdataid = customdataidin AND aircraftid = aircraftidin;

   IF (reccount > 0)
   THEN
      UPDATE aircraftcustomdata
         SET datavalue = UPPER (datavaluein),
             lastupdated = SYSDATE,
             lastupdateby = lastupdatebyin
       WHERE aircraftid = aircraftidin AND customdataid = customdataidin;
   ELSE
      INSERT INTO aircraftcustomdata
                  (aircraftid, customdataid, datavalue,
                   lastupdated, lastupdateby
                  )
           VALUES (aircraftidin, customdataidin, UPPER (datavaluein),
                   SYSDATE, lastupdatebyin
                  );
   END IF;

   SELECT customdatalabel, customdatatype
     INTO cdlabel, cdtype
     FROM customdata
    WHERE customdataid = customdataidin;

   IF (LENGTH (datavaluein) > 0)
   THEN
      IF (cdtype = 'String')
      THEN
         add_customdatalistitem (customdataidin, UPPER (datavaluein));
      END IF;

      spupdateaircrafthistory (aircraftidin,
                               cdlabel,
                               UPPER (datavaluein),
                               TO_CHAR (SYSDATE, 'MM/DD/YYYY HH24:MI:SS'),
                               NULL,
                               lastupdatebyin
                              );
   END IF;
END spupdateaircraftcd;

 
 
 
 
 
 
 
 
@
