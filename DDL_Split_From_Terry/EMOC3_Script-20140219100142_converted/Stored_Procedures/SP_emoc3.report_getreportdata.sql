--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REPORT_GETREPORTDATA" (
   sqlstatementout   OUT   reports.sqlstatement%TYPE,
   reportidin              reports.reportid%TYPE
)
AS
   sqlselect   VARCHAR2(4000);
BEGIN
   SELECT sqlstatement
     INTO sqlselect
     FROM reports
    WHERE reportid = reportidin;

   sqlstatementout := sqlselect;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END report_getreportdata;

 
 
 
 
 
 
 
 
@
