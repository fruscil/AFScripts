--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_PILOT" (
   pilotname          pilot.pilotname%TYPE,
   rankid             pilot.rankid%TYPE,
   squadronid         pilot.squadronid%TYPE,
   mocidin            pilot.mocid%TYPE,
   pilotid      OUT   pilot.pilotid%TYPE
)
AS
BEGIN
   SELECT seq_pilots.NEXTVAL
     INTO pilotid
     FROM DUAL;

   INSERT INTO pilot
               (pilotid, pilotname, rankid, squadronid, mocid
               )
        VALUES (pilotid, pilotname, rankid, squadronid, mocidin
               );
END add_moc_pilot;

 
 
 
 
 
 
 
 
@
