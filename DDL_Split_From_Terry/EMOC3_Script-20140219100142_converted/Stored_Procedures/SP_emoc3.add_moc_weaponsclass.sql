--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WEAPONSCLASS" (
   weaponsclass           weaponsclass.weaponsclass%TYPE,
   defaultval             weaponsclass.defaultval%TYPE,
   mocidin                weaponsclass.mocid%TYPE,
   weaponsclassid   OUT   weaponsclass.weaponsclassid%TYPE
)
AS
BEGIN
   SELECT seq_weaponsclass.NEXTVAL
     INTO weaponsclassid
     FROM DUAL;

   INSERT INTO weaponsclass
               (weaponsclassid, weaponsclass, defaultval, mocid
               )
        VALUES (weaponsclassid, weaponsclass, defaultval, mocidin
               );
END add_moc_weaponsclass;

 
 
 
 
 
 
 
 
@
