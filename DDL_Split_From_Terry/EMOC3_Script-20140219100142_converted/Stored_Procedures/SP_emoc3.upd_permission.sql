--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_PERMISSION" (
   permissionidin   permissions.permissionid%TYPE,
   emocrolein       permissions.emocrole%TYPE
)
AS
BEGIN
   UPDATE permissions
      SET emocrole = emocrolein
    WHERE permissionid = permissionidin;
END upd_permission;

 
 
 
 
 
 
 
 
@
