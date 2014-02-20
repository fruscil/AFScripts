--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_DEVIATIONCODE" (
   deviationcode                deviationcodes.deviationcode%TYPE,
   deviationdescription         deviationcodes.deviationdescription%TYPE,
   defaultdeviationcode         deviationcodes.defaultdeviationcode%TYPE,
   colorid                      deviationcodes.colorid%TYPE,
   camsinitflag                 INTEGER,
   deviationcodeid        OUT   deviationcodes.deviationcodeid%TYPE
)
AS
BEGIN
   SELECT seq_deviationcodes.NEXTVAL
     INTO deviationcodeid
     FROM DUAL;

   INSERT INTO deviationcodes
               (deviationcodeid, deviationcode, deviationdescription,
                defaultdeviationcode, colorid
               )
        VALUES (deviationcodeid, deviationcode, deviationdescription,
                defaultdeviationcode, colorid
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE deviationcodes
         SET camsinit = SYSDATE
       WHERE deviationcodeid = deviationcodeid;
   END IF;
END add_deviationcode;

 
 
 
 
 
 
 
 
@
