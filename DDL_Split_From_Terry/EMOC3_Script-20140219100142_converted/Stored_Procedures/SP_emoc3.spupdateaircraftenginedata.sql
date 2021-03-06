--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEAIRCRAFTENGINEDATA" (
AIRCRAFTIDIN AIRCRAFTENGINEDATA.AIRCRAFTID%TYPE,
AIRCRAFTMDSIDIN AIRCRAFTMDS.AIRCRAFTMDSID%TYPE
)
AS
NUMENGINES INTEGER;
ROW_ID INTEGER;
x INTEGER := 1;
BEGIN

DELETE FROM AIRCRAFTENGINEDATA
WHERE AIRCRAFTID = AIRCRAFTIDIN;

SELECT NUMBEROFENGINES INTO NUMENGINES
FROM AIRCRAFTMDS
WHERE AIRCRAFTMDSID = AIRCRAFTMDSIDIN;

while x <= NUMENGINES
loop
 	 SELECT NVL(MAX(AIRCRAFTENGINEDATA.ENGINEDATAID), 0)
 	 INTO ROW_ID
	 FROM AIRCRAFTENGINEDATA;

	 INSERT INTO AIRCRAFTENGINEDATA (ENGINEDATAID, AIRCRAFTID, ENGINENUMBER)
	 VALUES (ROW_ID + 1, AIRCRAFTIDIN, x);
	 x := x + 1;
end loop;


END SPUPDATEAIRCRAFTENGINEDATA;

 
 
 
 
 
 
 
 
@
