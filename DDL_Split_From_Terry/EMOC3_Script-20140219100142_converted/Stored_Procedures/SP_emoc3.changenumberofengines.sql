--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CHANGENUMBEROFENGINES" (
   aircraftidin   aircraft.aircraftid%TYPE,
   currnoe        INTEGER,
   newnoe         INTEGER
)
AS
   CURSOR enginecur
   IS
      SELECT enginedataid, enginenumber
        FROM aircraftenginedata
       WHERE aircraftid = aircraftidin;

   enginerec   enginecur%ROWTYPE;
   loops       INTEGER             := 0;
   newrowid    INTEGER             := 0;
   enginecnt   INTEGER             := 0;
BEGIN
   SELECT COUNT (*)
     INTO enginecnt
     FROM aircraftenginedata
    WHERE aircraftid = aircraftidin;

   IF (enginecnt = 0)
   THEN
      loops := 0;

      WHILE loops < currnoe
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

   IF (currnoe <> newnoe)
   THEN
      BEGIN
         IF (currnoe > newnoe)
         THEN
            BEGIN
               OPEN enginecur;

               FETCH enginecur
                INTO enginerec;

               WHILE enginecur%FOUND
               LOOP
                  IF (enginerec.enginenumber > newnoe)
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

         IF (currnoe < newnoe)
         THEN
            loops := currnoe;

            WHILE loops < newnoe
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
      END;
   END IF;

   COMMIT;
END changenumberofengines;
 
 
 
 
 
 
 
 
@
