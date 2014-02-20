--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_LANDINGCODE" (
   landingcode                    landingcodes.landingcode%TYPE,
   landingcodedescription         landingcodes.landingcodedescription%TYPE,
   writeupneeded                  landingcodes.writeupneeded%TYPE,
   mocidin                        landingcodes.mocid%TYPE,
   landingcodeid            OUT   landingcodes.landingcodeid%TYPE
)
AS
BEGIN
   SELECT seq_landingcodes.NEXTVAL
     INTO landingcodeid
     FROM DUAL;

   INSERT INTO landingcodes
               (landingcodeid, landingcode, landingcodedescription,
                writeupneeded, mocid
               )
        VALUES (landingcodeid, landingcode, landingcodedescription,
                writeupneeded, mocidin
               );
END add_moc_landingcode;

 
 
 
 
 
 
 
 
@
