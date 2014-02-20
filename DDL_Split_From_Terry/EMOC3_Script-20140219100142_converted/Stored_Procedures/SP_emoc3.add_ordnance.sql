--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_ORDNANCE" (
   ordnance              ordnance.ordnance%TYPE,
   configuration         ordnance.configuration%TYPE,
   weaponstypeid         ordnance.weaponstypeid%TYPE,
   ordnanceid      OUT   ordnance.ordnanceid%TYPE
)
AS
BEGIN
   SELECT seq_ordnance.NEXTVAL
     INTO ordnanceid
     FROM DUAL;

   INSERT INTO ordnance
               (ordnanceid, ordnance, configuration, weaponstypeid
               )
        VALUES (ordnanceid, ordnance, configuration, weaponstypeid
               );
END add_ordnance;

 
 
 
 
 
 
 
 
@
