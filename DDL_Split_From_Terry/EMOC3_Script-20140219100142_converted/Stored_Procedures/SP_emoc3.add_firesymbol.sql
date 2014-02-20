--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_FIRESYMBOL" (
   firesymbolin          firesymbols.firesymbol%TYPE,
   descriptionin         firesymbols.description%TYPE,
   defaultvalin          firesymbols.defaultval%TYPE,
   rankingin             firesymbols.ranking%TYPE,
   firesymbolid    OUT   firesymbols.firesymbolid%TYPE
)
AS
BEGIN
   SELECT seq_firesymbols.NEXTVAL
     INTO firesymbolid
     FROM DUAL;

   INSERT INTO firesymbols
               (firesymbolid, firesymbol, description, defaultval,
                ranking
               )
        VALUES (firesymbolid, firesymbolin, descriptionin, defaultvalin,
                rankingin
               );
END add_firesymbol;

 
 
 
 
 
 
 
 
@
