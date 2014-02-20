--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_COMBATSCLRULE" (
   combatsclid           combatsclrules.combatsclid%TYPE,
   aircraftmdsid         combatsclrules.aircraftmdsid%TYPE,
   sclrulesid      OUT   combatsclrules.sclrulesid%TYPE
)
AS
BEGIN
   SELECT seq_combatsclrules.NEXTVAL
     INTO sclrulesid
     FROM DUAL;

   INSERT INTO combatsclrules
               (sclrulesid, combatsclid, aircraftmdsid
               )
        VALUES (sclrulesid, combatsclid, aircraftmdsid
               );
END add_combatsclrule;

 
 
 
 
 
 
 
 
@
