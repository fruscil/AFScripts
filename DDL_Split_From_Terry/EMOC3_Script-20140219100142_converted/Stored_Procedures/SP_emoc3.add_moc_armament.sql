--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_ARMAMENT" (
   station               armament.station%TYPE,
   aircraftmdsid         armament.aircraftmdsid%TYPE,
   ordnanceid            armament.ordnanceid%TYPE,
   mocidin     armament.mocid%TYPE,
   armamentid      OUT   armament.armamentid%TYPE
)
AS
BEGIN
   SELECT seq_armament.NEXTVAL
     INTO armamentid
     FROM DUAL;

   INSERT INTO armament
               (armamentid, station, aircraftmdsid, ordnanceid, mocid
               )
        VALUES (armamentid, station, aircraftmdsid, ordnanceid, mocidin
               );
END add_moc_armament;
 
 
 
 
 
 
 
 
@
