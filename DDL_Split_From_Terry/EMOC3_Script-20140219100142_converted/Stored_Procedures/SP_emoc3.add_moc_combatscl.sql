--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_COMBATSCL" (
   combatscl           combatscls.combatscl%TYPE,
   mocidin             combatscls.mocid%TYPE,
   combatsclid   OUT   combatscls.combatsclid%TYPE
)
AS
BEGIN
   SELECT seq_combatscls.NEXTVAL
     INTO combatsclid
     FROM DUAL;

   INSERT INTO combatscls
               (combatsclid, combatscl, mocid
               )
        VALUES (combatsclid, combatscl, mocidin
               );
END add_moc_combatscl;

 
 
 
 
 
 
 
 
@
