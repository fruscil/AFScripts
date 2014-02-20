--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_IMDSLOGIN" (
   useridin       imdslogins.userid%TYPE,
   loginin        imdslogins.imdslogin%TYPE,
   passwordin     imdslogins.imdspassword%TYPE,
   accountin      imdslogins.imdsaccount%TYPE,
   projectidin    imdslogins.imdsprojectid%TYPE,
   terminalidin   imdslogins.imdsterminalid%TYPE,
   wingidin       imdslogins.wingid%TYPE,
   loginidin      imdslogins.imdsloginid%TYPE
)
AS
BEGIN
   UPDATE imdslogins
      SET imdslogin = loginin,
          imdsaccount = accountin,
          imdsprojectid = projectidin,
          imdsterminalid = terminalidin,
          wingid = wingidin
    WHERE imdsloginid = loginidin;

   IF LENGTH (NVL (passwordin, '')) > 0
   THEN
      UPDATE imdslogins
         SET imdspassword = emoc_security.encrypt (passwordin)
       WHERE imdsloginid = loginidin;
   END IF;
   
END upd_imdslogin;
 
 
 
 
 
 
 
 
@
