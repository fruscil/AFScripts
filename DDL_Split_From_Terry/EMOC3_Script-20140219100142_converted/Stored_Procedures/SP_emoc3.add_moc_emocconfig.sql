--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_EMOCCONFIG" (
   mocidin                 emocconfig.mocid%TYPE,
   emocconfigidout   OUT   emocconfig.emocconfigid%TYPE
)
AS
BEGIN
   SELECT seq_emocconfig.NEXTVAL
     INTO emocconfigidout
     FROM DUAL;

   INSERT INTO emocconfig
               (mocid, emocconfigid
               )
        VALUES (mocidin, emocconfigidout
               );
END add_moc_emocconfig;

 
 
 
 
 
 
 
 
@
