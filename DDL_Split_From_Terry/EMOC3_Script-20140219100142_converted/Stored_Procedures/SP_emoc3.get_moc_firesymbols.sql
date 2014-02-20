--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_FIRESYMBOLS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   firesymbolid, firesymbol, description, NVL(defaultval,0) AS defaultval, ranking,
               mocid
          FROM firesymbols
         WHERE mocid = mocidin
      ORDER BY firesymbol;
END get_moc_firesymbols;
 
 
 
 
 
 
 
 
@
