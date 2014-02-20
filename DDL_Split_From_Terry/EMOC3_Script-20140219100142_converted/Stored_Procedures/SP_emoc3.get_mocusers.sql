--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOCUSERS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          moc.mocid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   mocuserid, mocusers.userid, users.fullname, users.userstatus,
               users.email
          FROM mocusers, users
         WHERE mocusers.mocid = mocidin AND mocusers.userid = users.userid
      ORDER BY fullname;
END get_mocusers;
 
 
 
 
 
 
 
 
@
