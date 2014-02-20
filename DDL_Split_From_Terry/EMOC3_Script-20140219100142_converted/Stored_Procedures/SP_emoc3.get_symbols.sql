--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SYMBOLS" (
   p_cursor   OUT   emoc_types.emoc_cursor
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
                                                            AS conditioncode
          FROM symbols
      ORDER BY symbol;
END get_symbols;

 
 
 
 
 
 
 
 
@
