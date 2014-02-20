--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_COLORRULE" (
   codetype             colorrules.codetype%TYPE,
   colorrank            colorrules.colorrank%TYPE,
   colorid              colorrules.colorid%TYPE,
   mocidin              colorrules.mocid%TYPE,
   colorrulesid   OUT   colorrules.colorrulesid%TYPE
)
AS
BEGIN
   SELECT seq_colorrules.NEXTVAL
     INTO colorrulesid
     FROM DUAL;

   INSERT INTO colorrules
               (colorrulesid, codetype, colorrank, colorid, mocid
               )
        VALUES (colorrulesid, codetype, colorrank, colorid, mocidin
               );
END add_moc_colorrule;

 
 
 
 
 
 
 
 
@
