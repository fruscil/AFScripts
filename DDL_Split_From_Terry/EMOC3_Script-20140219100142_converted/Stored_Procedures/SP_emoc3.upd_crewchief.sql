--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_CREWCHIEF" (
   crewchiefin          crewchiefs.crewchief%TYPE,
   defaultcrewchiefin   crewchiefs.defaultcrewchief%TYPE,
   picturein            crewchiefs.picture%TYPE,
   rankidin             crewchiefs.rankid%TYPE,
   crewchiefidin        crewchiefs.crewchiefid%TYPE
)
AS
   counter1     INTEGER;
   defaultval   INTEGER;
BEGIN
   defaultval := defaultcrewchiefin;

   IF defaultval = 0
   THEN
      SELECT COUNT (*)
        INTO counter1
        FROM crewchiefs
       WHERE defaultcrewchief = 1 AND crewchiefid != crewchiefidin;

      IF counter1 = 0
      THEN
         defaultval := 1;
      END IF;
   END IF;

   UPDATE crewchiefs
      SET crewchief = crewchiefin,
          defaultcrewchief = defaultval,
          picture = picturein,
          rankid = rankidin
    WHERE crewchiefid = crewchiefidin;
END upd_crewchief;

 
 
 
 
 
 
 
 
@
