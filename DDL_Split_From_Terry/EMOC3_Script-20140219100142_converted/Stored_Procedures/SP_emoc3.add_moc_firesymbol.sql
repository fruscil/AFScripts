--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_FIRESYMBOL" (
   firesymbolin          firesymbols.firesymbol%TYPE,
   descriptionin         firesymbols.description%TYPE,
   defaultvalin          firesymbols.defaultval%TYPE,
   rankingin             firesymbols.ranking%TYPE,
   mocidin               firesymbols.mocid%TYPE,
   firesymbolid    OUT   firesymbols.firesymbolid%TYPE
)
AS
BEGIN
   SELECT seq_firesymbols.NEXTVAL
     INTO firesymbolid
     FROM DUAL;

   IF defaultvalin = 1
   THEN
      UPDATE firesymbols
         SET defaultval = 0
       WHERE mocid = mocidin;
   END IF;

   INSERT INTO firesymbols
               (firesymbolid, firesymbol, description, defaultval,
                ranking, mocid
               )
        VALUES (firesymbolid, firesymbolin, descriptionin, defaultvalin,
                rankingin, mocidin
               );
END add_moc_firesymbol;
 
 
 
 
 
 
 
 
@
