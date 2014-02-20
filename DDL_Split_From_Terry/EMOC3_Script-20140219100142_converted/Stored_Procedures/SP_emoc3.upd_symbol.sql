--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_SYMBOL" (
   symbolidin            symbols.symbolid%TYPE,
   symbolin              symbols.symbol%TYPE,
   symboldescriptionin   symbols.symboldescription%TYPE,
   condcodeidin          symbols.condcodeid%TYPE
)
AS
BEGIN
   UPDATE symbols
      SET symbol = symbolin,
          symboldescription = symboldescriptionin,
          condcodeid = condcodeidin
    WHERE symbolid = symbolidin;
END upd_symbol;

 
 
 
 
 
 
 
 
@
