--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REPORT_GETPARAMETERS" (
   p_cursor     OUT   emoc_types.emoc_cursor,
   reportidin         reports.reportid%TYPE
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT   parameternumber, parametername, parametertype, parameterlabel
          FROM reportparameters
         WHERE reportid = reportidin
      ORDER BY parameternumber;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END report_getparameters;

 
 
 
 
 
 
 
 
@
