--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CLEAR_AIRCRAFT_JOAPDATA" (
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
      UPDATE joapdata
         SET datecleared = SYSDATE
       WHERE enginedataid = enginerec.enginedataid;

	  UPDATE semedxdata
         SET datecleared = SYSDATE
       WHERE enginedataid = enginerec.enginedataid;

      FETCH enginecur
       INTO enginerec;
   END LOOP;

   CLOSE enginecur;
END clear_aircraft_joapdata;
 
 
 
 
 
 
 
 
@
