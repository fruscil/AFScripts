--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_SEMEDX" (
   semedx                    semedx.semedx%TYPE,
   semedxdescription         semedx.semedxdescription%TYPE,
   defaultval                semedx.defaultval%TYPE,
   colorrulesid              semedx.colorrulesid%TYPE,
   semedxid            OUT   semedx.semedxid%TYPE
)
AS
BEGIN
   SELECT seq_semedx.NEXTVAL
     INTO semedxid
     FROM DUAL;

   INSERT INTO semedx
               (semedxid, semedx, semedxdescription, defaultval, colorrulesid
               )
        VALUES (semedxid, semedx, semedxdescription, defaultval, colorrulesid
               );
END add_semedx;

 
 
 
 
 
 
 
 
@
