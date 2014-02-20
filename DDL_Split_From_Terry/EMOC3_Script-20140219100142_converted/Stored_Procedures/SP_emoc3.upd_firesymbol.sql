--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_FIRESYMBOL" (
   firesymbolin     firesymbols.firesymbol%TYPE,
   descriptionin    firesymbols.description%TYPE,
   defaultvalin     firesymbols.defaultval%TYPE,
   rankingin        firesymbols.ranking%TYPE,
   firesymbolidin   firesymbols.firesymbolid%TYPE,
   mocidin          firesymbols.mocid%TYPE
)
AS
   counter1     INTEGER;
   defaultval   INTEGER;
BEGIN
   IF defaultvalin = 1
   THEN
      UPDATE firesymbols
         SET defaultval = 0
       WHERE mocid = mocidin;
   END IF;

   UPDATE firesymbols
      SET firesymbol = firesymbolin,
          description = descriptionin,
          defaultval = defaultvalin,
          ranking = rankingin
    WHERE firesymbolid = firesymbolidin;

   SELECT COUNT (*)
     INTO counter1
     FROM firesymbols
    WHERE defaultval = 1 AND mocid = mocidin;

   IF counter1 = 0
   THEN
      UPDATE firesymbols
         SET defaultval = 1
       WHERE firesymbolid = firesymbolidin;
   END IF;
END upd_firesymbol;
 
 
 
 
 
 
 
 
@
