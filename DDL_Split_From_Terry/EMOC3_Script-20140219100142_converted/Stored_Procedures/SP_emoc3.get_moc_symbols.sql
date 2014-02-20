--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_SYMBOLS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   symbolid, symbol, symboldescription, condcodeid,
               (SELECT conditioncode
                  FROM conditioncodes
                 WHERE conditioncodes.condcodeid =
                                          symbols.condcodeid)
                                                            AS conditioncode,
               mocid
          FROM symbols
         WHERE mocid = mocidin
      ORDER BY symbol;
END get_moc_symbols;

 
 
 
 
 
 
 
 
@
