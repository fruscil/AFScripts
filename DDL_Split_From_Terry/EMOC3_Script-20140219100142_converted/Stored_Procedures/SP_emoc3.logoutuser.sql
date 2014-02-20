--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOGOUTUSER" (useridin users.userid%TYPE)
AS
BEGIN
   UPDATE users
      SET isonline = 0
    WHERE users.userid = useridin;
END logoutuser;

 
 
 
 
 
 
 
 
@
