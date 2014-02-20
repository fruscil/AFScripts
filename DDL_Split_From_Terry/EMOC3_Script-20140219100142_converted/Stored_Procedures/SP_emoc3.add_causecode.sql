--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CAUSECODE" (
   causecode             causecodes.causecode%TYPE,
   description           causecodes.description%TYPE,
   causecodetype         causecodes.causecodetype%TYPE,
   camsinitflag          INTEGER,
   causecodeid     OUT   causecodes.causecodeid%TYPE
)
AS
BEGIN
   SELECT seq_causecodes.NEXTVAL
     INTO causecodeid
     FROM DUAL;

   INSERT INTO causecodes
               (causecodeid, causecode, description, causecodetype
               )
        VALUES (causecodeid, causecode, description, causecodetype
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE causecodes
         SET camsinit = SYSDATE
       WHERE causecodeid = causecodeid;
   END IF;
END add_causecode;
 
 
 
 
 
 
 
 
@
