--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEPGETUSERRECBYPORTALUSERID" (
   portaluseridin       IN       users.portaluserid%TYPE,
   username             OUT      users.username%TYPE,
   userid               OUT      users.userid%TYPE,
   userpassword         OUT      users.userpassword%TYPE,
   badattempts          OUT      users.badattempts%TYPE,
   emocadmin            OUT      users.emocadmin%TYPE,
   isexpired            OUT      NUMBER,
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



   SELECT username, userid, userpassword,
          badattempts, emocadmin, NVL (defaultmoc, '0')
     INTO username, userid, userpassword,
          badattempts, emocadmin, defaultmoc
     FROM users
    WHERE LOWER (portaluserid) = LOWER (portaluseridin)
       OR LOWER (username) = LOWER (portaluseridin);
END DEPGETUSERRECBYPORTALUSERID;
 
 
 
 
 
 
 
 
@
