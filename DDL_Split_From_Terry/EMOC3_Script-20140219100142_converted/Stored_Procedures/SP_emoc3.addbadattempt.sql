--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADDBADATTEMPT" (usernamein users.username%TYPE)
IS
   nbadattempts   INTEGER;
BEGIN
   SELECT badattempts
     INTO nbadattempts
     FROM users
    WHERE LOWER (username) = LOWER (usernamein);

   IF (nbadattempts < 3)
   THEN
      UPDATE users
         SET badattempts = nbadattempts + 1
       WHERE LOWER (users.username) = LOWER (usernamein);
   END IF;
END addbadattempt;

 
 
 
 
 
 
 
 
@
