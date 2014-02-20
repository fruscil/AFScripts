--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."NEW_BLOB" (out_newblob OUT BLOB)
AS
BEGIN
   DBMS_LOB.createtemporary (out_newblob, FALSE, 0);
END;

 
 
 
 
 
 
 
 
@
