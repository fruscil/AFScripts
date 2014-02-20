--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC_EMOCCONFIGDATA" (
   mocidin            emocconfig.mocid%TYPE,
   timezonefactorin   emocconfig.timezonefactor%TYPE,
   timezonehoursin    emocconfig.timezonehours%TYPE,
   gmtfactorin        emocconfig.gmtfactor%TYPE,
   gmthoursin         emocconfig.gmthours%TYPE,
   versionin          emocconfig.VERSION%TYPE,
   basenamein         emocconfig.basename%TYPE,
   etictimerin        emocconfig.etictimer%TYPE,
   archivedomin       emocconfig.archivedom%TYPE,
   archivepurgemoin   emocconfig.archivepurgemo%TYPE,
   scheduledowin      emocconfig.scheduledow%TYPE,
   scheduletimein     emocconfig.scheduletime%TYPE,
   schedulepathin     emocconfig.schedulepath%TYPE,
   templatepathin     emocconfig.templatepath%TYPE,
   archivepathin      emocconfig.archivepath%TYPE,
   headercolorin      emocconfig.headercolor%TYPE,
   smtpserverin       emocconfig.smtpserver%TYPE,
   updatedbyin        emocconfig.lastupdatedby%TYPE,
   docspathin         emocconfig.docspath%TYPE,
   proxyurlin         emocconfig.proxyurl%TYPE,
   proxyuseridin      emocconfig.proxyuserid%TYPE,
   proxypasswordin    emocconfig.proxypassword%TYPE,
   proxyenabledin     emocconfig.proxyenabled%TYPE
)
AS
BEGIN
   UPDATE emocconfig
      SET timezonefactor = timezonefactorin,
          timezonehours = timezonehoursin,
          gmtfactor = gmtfactorin,
          gmthours = gmthoursin,
          VERSION = versionin,
          basename = basenamein,
          etictimer = etictimerin,
          archivedom = archivedomin,
          archivepurgemo = archivepurgemoin,
          scheduledow = scheduledowin,
          scheduletime = scheduletimein,
          schedulepath = schedulepathin,
          templatepath = templatepathin,
          archivepath = archivepathin,
          docspath = docspathin,
          headercolor = headercolorin,
          smtpserver = smtpserverin,
          lastupdatedby = updatedbyin,
          lastupdated = SYSDATE,
          proxyurl = proxyurlin,
          proxyuserid = proxyuseridin,
          proxyenabled = proxyenabledin
    WHERE mocid = mocidin;

   IF LENGTH (NVL (proxypasswordin, '')) > 0
   THEN
      UPDATE emocconfig
         SET proxypassword = emoc_security.encrypt (proxypasswordin)
       WHERE mocid = mocidin;
   END IF;
   
--Added 10/2/03 A.MitchelL
--update the job that pulls schedule from IMDS
--UPDATE_SCHEDULEDOW_JOB(SCHEDULEDOWIN, SCHEDULETIMEIN);
END upd_moc_emocconfigdata;
 
 
 
 
 
 
 
 
@
