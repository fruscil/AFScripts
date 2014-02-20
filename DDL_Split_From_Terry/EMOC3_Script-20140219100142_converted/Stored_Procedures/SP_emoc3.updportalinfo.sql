--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDPORTALINFO" (
   useridin     users.userid%TYPE,
   portalidin   users.portaluserid%TYPE,
   passwordin   users.portalpassword%TYPE
)
AS
BEGIN
   UPDATE users
      SET portaluserid = portalidin
    WHERE userid = useridin;

   IF LENGTH (NVL (passwordin, '')) > 0
   THEN
      UPDATE users
         SET portalpassword = emoc_security.encrypt (passwordin)
       WHERE userid = useridin;
   END IF;
END updportalinfo;
 
 
 
 
 
 
 
 
@
