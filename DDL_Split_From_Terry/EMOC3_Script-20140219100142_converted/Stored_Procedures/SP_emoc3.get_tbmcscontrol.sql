--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_TBMCSCONTROL" (
   tbmcstimer          OUT   emocconfig.tbmcstimer%TYPE,
   interfaceenabled    OUT   interfacecontrol.interfaceenabled%TYPE,
   interfaceuserid     OUT   interfacecontrol.interfaceuserid%TYPE,
   interfacepassword   OUT   interfacecontrol.interfacepassword%TYPE,
   lastupdated         OUT   VARCHAR2,
   updatedby           OUT   interfacecontrol.interfacename%TYPE
)
AS
BEGIN
   SELECT tbmcstimer
     INTO tbmcstimer
     FROM emocconfig
    WHERE emocconfigid = 0;

   SELECT interfaceenabled, TO_CHAR (lastupdate, 'MM/DD/YYYY HH24:MI:SS'),
          (SELECT fullname
             FROM users
            WHERE users.userid = interfacecontrol.lastupdateby),
          interfaceuserid, emoc_security.decrypt(interfacepassword)
     INTO interfaceenabled, lastupdated,
          updatedby,
          interfaceuserid, interfacepassword
     FROM interfacecontrol
    WHERE TRIM (interfacename) = 'TBMCS-UL';
END get_tbmcscontrol;
 
 
 
 
 
 
 
 
@
