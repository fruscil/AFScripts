--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_SEMEDX" (
   semedxin              semedx.semedx%TYPE,
   semedxdescriptionin   semedx.semedxdescription%TYPE,
   defaultvalin          semedx.defaultval%TYPE,
   colorrulesidin        semedx.colorrulesid%TYPE,
   semedxidin            semedx.semedxid%TYPE
)
AS
BEGIN
   UPDATE semedx
      SET semedx = semedxin,
          semedxdescription = semedxdescriptionin,
          defaultval = defaultvalin,
          colorrulesid = colorrulesidin
    WHERE semedxid = semedxidin;
END upd_semedx;

 
 
 
 
 
 
 
 
@
