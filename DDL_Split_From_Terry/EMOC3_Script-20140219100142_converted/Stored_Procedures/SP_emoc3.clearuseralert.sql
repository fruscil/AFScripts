--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."CLEARUSERALERT" (
   alertidin   useralert.alertid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   UPDATE useralert
      SET acknowledged = SYSDATE
    WHERE alertid = alertidin;

   COMMIT;
END clearuseralert;

 
 
 
 
 
 
 
 
@
