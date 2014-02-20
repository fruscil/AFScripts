--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPINSERTJOAP" (
   enginedataidin        joapdata.enginedataid%TYPE,
   scheduleidin          joapdata.scheduleid%TYPE,
   moccontrollerin       joapdata.moccontroller%TYPE,
   sampledatein          VARCHAR,
   joapidin              joapdata.joapid%TYPE,
   reasonin              joapdata.reason%TYPE,
   hoursrequiredin       joapdata.hoursrequired%TYPE,
   hoursremainingin      joapdata.hoursremaining%TYPE,
   notifiedbyin          joapdata.notifiedby%TYPE,
   expediternotifiedin   joapdata.expediternotified%TYPE,
   joaplastupdatedin     VARCHAR,
   enginenumberin        INTEGER,
   aircraftidin          INTEGER
)
AS
   row_id      INTEGER;
   engdataid   INTEGER;
BEGIN
   engdataid := NULL;
   SELECT enginedataid
     INTO engdataid
     FROM emoc3.aircraftenginedata
    WHERE ((aircraftid = aircraftidin) AND (enginenumber = enginenumberin));

   IF (engdataid IS NULL) THEN
      SELECT NVL(MAX(emoc3.aircraftenginedata.enginedataid), 0)
        INTO row_id
        FROM emoc3.aircraftenginedata;

      INSERT INTO emoc3.aircraftenginedata (enginedataid,
	  		 aircraftid, enginenumber) VALUES (row_id+1, aircraftidin, enginenumberin);

      engdataid := row_id + 1;
   END IF;

   SELECT NVL (MAX (emoc3.joapdata.joapdataid), 0)
     INTO row_id
     FROM emoc3.joapdata;

   INSERT INTO EMOC3.joapdata
               (joapdataid, joapid, enginedataid, moccontroller,
                sampledate, reason,
                hoursrequired, hoursremaining, notifiedby,
                expediternotified,
                joaplastupdated,
                scheduleid
               )
        VALUES (row_id + 1, joapidin, engdataid, moccontrollerin,
                TO_DATE (sampledatein, 'MM/DD/YYYY HH24:MI:SS'), reasonin,
                hoursrequiredin, hoursremainingin, notifiedbyin,
                expediternotifiedin,
                TO_DATE (joaplastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
                scheduleidin
               );
END SPINSERTJOAP;

 
 
 
 
 
 
 
 
@
