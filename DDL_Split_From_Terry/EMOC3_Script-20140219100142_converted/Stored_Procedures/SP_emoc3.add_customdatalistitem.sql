--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CUSTOMDATALISTITEM" (
   customdataidin   customdata.customdataid%TYPE,
   datavaluein      customdatalistitem.customdataitemvalue%TYPE
)
AS
   listitemid   INTEGER;
   itemcount    INTEGER;
BEGIN
   SELECT COUNT (*)
     INTO itemcount
     FROM customdatalistitem
    WHERE customdataid = customdataidin
      AND LOWER (customdataitemvalue) = LOWER (datavaluein);

   IF (itemcount = 0)
   THEN
      SELECT seq_customdatalistitem.NEXTVAL
        INTO listitemid
        FROM DUAL;

      INSERT INTO customdatalistitem
                  (customdataitemid, customdataid, customdataitemvalue
                  )
           VALUES (listitemid, customdataidin, upper(datavaluein)
                  );
   END IF;
END add_customdatalistitem;

 
 
 
 
 
 
 
 
@
