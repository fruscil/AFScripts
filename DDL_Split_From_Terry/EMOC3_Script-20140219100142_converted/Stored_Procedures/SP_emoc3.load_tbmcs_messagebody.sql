--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOAD_TBMCS_MESSAGEBODY" (
   interfacelogidin   IN   NUMBER,
   messagebodyin      IN   VARCHAR2
)
AS
   l_clob   CLOB;
BEGIN
   SELECT     messagebody
         INTO l_clob
         FROM tbmcsinterfacelog
        WHERE interfacelogid = interfacelogidin
   FOR UPDATE;

   DBMS_LOB.writeappend (l_clob, LENGTH (messagebodyin), messagebodyin);
END;

 
 
 
 
 
 
 
 
@
