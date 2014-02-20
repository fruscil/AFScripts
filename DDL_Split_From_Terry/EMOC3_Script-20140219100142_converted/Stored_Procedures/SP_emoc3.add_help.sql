--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_HELP" (
   helpidout    OUT   emochelp.helpid%TYPE,
   parentidin         emochelp.parentid%TYPE,
   topicin            emochelp.topic%TYPE,
   helphtmlin         emochelp.helphtml%TYPE,
   nodein             emochelp.node%TYPE
)
AS
BEGIN
   SELECT seq_emochelp.NEXTVAL
     INTO helpidout
     FROM DUAL;

   INSERT INTO emochelp
               (helpid, parentid, topic, helphtml, node
               )
        VALUES (helpidout, parentidin, topicin, helphtmlin, nodein
               );
END add_help;

 
 
 
 
 
 
 
 
@
