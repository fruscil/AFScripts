--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_COMBATSCL" (
   combatscl           combatscls.combatscl%TYPE,
   combatsclid   OUT   combatscls.combatsclid%TYPE
)
AS
BEGIN
   SELECT seq_combatscls.NEXTVAL
     INTO combatsclid
     FROM DUAL;

   INSERT INTO combatscls
               (combatsclid, combatscl
               )
        VALUES (combatsclid, combatscl
               );
END add_combatscl;

 
 
 
 
 
 
 
 
@
