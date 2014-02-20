--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_LANDINGCODE" (
   landingcode                    landingcodes.landingcode%TYPE,
   landingcodedescription         landingcodes.landingcodedescription%TYPE,
   writeupneeded                  landingcodes.writeupneeded%TYPE,
   landingcodeid            OUT   landingcodes.landingcodeid%TYPE
)
AS
BEGIN
   SELECT seq_landingcodes.NEXTVAL
     INTO landingcodeid
     FROM DUAL;

   INSERT INTO landingcodes
               (landingcodeid, landingcode, landingcodedescription,
                writeupneeded
               )
        VALUES (landingcodeid, landingcode, landingcodedescription,
                writeupneeded
               );
END add_landingcode;

 
 
 
 
 
 
 
 
@
