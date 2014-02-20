--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CUSTOMDATA" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT DISTINCT customdata.*, colors.colorname
                 FROM customdata LEFT JOIN colors ON customdata.bgcolorvalue =
                                                            colors.colorvalue
                WHERE customdata.mocid = mocidin
             ORDER BY customdata.customdatalabel ASC;
END get_moc_customdata;

 
 
 
 
 
 
 
 
@
