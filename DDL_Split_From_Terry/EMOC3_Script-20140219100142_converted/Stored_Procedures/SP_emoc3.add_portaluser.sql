--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_PORTALUSER" (
   portaluseridin         users.portaluserid%TYPE
)
AS
newuserid INTEGER;
BEGIN
   SELECT seq_users.NEXTVAL
     INTO newuserid
     FROM DUAL;

   INSERT INTO users
               (userid, username, portaluserid, isonline, badattempts
               )
        VALUES (newuserid, portaluseridin, portaluseridin, 0,0
               );
   commit;
END add_portaluser;



 
 
 
 
 
 
 
 
@
