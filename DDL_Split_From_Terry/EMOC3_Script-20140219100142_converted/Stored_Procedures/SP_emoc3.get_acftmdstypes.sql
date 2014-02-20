--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_ACFTMDSTYPES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   acftmdstypecd, acftmdstypenm
          FROM acftmdstypes
      ORDER BY acftmdstypenm;
END get_acftmdstypes;

 
 
 
 
 
 
 
 
@
