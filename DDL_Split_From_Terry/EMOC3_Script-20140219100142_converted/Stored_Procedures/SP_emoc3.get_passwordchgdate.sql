--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_PASSWORDCHGDATE" (
   useridin         IN       oldpasswords.userid%TYPE,
   userpasswordin   IN       oldpasswords.userpassword%TYPE,
   chgdateout       OUT      oldpasswords.chgdate%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   SELECT chgdate
     INTO chgdateout
     FROM oldpasswords
    WHERE userid = useridin AND userpassword = userpasswordin;
END get_passwordchgdate;

 
 
 
 
 
 
 
 
@
