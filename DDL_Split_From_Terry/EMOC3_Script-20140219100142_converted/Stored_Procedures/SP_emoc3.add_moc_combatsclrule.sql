--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_COMBATSCLRULE" (
   combatsclid           combatsclrules.combatsclid%TYPE,
   aircraftmdsid         combatsclrules.aircraftmdsid%TYPE,
   mocidin               combatsclrules.mocid%TYPE,
   sclrulesid      OUT   combatsclrules.sclrulesid%TYPE
)
AS
BEGIN
   SELECT seq_combatsclrules.NEXTVAL
     INTO sclrulesid
     FROM DUAL;

   INSERT INTO combatsclrules
               (sclrulesid, combatsclid, aircraftmdsid, mocid
               )
        VALUES (sclrulesid, combatsclid, aircraftmdsid, mocidin
               );
END add_moc_combatsclrule;

 
 
 
 
 
 
 
 
@
