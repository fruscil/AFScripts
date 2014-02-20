--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_USERS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   mocusers.userid, users.rankcode , users.username,
               users.fullname, users.lastlogin, users.email,
               users.portaluserid
          FROM mocusers
		    LEFT JOIN users ON mocusers.userid = users.userid
			where mocid = mocidin
      ORDER BY username;
END get_moc_users;



 
 
 
 
 
 
 
 
@
