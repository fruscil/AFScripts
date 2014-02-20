--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_RECORD_INTERFACELOGID" (
   tablein            VARCHAR2,
   fieldin            VARCHAR2,
   idin               NUMBER,
   interfacelogidin   interfacelog.interfacelogid%TYPE
)
AS
   sqlstatement   CLOB;
BEGIN
   sqlstatement := 'UPDATE ' || tablein;
   sqlstatement :=
                 sqlstatement || ' SET INTERFACELOGID = ' || interfacelogidin;
   sqlstatement := sqlstatement || ' WHERE ' || fieldin || ' = ' || idin;

   EXECUTE IMMEDIATE TO_CHAR (sqlstatement);
/* *** DCW Evaluation Issue "PLSQL_EXECUTE_IMMEDIATE".Corresponding line no in the source file:45139 *** */

   COMMIT;
END upd_record_interfacelogid;
 
 
 
 
 
 
 
 
@
