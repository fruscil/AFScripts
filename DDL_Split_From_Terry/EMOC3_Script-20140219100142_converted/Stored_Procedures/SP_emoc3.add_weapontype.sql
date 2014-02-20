--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WEAPONTYPE" (
   weapontype           weapontypes.weapontype%TYPE,
   weapontypeid   OUT   weapontypes.weaponstypeid%TYPE
)
AS
BEGIN
   SELECT seq_weapontypes.NEXTVAL
     INTO weapontypeid
     FROM DUAL;

   INSERT INTO weapontypes
               (weaponstypeid, weapontype
               )
        VALUES (weapontypeid, weapontype
               );
END add_weapontype;

 
 
 
 
 
 
 
 
@
