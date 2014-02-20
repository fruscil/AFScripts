--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WEAPONTYPE" (
   weapontype           weapontypes.weapontype%TYPE,
   mocidin              weapontypes.mocid%TYPE,
   weapontypeid   OUT   weapontypes.weaponstypeid%TYPE
)
AS
BEGIN
   SELECT seq_weapontypes.NEXTVAL
     INTO weapontypeid
     FROM DUAL;

   INSERT INTO weapontypes
               (weaponstypeid, weapontype, mocid
               )
        VALUES (weapontypeid, weapontype, mocidin
               );
END add_moc_weapontype;

 
 
 
 
 
 
 
 
@
