--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETUSERDATA" (
   useridin                     users.userid%TYPE,
   useridout              OUT   users.userid%TYPE,
   rankout                OUT   ranks.rankcode%TYPE,
   usernameout            OUT   users.username%TYPE,
   fullnameout            OUT   users.fullname%TYPE,
   ipaddressout           OUT   users.ipaddress%TYPE,
   isonlineout            OUT   users.isonline%TYPE,
   badattemptsout         OUT   users.badattempts%TYPE,
   aircraftsortorderout   OUT   users.aircraftsortorder1%TYPE,
   backgroundcolorout     OUT   colors.colorvalue%TYPE,
   fontcolorout           OUT   colors.colorvalue%TYPE,
   linkcolorout           OUT   colors.colorvalue%TYPE,
   datepreferenceout      OUT   users.datepreference%TYPE,
   timepreferenceout      OUT   users.timepreference%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE USER RECORDSET
   SELECT userid, rankcode, username,
          fullname, ipaddress, isonline, badattempts,
          aircraftsortorder1, backgroundcolor, fontcolor,
          linkcolor, datepreference, timepreference
     INTO useridout, rankout, usernameout,
          fullnameout, ipaddressout, isonlineout, badattemptsout,
          aircraftsortorderout, backgroundcolorout, fontcolorout,
          linkcolorout, datepreferenceout, timepreferenceout
     FROM users
    WHERE ((userid = useridin));
END spgetuserdata;



 
 
 
 
 
 
 
 
@
