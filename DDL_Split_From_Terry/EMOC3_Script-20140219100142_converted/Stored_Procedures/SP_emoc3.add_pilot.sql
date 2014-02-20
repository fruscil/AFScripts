--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_PILOT" (
   pilotname          pilot.pilotname%TYPE,
   rankid             pilot.rankid%TYPE,
   squadronid         pilot.squadronid%TYPE,
   pilotid      OUT   pilot.pilotid%TYPE
)
AS
BEGIN
   SELECT seq_pilots.NEXTVAL
     INTO pilotid
     FROM DUAL;

   INSERT INTO pilot
               (pilotid, pilotname, rankid, squadronid
               )
        VALUES (pilotid, pilotname, rankid, squadronid
               );
END add_pilot;

 
 
 
 
 
 
 
 
@
