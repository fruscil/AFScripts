--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_ARMAMENT" (
   station               armament.station%TYPE,
   aircraftmdsid         armament.aircraftmdsid%TYPE,
   ordnanceid            armament.ordnanceid%TYPE,
   armamentid      OUT   armament.armamentid%TYPE
)
AS
BEGIN
   SELECT seq_armament.NEXTVAL
     INTO armamentid
     FROM DUAL;

   INSERT INTO armament
               (armamentid, station, aircraftmdsid, ordnanceid
               )
        VALUES (armamentid, station, aircraftmdsid, ordnanceid
               );
END add_armament;

 
 
 
 
 
 
 
 
@
