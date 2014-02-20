--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEL_HELPTOPIC" (helpidin emochelp.helpid%TYPE)
AS
BEGIN
   UPDATE emochelp
      SET parentid = NULL
    WHERE parentid = helpidin;

   DELETE      emochelp
         WHERE helpid = helpidin;
END del_helptopic;

 
 
 
 
 
 
 
 
@
