--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOCADMINS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          moc.mocid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   mocadminid, mocadmins.userid, fullname, userstatus, email
          FROM mocadmins, users
         WHERE mocadmins.mocid = mocidin AND mocadmins.userid = users.userid
      ORDER BY fullname;
END get_mocadmins;
 
 
 
 
 
 
 
 
@
