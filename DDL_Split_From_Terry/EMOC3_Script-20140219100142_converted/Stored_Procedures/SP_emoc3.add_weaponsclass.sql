--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WEAPONSCLASS" (
   weaponsclass           weaponsclass.weaponsclass%TYPE,
   defaultval             weaponsclass.defaultval%TYPE,
   weaponsclassid   OUT   weaponsclass.weaponsclassid%TYPE
)
AS
BEGIN
   SELECT seq_weaponsclass.NEXTVAL
     INTO weaponsclassid
     FROM DUAL;

   INSERT INTO weaponsclass
               (weaponsclassid, weaponsclass, defaultval
               )
        VALUES (weaponsclassid, weaponsclass, defaultval
               );
END add_weaponsclass;

 
 
 
 
 
 
 
 
@
