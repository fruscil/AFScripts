--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_HELPTOPIC" (
   helpidin     emochelp.helpid%TYPE,
   parentidin   emochelp.parentid%TYPE,
   topicin      emochelp.topic%TYPE,
   helphtmlin   emochelp.helphtml%TYPE,
   nodein       emochelp.node%TYPE
)
AS
BEGIN
   UPDATE emochelp
      SET parentid = parentidin,
          topic = topicin,
          helphtml = helphtmlin,
          node = nodein
    WHERE helpid = helpidin;
END upd_helptopic;

 
 
 
 
 
 
 
 
@
