--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GETUSERRECORDBYPORTALUSERID" (
   portaluseridin       IN       users.portaluserid%TYPE,
   username             OUT      users.username%TYPE,
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
   viewablesquadrons    OUT      VARCHAR2,
   defaultmoc           OUT      users.defaultmoc%TYPE
)
AS
   recid         NUMBER;
   newrec        NUMBER;
   defaultrank   VARCHAR2(10);
BEGIN
   recid := 0;

   SELECT COUNT (*)
     INTO recid
     FROM users
    WHERE LOWER (portaluserid) = LOWER (portaluseridin)
       OR LOWER (username) = LOWER (portaluseridin);

   IF (recid = 0)
   THEN
      BEGIN
         SELECT seq_users.NEXTVAL
           INTO newrec
           FROM DUAL;

         SELECT rankcode
           INTO defaultrank
           FROM ranks
          WHERE ranks.mocid = 0 AND ranks.defaultrank = 1;

         INSERT INTO users
                     (userid, username, fullname, portaluserid,
                      isonline, badattempts, userstatus, defaultmoc, rankcode
                     )
              VALUES (newrec, portaluseridin, portaluseridin, portaluseridin,
                      1, 0, 'Approved', '0', defaultrank
                     );

         COMMIT;
      END;
   END IF;

   SELECT username, userid, fullname, userpassword, userstatus, rankcode,
          badattempts, emocadmin, aircraftsortorder1, datepreference,
          timepreference, backgroundcolor, fontcolor, linkcolor, ipaddress,
          isonline, aircraftsortorder2, aircraftsortorder3, email,
          aircraftperrow, refreshpref, viewablesquadrons,
          NVL (defaultmoc, '0')
     INTO username, userid, fullname, userpassword, userstatus, RANK,
          badattempts, emocadmin, aircraftsortorder1, datepreference,
          timepreference, backgroundcolor, fontcolor, linkcolor, ipaddress,
          isonline, aircraftsortorder2, aircraftsortorder3, email,
          aircraftperrow, refreshpref, viewablesquadrons,
          defaultmoc
     FROM users
    WHERE LOWER (portaluserid) = LOWER (portaluseridin)
       OR LOWER (username) = LOWER (portaluseridin);
END getuserrecordbyportaluserid;
 
 
 
 
 
 
 
 
@
