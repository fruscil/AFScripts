--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_COLORRULE" (
   codetype             colorrules.codetype%TYPE,
   colorrank            colorrules.colorrank%TYPE,
   colorid              colorrules.colorid%TYPE,
   colorrulesid   OUT   colorrules.colorrulesid%TYPE
)
AS
BEGIN
   SELECT seq_colorrules.NEXTVAL
     INTO colorrulesid
     FROM DUAL;

   INSERT INTO colorrules
               (colorrulesid, codetype, colorrank, colorid
               )
        VALUES (colorrulesid, codetype, colorrank, colorid
               );
END add_colorrule;

 
 
 
 
 
 
 
 
@
