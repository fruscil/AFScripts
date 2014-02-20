--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GETUSERRECORDBYUSERNAME" (
   usernamein           IN       users.username%TYPE,
   userid               OUT      users.userid%TYPE,
   fullname             OUT      users.fullname%TYPE,
   userpassword         OUT      users.userpassword%TYPE,
   userstatus           OUT      users.userstatus%TYPE,
   RANK                 OUT      ranks.rankcode%TYPE,
   badattempts          OUT      users.badattempts%TYPE,
   emocadmin            OUT      users.emocadmin%TYPE,
   aircraftsortorder1   OUT      users.aircraftsortorder1%TYPE,
   datepreference       OUT      users.datepreference%TYPE,
   timepreference       OUT      users.timepreference%TYPE,
   backgroundcolor      OUT      VARCHAR2,
   fontcolor            OUT      VARCHAR2,
   linkcolor            OUT      VARCHAR2,
   ipaddress            OUT      VARCHAR2,
   isonline             OUT      users.isonline%TYPE,
   aircraftsortorder2   OUT      users.aircraftsortorder2%TYPE,
   aircraftsortorder3   OUT      users.aircraftsortorder3%TYPE,
   email                OUT      users.email%TYPE,
   aircraftperrow       OUT      users.aircraftperrow%TYPE,
   refreshpref          OUT      users.refreshpref%TYPE,
   isexpired            OUT      NUMBER,
   viewablesquadrons    OUT      VARCHAR2
)
AS
   oldpws   INTEGER := 0;
BEGIN
   SELECT userid, fullname, userpassword, userstatus, rankcode, badattempts, emocadmin,
          aircraftsortorder1, datepreference, timepreference,
          backgroundcolor, fontcolor, linkcolor, ipaddress, isonline,
          aircraftsortorder2, aircraftsortorder3, email, aircraftperrow,
          refreshpref, viewablesquadrons
     INTO userid, fullname, userpassword, userstatus,
          RANK, badattempts, emocadmin,
          aircraftsortorder1, datepreference, timepreference,
          backgroundcolor, fontcolor, linkcolor, ipaddress, isonline,
          aircraftsortorder2, aircraftsortorder3, email, aircraftperrow,
          refreshpref, viewablesquadrons
     FROM users
    WHERE LOWER (username) = LOWER (usernamein) AND userstatus != 'Deleted';

   SELECT COUNT (*)
     INTO oldpws
     FROM oldpasswords
    WHERE chgdate > (SYSDATE - 90) AND oldpasswords.userid = userid;

   IF oldpws = 0
   THEN
      isexpired := 1;
   ELSE
      isexpired := 0;
   END IF;
END getuserrecordbyusername;



 
 
 
 
 
 
 
 
@
