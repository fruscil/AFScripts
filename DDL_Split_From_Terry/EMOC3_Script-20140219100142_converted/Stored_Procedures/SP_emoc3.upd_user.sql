--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_USER" (useridin         users.userid%TYPE,
                                       usernamein       users.username%TYPE,
                                       fullnamein       users.fullname%TYPE,
                                       emailin          users.email%TYPE,
                                       rankidin         users.rankcode%TYPE,
                                       datepreferencein users.datepreference%TYPE,
                                       timepreferencein users.timepreference%TYPE,
                                       aircraftperrowin users.aircraftperrow%TYPE,
                                       refreshprefin    users.refreshpref%TYPE) AS
BEGIN
  UPDATE users
     SET username       = usernamein,
         fullname       = fullnamein,
         email          = emailin,
         rankcode       = rankidin,
         datepreference = datepreferencein,
         timepreference = timepreferencein,
         aircraftperrow = aircraftperrowin,
         refreshpref    = refreshprefin
   WHERE userid = useridin;
END upd_user;
 
 
 
 
 
 
 
 
@
