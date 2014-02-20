--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_CONDITIONCODE" (
   conditioncode                conditioncodes.conditioncode%TYPE,
   conditiondescription         conditioncodes.conditiondescription%TYPE,
   defaultconditioncode         conditioncodes.defaultconditioncode%TYPE,
   condstatid                   conditioncodes.condstatid%TYPE,
   mocidin                      conditioncodes.mocid%TYPE,
   condcodeid             OUT   conditioncodes.condcodeid%TYPE
)
AS
BEGIN
   SELECT seq_conditioncodes.NEXTVAL
     INTO condcodeid
     FROM DUAL;

   INSERT INTO conditioncodes
               (condcodeid, conditioncode, conditiondescription,
                defaultconditioncode, condstatid, mocid
               )
        VALUES (condcodeid, conditioncode, conditiondescription,
                defaultconditioncode, condstatid, mocidin
               );
END add_moc_conditioncode;

 
 
 
 
 
 
 
 
@
