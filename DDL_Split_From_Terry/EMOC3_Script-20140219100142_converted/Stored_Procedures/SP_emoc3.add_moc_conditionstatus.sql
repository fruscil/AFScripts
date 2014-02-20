--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_CONDITIONSTATUS" (
   conditionstatus         conditionstatus.conditionstatus%TYPE,
   conditionlevel          conditionstatus.conditionlevel%TYPE,
   flyable                 conditionstatus.flyable%TYPE,
   colorid                 conditionstatus.colorid%TYPE,
   mocidin                 conditionstatus.mocid%TYPE,
   condstatid        OUT   conditionstatus.condstatid%TYPE
)
AS
BEGIN
   SELECT seq_conditionstatus.NEXTVAL
     INTO condstatid
     FROM DUAL;

   INSERT INTO conditionstatus
               (condstatid, conditionstatus, conditionlevel, flyable,
                colorid, mocid
               )
        VALUES (condstatid, conditionstatus, conditionlevel, flyable,
                colorid, mocidin
               );
END add_moc_conditionstatus;

 
 
 
 
 
 
 
 
@
