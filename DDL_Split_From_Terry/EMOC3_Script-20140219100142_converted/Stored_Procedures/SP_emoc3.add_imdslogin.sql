--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_IMDSLOGIN" (
   useridin             users.userid%TYPE,
   loginin              imdslogins.imdslogin%TYPE,
   passwordin           imdslogins.imdspassword%TYPE,
   accountin            imdslogins.imdsaccount%TYPE,
   projectidin          imdslogins.imdsprojectid%TYPE,
   terminalidin         imdslogins.imdsterminalid%TYPE,
   wingidin             imdslogins.wingid%TYPE,
   loginid        OUT   imdslogins.imdsloginid%TYPE
)
AS
BEGIN
   SELECT seq_imdslogins.NEXTVAL
     INTO loginid
     FROM DUAL;

   INSERT INTO imdslogins
               (imdsloginid, userid, imdslogin, imdsaccount, imdsprojectid,
                imdspassword, imdsterminalid, wingid
               )
        VALUES (loginid, useridin, loginin, accountin, projectidin,
                emoc_security.encrypt ('nopassword'), terminalidin, wingidin
               );

   IF LENGTH (NVL (passwordin, '')) > 0
   THEN
      UPDATE imdslogins
         SET imdspassword = emoc_security.encrypt (passwordin)
       WHERE imdsloginid = loginid;
   END IF;
END add_imdslogin;
 
 
 
 
 
 
 
 
@
