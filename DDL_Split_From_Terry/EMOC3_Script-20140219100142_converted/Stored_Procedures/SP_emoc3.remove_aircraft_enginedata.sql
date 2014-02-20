--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_ENGINEDATA" (
   aircraftidin   aircraftenginedata.aircraftid%TYPE
)
AS
   CURSOR enginecur
   IS
      SELECT enginedataid, enginenumber, aircraftid
        FROM aircraftenginedata
       WHERE aircraftid = aircraftidin;

   enginerec   enginecur%ROWTYPE;
BEGIN
   OPEN enginecur;

   FETCH enginecur
    INTO enginerec;

   WHILE enginecur%FOUND
   LOOP
      INSERT INTO emocaux.aircraftenginedata
                  (enginedataid, aircraftid,
                   enginenumber
                  )
           VALUES (enginerec.enginedataid, enginerec.aircraftid,
                   enginerec.enginenumber
                  );

      /* get semedx data for this engine */
      INSERT INTO emocaux.semedxdata
         SELECT semdataid, enginedataid,
                (SELECT semedx
                   FROM semedx
                  WHERE semedxid = semedxdata.semedxid) AS semedx,
                moccontroller, sampledate, reason, hoursrequired,
                hoursremaining, notifiedby, expediternotified,
                semedxlastupdated, scheduleid, SYSDATE AS archivedate
           FROM semedxdata
          WHERE enginedataid = enginerec.enginedataid;

      DELETE FROM semedxdata
            WHERE enginedataid = enginerec.enginedataid;

      /* get joap data for this engine */
      INSERT INTO emocaux.joapdata
         SELECT joapdataid, (SELECT joapcode
                               FROM joap
                              WHERE joapid = joapdata.joapid) AS joap,
                enginedataid, moccontroller, sampledate, reason,
                hoursrequired, hoursremaining, notifiedby, expediternotified,
                joaplastupdated, scheduleid, SYSDATE AS archivedate
           FROM joapdata
          WHERE enginedataid = enginerec.enginedataid;

      DELETE FROM joapdata
            WHERE enginedataid = enginerec.enginedataid;

      /* get enginerunlog data for this engine */
      INSERT INTO emocaux.enginerunlog
         SELECT enginelogid, moccontroller, runperson, employeenumber,
                rundate, qualchecked, standbyfiretruck, reason, idlestart,
                idlestop, milstart, milstop, abstart, abstop, misupdated,
                spapproval, towerrunclearance, enginedataid, lastupdate,
                lastupdateby, SYSDATE AS archivedate
           FROM enginerunlog
          WHERE enginedataid = enginerec.enginedataid;

      DELETE FROM enginerunlog
            WHERE enginedataid = enginerec.enginedataid;

      FETCH enginecur
       INTO enginerec;
   END LOOP;

   CLOSE enginecur;

   DELETE FROM aircraftenginedata
         WHERE aircraftid = aircraftidin;
END remove_aircraft_enginedata;

 
 
 
 
 
 
 
 
@
