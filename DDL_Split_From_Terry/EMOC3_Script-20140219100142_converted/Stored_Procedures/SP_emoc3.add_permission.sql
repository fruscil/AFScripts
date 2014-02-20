--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_PERMISSION" (
   useridin             permissions.userid%TYPE,
   squadronidin         permissions.squadronid%TYPE,
   emocrolein           permissions.emocrole%TYPE,
   permissionid   OUT   permissions.permissionid%TYPE
)
AS
BEGIN
   SELECT seq_permissions.NEXTVAL
     INTO permissionid
     FROM DUAL;

   INSERT INTO permissions
               (permissionid, userid, squadronid, emocrole
               )
        VALUES (permissionid, useridin, squadronidin, emocrolein
               );
END add_permission;

 
 
 
 
 
 
 
 
@
