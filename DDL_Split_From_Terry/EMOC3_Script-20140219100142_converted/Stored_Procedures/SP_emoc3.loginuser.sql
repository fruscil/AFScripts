--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOGINUSER" (useridin users.userid%TYPE)
AS
BEGIN
   UPDATE users
      SET lastlogin = SYSDATE,
          badattempts = 0,
          isonline = 1
    WHERE users.userid = useridin;

END loginuser;
 
 
 
 
 
 
 
 
@
