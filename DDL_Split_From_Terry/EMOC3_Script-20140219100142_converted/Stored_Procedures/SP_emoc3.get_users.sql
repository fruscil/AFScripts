--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_USERS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   userid, RANKcode as rank,
               username, fullname, userstatus, badattempts, lastlogin,
               emocadmin, email
          FROM users
         WHERE LOWER (userstatus) != 'deleted'
      ORDER BY username;
END get_users;



 
 
 
 
 
 
 
 
@
