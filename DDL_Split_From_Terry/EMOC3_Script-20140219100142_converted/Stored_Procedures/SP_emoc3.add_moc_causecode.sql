--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_CAUSECODE" (
   causecode             causecodes.causecode%TYPE,
   description           causecodes.description%TYPE,
   causecodetype         causecodes.causecodetype%TYPE,
   camsinitflag          INTEGER,
   mocidin               causecodes.mocid%TYPE,
   causecodeid     OUT   causecodes.causecodeid%TYPE
)
AS
BEGIN
   SELECT seq_causecodes.NEXTVAL
     INTO causecodeid
     FROM DUAL;

   INSERT INTO causecodes
               (causecodeid, causecode, description, causecodetype, mocid, defaultcausecode
               )
        VALUES (causecodeid, causecode, description, causecodetype, mocidin, 0
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE causecodes
         SET camsinit = SYSDATE
       WHERE causecodeid = causecodeid;
   END IF;
END add_moc_causecode;
 
 
 
 
 
 
 
 
@
