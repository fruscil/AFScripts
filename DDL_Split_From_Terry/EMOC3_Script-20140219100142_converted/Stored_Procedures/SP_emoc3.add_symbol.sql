--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_SYMBOL" (
   symbol                    symbols.symbol%TYPE,
   symboldescription         symbols.symboldescription%TYPE,
   condcodeid                symbols.condcodeid%TYPE,
   symbolid            OUT   symbols.symbolid%TYPE
)
AS
BEGIN
   SELECT seq_symbols.NEXTVAL
     INTO symbolid
     FROM DUAL;

   INSERT INTO symbols
               (symbolid, symbol, symboldescription, condcodeid
               )
        VALUES (symbolid, symbol, symboldescription, condcodeid
               );
END add_symbol;

 
 
 
 
 
 
 
 
@
