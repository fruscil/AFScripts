--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_EMOCCONFIGDATA" (
   mocidin          IN       emocconfig.mocid%TYPE,
   timezonefactor   OUT      emocconfig.timezonefactor%TYPE,
   timezonehours    OUT      emocconfig.timezonehours%TYPE,
   gmtfactor        OUT      emocconfig.gmtfactor%TYPE,
   gmthours         OUT      emocconfig.gmthours%TYPE,
   VERSION          OUT      emocconfig.VERSION%TYPE,
   basename         OUT      emocconfig.basename%TYPE,
   etictimer        OUT      emocconfig.etictimer%TYPE,
   archivedom       OUT      emocconfig.archivedom%TYPE,
   archivepurgemo   OUT      emocconfig.archivepurgemo%TYPE,
   scheduledow      OUT      emocconfig.scheduledow%TYPE,
   scheduletime     OUT      emocconfig.scheduletime%TYPE,
   updated          OUT      emocconfig.basename%TYPE,
   updatedby        OUT      emocconfig.basename%TYPE,
   schedulepath     OUT      emocconfig.schedulepath%TYPE,
   templatepath     OUT      emocconfig.templatepath%TYPE,
   archivepath      OUT      emocconfig.archivepath%TYPE,
   headercolor      OUT      emocconfig.headercolor%TYPE,
   smtpserver       OUT      emocconfig.smtpserver%TYPE,
   docspath         OUT      emocconfig.docspath%TYPE,
   proxyurl         OUT      emocconfig.proxyurl%TYPE,
   proxyuserid      OUT      emocconfig.proxyuserid%TYPE,
   proxypassword    OUT      emocconfig.proxypassword%TYPE,
   proxyenabled     OUT      emocconfig.proxyenabled%TYPE
)
AS
BEGIN
   SELECT timezonefactor, timezonehours, gmtfactor, gmthours, VERSION,
          basename, etictimer, archivedom, archivepurgemo, scheduledow,
          scheduletime, TO_CHAR (lastupdated, 'MM/DD/YYYY HH24:MI:SS'),
          (SELECT fullname
             FROM users
            WHERE users.userid = emocconfig.lastupdatedby), schedulepath,
          templatepath, archivepath, docspath, headercolor, smtpserver,
          proxyurl, proxyuserid, proxypassword, proxyenabled
     INTO timezonefactor, timezonehours, gmtfactor, gmthours, VERSION,
          basename, etictimer, archivedom, archivepurgemo, scheduledow,
          scheduletime, updated,
          updatedby, schedulepath,
          templatepath, archivepath, docspath, headercolor, smtpserver,
          proxyurl, proxyuserid, proxypassword, proxyenabled
     FROM emocconfig
    WHERE mocid = mocidin;

   IF LENGTH (NVL (proxypassword, '')) > 0
   THEN
      proxypassword := emoc_security.decrypt (proxypassword);
   ELSE
      proxypassword := '';
   END IF;
END get_moc_emocconfigdata;
 
 
 
 
 
 
 
 
@
