--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_COLORRULE" (
   colorrulesidin   colorrules.colorrulesid%TYPE,
   codetypein       colorrules.codetype%TYPE,
   colorrankin      colorrules.colorrank%TYPE,
   coloridin        colorrules.colorid%TYPE
)
AS
BEGIN
   UPDATE colorrules
      SET codetype = codetypein,
          colorrank = colorrankin,
          colorid = coloridin
    WHERE colorrulesid = colorrulesidin;
END upd_colorrule;

 
 
 
 
 
 
 
 
@
