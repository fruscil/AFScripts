--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_ORDNANCE" (
   ordnance              ordnance.ordnance%TYPE,
   configuration         ordnance.configuration%TYPE,
   weaponstypeid         ordnance.weaponstypeid%TYPE,
   mocidin               ordnance.mocid%TYPE,
   ordnanceid      OUT   ordnance.ordnanceid%TYPE
)
AS
BEGIN
   SELECT seq_ordnance.NEXTVAL
     INTO ordnanceid
     FROM DUAL;

   INSERT INTO ordnance
               (ordnanceid, ordnance, configuration, weaponstypeid, mocid
               )
        VALUES (ordnanceid, ordnance, configuration, weaponstypeid, mocidin
               );
END add_moc_ordnance;

 
 
 
 
 
 
 
 
@
