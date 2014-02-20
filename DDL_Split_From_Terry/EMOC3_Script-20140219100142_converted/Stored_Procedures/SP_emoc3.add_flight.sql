--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_FLIGHT" (
   flightnamein           flights.flightname%TYPE,
   squadronidin           flights.squadronid%TYPE,
   workcenteridin         flights.workcenterid%TYPE,
   lastupdatebyin         flights.lastupdateby%TYPE,
   flightid         OUT   flights.flightid%TYPE
)
AS
BEGIN
   SELECT seq_flights.NEXTVAL
     INTO flightid
     FROM DUAL;

   INSERT INTO flights
               (flightid, flightname, squadronid, workcenterid,
                lastupdate, lastupdateby
               )
        VALUES (flightid, flightnamein, squadronidin, workcenteridin,
                SYSDATE, lastupdatebyin
               );
END add_flight;

 
 
 
 
 
 
 
 
@
