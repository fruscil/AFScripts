--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_USERPASSWORD" (
   useridin     users.userid%TYPE,
   passwordin   users.userpassword%TYPE
)
AS
BEGIN
   UPDATE users
      SET userpassword = passwordin
    WHERE userid = useridin;
END upd_userpassword;

 
 
 
 
 
 
 
 
@
