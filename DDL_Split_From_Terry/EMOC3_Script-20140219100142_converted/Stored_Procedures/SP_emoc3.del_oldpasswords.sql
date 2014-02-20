--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEL_OLDPASSWORDS" (
   useridin   IN   oldpasswords.userid%TYPE
)
AS
BEGIN
   DELETE FROM oldpasswords
         WHERE chgdate < (SYSDATE - 200);

   UPDATE users
      SET isonline = 0
    WHERE lastlogin < (SYSDATE - 1);
END del_oldpasswords;

 
 
 
 
 
 
 
 
@
