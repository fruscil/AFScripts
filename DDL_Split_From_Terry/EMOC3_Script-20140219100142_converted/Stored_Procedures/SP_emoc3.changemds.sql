--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CHANGEMDS" (
   aircraftidin     aircraft.aircraftid%TYPE,
   currentmdsidin   INTEGER,
   newmdsidin       INTEGER
)
AS
   CURSOR enginecur
   IS
      SELECT enginedataid, enginenumber
        FROM aircraftenginedata
       WHERE aircraftid = aircraftidin;

   enginerec   enginecur%ROWTYPE;
   engines1    INTEGER             := 0;
   engines2    INTEGER             := 0;
   stations1   INTEGER             := 0;
   stations2   INTEGER             := 0;
   loops       INTEGER             := 0;
   newrowid    INTEGER             := 0;
   enginecnt   INTEGER             := 0;
BEGIN
   SELECT numberofengines, numberofstations
     INTO engines1, stations1
     FROM aircraftmds
    WHERE aircraftmdsid = currentmdsidin;

   SELECT numberofengines, numberofstations
     INTO engines2, stations2
     FROM aircraftmds
    WHERE aircraftmdsid = newmdsidin;

   SELECT COUNT (*)
     INTO enginecnt
     FROM aircraftenginedata
    WHERE aircraftid = aircraftidin;

   IF (enginecnt = 0)
   THEN
      loops := 0;

      WHILE loops < engines1
      LOOP
         SELECT NVL (MAX (aircraftenginedata.enginedataid), 0)
           INTO newrowid
           FROM aircraftenginedata;

         INSERT INTO aircraftenginedata
                     (enginedataid, aircraftid, enginenumber
                     )
              VALUES (newrowid + 1, aircraftidin, loops + 1
                     );

         loops := loops + 1;
         COMMIT;
      END LOOP;
   END IF;

   IF (engines1 <> engines2)
   THEN
      BEGIN
         IF (engines1 > engines2)
         THEN
            BEGIN
               OPEN enginecur;

               FETCH enginecur
                INTO enginerec;

               WHILE enginecur%FOUND
               LOOP
                  IF (enginerec.enginenumber > engines2)
                  THEN
                     BEGIN
                        DELETE FROM semedxdata
                              WHERE enginedataid = enginerec.enginedataid;

                        DELETE FROM joapdata
                              WHERE enginedataid = enginerec.enginedataid;

                        DELETE FROM aircraftenginedata
                              WHERE enginedataid = enginerec.enginedataid;
                     END;
                  END IF;

                  FETCH enginecur
                   INTO enginerec;
               END LOOP;

               CLOSE enginecur;
            END;
         END IF;

         IF (engines1 < engines2)
         THEN
            loops := engines1;

            WHILE loops < engines2
            LOOP
               SELECT NVL (MAX (aircraftenginedata.enginedataid), 0)
                 INTO newrowid
                 FROM aircraftenginedata;

               INSERT INTO aircraftenginedata
                           (enginedataid, aircraftid, enginenumber
                           )
                    VALUES (newrowid + 1, aircraftidin, loops + 1
                           );

               loops := loops + 1;
            END LOOP;
         END IF;
      END;
   END IF;

   IF (currentmdsidin <> newmdsidin)
   THEN
      BEGIN
         DELETE FROM weaponsload
               WHERE aircraftid = aircraftidin;
      END;
   END IF;

   UPDATE aircraft
      SET aircraftwucid = NULL
    WHERE aircraftid = aircraftidin;

   UPDATE writeups
      SET wucid = NULL
    WHERE aircraftid = aircraftidin AND corrected = 0;

   DELETE FROM weaponsload
         WHERE aircraftid = aircraftidin AND station > stations2;
END changemds;
 
 
 
 
 
 
 
 
@
