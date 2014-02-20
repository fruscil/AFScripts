--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEPLOYEDADDUSER" (
   usernamein             users.username%TYPE,
   userpasswordin         users.userpassword%TYPE,
   userid           OUT   users.userid%TYPE
)
AS
BEGIN
   SELECT seq_users.NEXTVAL
     INTO userid
     FROM DUAL;

   INSERT INTO users
               (userid, username, userpassword, portaluserid, userstatus, defaultmoc)
        VALUES (userid, usernamein, userpasswordin, usernamein, 'Approved',0);
END DEPLOYEDADDUSER;
 
 
 
 
 
 
 
 
@
