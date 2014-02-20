--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CONDITIONSTATUS" (
   conditionstatus         conditionstatus.conditionstatus%TYPE,
   conditionlevel          conditionstatus.conditionlevel%TYPE,
   flyable                 conditionstatus.flyable%TYPE,
   colorid                 conditionstatus.colorid%TYPE,
   condstatid        OUT   conditionstatus.condstatid%TYPE
)
AS
BEGIN
   SELECT seq_conditionstatus.NEXTVAL
     INTO condstatid
     FROM DUAL;

   INSERT INTO conditionstatus
               (condstatid, conditionstatus, conditionlevel, flyable, colorid
               )
        VALUES (condstatid, conditionstatus, conditionlevel, flyable, colorid
               );
END add_conditionstatus;

 
 
 
 
 
 
 
 
@
