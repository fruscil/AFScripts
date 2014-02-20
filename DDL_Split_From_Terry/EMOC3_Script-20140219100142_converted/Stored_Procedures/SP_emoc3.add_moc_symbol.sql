--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_SYMBOL" (
   symbol                    symbols.symbol%TYPE,
   symboldescription         symbols.symboldescription%TYPE,
   condcodeid                symbols.condcodeid%TYPE,
   mocidin                   symbols.mocid%TYPE,
   symbolid            OUT   symbols.symbolid%TYPE
)
AS
BEGIN
   SELECT seq_symbols.NEXTVAL
     INTO symbolid
     FROM DUAL;

   INSERT INTO symbols
               (symbolid, symbol, symboldescription, condcodeid, mocid
               )
        VALUES (symbolid, symbol, symboldescription, condcodeid, mocidin
               );
END add_moc_symbol;

 
 
 
 
 
 
 
 
@
