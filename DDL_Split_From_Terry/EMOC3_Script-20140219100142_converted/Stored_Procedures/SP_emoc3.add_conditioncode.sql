--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CONDITIONCODE" (
   conditioncode                conditioncodes.conditioncode%TYPE,
   conditiondescription         conditioncodes.conditiondescription%TYPE,
   defaultconditioncode         conditioncodes.defaultconditioncode%TYPE,
   condstatid                   conditioncodes.condstatid%TYPE,
   condcodeid             OUT   conditioncodes.condcodeid%TYPE
)
AS
BEGIN
   SELECT seq_conditioncodes.NEXTVAL
     INTO condcodeid
     FROM DUAL;

   INSERT INTO conditioncodes
               (condcodeid, conditioncode, conditiondescription,
                defaultconditioncode, condstatid
               )
        VALUES (condcodeid, conditioncode, conditiondescription,
                defaultconditioncode, condstatid
               );
END add_conditioncode;

 
 
 
 
 
 
 
 
@
