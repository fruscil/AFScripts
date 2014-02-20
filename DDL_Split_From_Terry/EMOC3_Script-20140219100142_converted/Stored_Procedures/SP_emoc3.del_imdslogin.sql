--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEL_IMDSLOGIN" (
   loginidin   imdslogins.imdsloginid%TYPE
)
AS
BEGIN
   DELETE      imdslogins
         WHERE imdsloginid = loginidin;
END del_imdslogin;
 
 
 
 
 
 
 
 
@
