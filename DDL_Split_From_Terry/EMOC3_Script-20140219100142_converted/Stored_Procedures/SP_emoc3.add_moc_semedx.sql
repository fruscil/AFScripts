--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_SEMEDX" (
   semedx                    semedx.semedx%TYPE,
   semedxdescription         semedx.semedxdescription%TYPE,
   defaultval                semedx.defaultval%TYPE,
   colorrulesid              semedx.colorrulesid%TYPE,
   mocidin                   semedx.mocid%TYPE,
   semedxid            OUT   semedx.semedxid%TYPE
)
AS
BEGIN
   SELECT seq_semedx.NEXTVAL
     INTO semedxid
     FROM DUAL;

   INSERT INTO semedx
               (semedxid, semedx, semedxdescription, defaultval,
                colorrulesid, mocid
               )
        VALUES (semedxid, semedx, semedxdescription, defaultval,
                colorrulesid, mocidin
               );
END add_moc_semedx;

 
 
 
 
 
 
 
 
@
