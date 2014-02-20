--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CREWCHIEF" (
   crewchiefin                crewchiefs.crewchief%TYPE,
   defaultcrewchiefin         crewchiefs.defaultcrewchief%TYPE,
   picturein                  crewchiefs.picture%TYPE,
   rankidin                   crewchiefs.rankid%TYPE,
   crewchiefid          OUT   crewchiefs.crewchiefid%TYPE
)
AS
BEGIN
   SELECT seq_crewchiefs.NEXTVAL
     INTO crewchiefid
     FROM DUAL;

   INSERT INTO crewchiefs
               (crewchiefid, crewchief, defaultcrewchief, picture,
                rankid
               )
        VALUES (crewchiefid, crewchiefin, defaultcrewchiefin, picturein,
                rankidin
               );
END add_crewchief;

 
 
 
 
 
 
 
 
@
