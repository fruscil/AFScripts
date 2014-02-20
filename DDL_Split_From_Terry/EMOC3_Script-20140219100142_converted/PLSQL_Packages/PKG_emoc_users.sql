--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_USERS" AS
  TYPE onlineuserscursor IS REF CURSOR;
  TYPE userlinkscursor IS REF CURSOR;
  TYPE ref_cur IS REF CURSOR;

  /* Get Online Users By MOC ID */
  PROCEDURE getonlineusersbymocid(p_mocid  IN NUMBER,
                                  p_cursor OUT onlineuserscursor);

  /* Get All Users By Full Name */
  PROCEDURE getallusersbyfullname(p_cursor OUT ref_cur);

  /* Get All Users By Email Address */
  PROCEDURE getallusersbyemailaddress(p_cursor OUT ref_cur);
END emoc_users;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 48023
	Relative Current Chunk Line Number: 48023
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character 'BY t.email;\n  END getallusersbyemailaddress;\nEND emoc_users;\n\n[CREATE]'
------------

The following statement (from line 47988 to 48021) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_USERS" AS
  /* Get Online Users By MOC ID */
  PROCEDURE getonlineusersbymocid(p_mocid  IN NUMBER,
                                  p_cursor OUT onlineuserscursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT DISTINCT users.rankcode,
                      users.fullname,
                      TO_CHAR(users.lastlogin, 'MM/DD/YYYY HH24:MI:SS') AS login,
                      EMOC3.MOCADMINS.MOCID,
                      EMOC3.MOCUSERS.MOCID,
                      users.ISONLINE
        FROM users, EMOC3.MOCADMINS, EMOC3.MOCUSERS
       WHERE EMOC3.MOCADMINS.MOCID = p_mocid
         AND EMOC3.MOCUSERS.MOCID = p_mocid
         AND users.ISONLINE = 1
         AND users.fullname IS NOT NULL
       ORDER BY users.fullname;
  END getonlineusersbymocid;

  /* Get All Users By Full Name */
  PROCEDURE getallusersbyfullname(p_cursor OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.fullname FROM users t ORDER BY t.fullname;
  END getallusersbyfullname;

  /* Get All Users By Email Address */
  PROCEDURE getallusersbyemailaddress(p_cursor OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.email FROM users t ORDER BY t.email;
  END getallusersbyemailaddress;
END emoc_users@
