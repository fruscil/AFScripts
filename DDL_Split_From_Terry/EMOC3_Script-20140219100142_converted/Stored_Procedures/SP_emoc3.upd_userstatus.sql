--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_USERSTATUS" (
   useridin        users.userid%TYPE,
   userstatusin    users.userstatus%TYPE,
   emocadminin     users.emocadmin%TYPE,
   badattemptsin   users.badattempts%TYPE
)
AS
BEGIN
   UPDATE users
      SET userstatus = userstatusin,
          emocadmin = emocadminin,
          badattempts = badattemptsin
    WHERE userid = useridin;
END upd_userstatus;

 
 
 
 
 
 
 
 
@
