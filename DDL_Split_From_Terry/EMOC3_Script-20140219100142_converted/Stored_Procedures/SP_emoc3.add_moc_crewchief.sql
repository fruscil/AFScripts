--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_CREWCHIEF" (
   crewchiefin                crewchiefs.crewchief%TYPE,
   defaultcrewchiefin         crewchiefs.defaultcrewchief%TYPE,
   picturein                  crewchiefs.picture%TYPE,
   rankidin                   crewchiefs.rankid%TYPE,
   mocidin                    crewchiefs.mocid%TYPE,
   crewchiefid          OUT   crewchiefs.crewchiefid%TYPE
)
AS
BEGIN
   SELECT seq_crewchiefs.NEXTVAL
     INTO crewchiefid
     FROM DUAL;

   INSERT INTO crewchiefs
               (crewchiefid, crewchief, defaultcrewchief, picture,
                rankid, mocid
               )
        VALUES (crewchiefid, crewchiefin, defaultcrewchiefin, picturein,
                rankidin, mocidin
               );
END add_moc_crewchief;

 
 
 
 
 
 
 
 
@
