--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_USER" (
   usernamein             users.username%TYPE,
   userpasswordin         users.userpassword%TYPE,
   fullnamein             users.fullname%TYPE,
   emailin                users.email%TYPE,
   rankcodein             users.rankcode%TYPE,
   userid           OUT   users.userid%TYPE
)
AS
BEGIN
   SELECT seq_users.NEXTVAL
     INTO userid
     FROM DUAL;

   INSERT INTO users
               (userid, username, userpassword, fullname, email,
                rankcode
               )
        VALUES (userid, usernamein, userpasswordin, fullnamein, emailin,
                rankcodein
               );
END add_user;



 
 
 
 
 
 
 
 
@
