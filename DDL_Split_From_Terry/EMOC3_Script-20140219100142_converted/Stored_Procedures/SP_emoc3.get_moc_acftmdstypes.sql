--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_ACFTMDSTYPES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   acftmdstypecd, acftmdstypenm
          FROM acftmdstypes
         WHERE mocid = mocidin
      ORDER BY acftmdstypenm;
END get_moc_acftmdstypes;

 
 
 
 
 
 
 
 
@
