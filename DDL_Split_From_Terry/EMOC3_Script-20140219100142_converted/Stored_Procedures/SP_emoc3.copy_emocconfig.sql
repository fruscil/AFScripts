--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_EMOCCONFIG" (
   mocidin          moc.mocid%TYPE,
   emocconfigidin   emocconfig.emocconfigid%TYPE
)
AS
/******************************************************************************
   NAME:       CopyEmocConfig
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/15/2005   R.McBride       Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     CopyEmocConfig
      Sysdate:         5/15/2005
      Date and Time:   5/15/2005, 4:57:53 PM, and 5/15/2005 4:57:53 PM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
   v_timezonefactor   emocconfig.timezonefactor%TYPE;
   v_timezonehours    emocconfig.timezonehours%TYPE;
   v_gmtfactor        emocconfig.gmtfactor%TYPE;
   v_gmthours         emocconfig.gmthours%TYPE;
   v_version          emocconfig.VERSION%TYPE;
   v_basename         emocconfig.basename%TYPE;
   v_etictimer        emocconfig.etictimer%TYPE;
   v_archivedom       emocconfig.archivedom%TYPE;
   v_archivepurgemo   emocconfig.archivepurgemo%TYPE;
   v_scheduledow      emocconfig.scheduledow%TYPE;
   v_scheduletime     emocconfig.scheduletime%TYPE;
   v_updatedby        emocconfig.lastupdatedby%TYPE;
   v_schedulepath     emocconfig.schedulepath%TYPE;
   v_templatepath     emocconfig.templatepath%TYPE;
   v_archivepath      emocconfig.archivepath%TYPE;
   v_headercolor      emocconfig.headercolor%TYPE;
   v_smtpserver       emocconfig.smtpserver%TYPE;
   v_docspath         emocconfig.docspath%TYPE;
   v_proxyurl         emocconfig.proxyurl%TYPE;
   v_proxyuserid      emocconfig.proxyuserid%TYPE;
   v_proxypassword    emocconfig.proxypassword%TYPE;
   v_proxyenabled     emocconfig.proxyenabled%TYPE;
   v_emochtml1        emocconfig.emochtml1%TYPE;
   emocconfigidnew    emocconfig.emocconfigid%TYPE;
BEGIN
   SELECT timezonefactor, timezonehours, gmtfactor, gmthours,
          VERSION, basename, etictimer, archivedom,
          archivepurgemo, scheduledow, scheduletime, schedulepath,
          templatepath, archivepath, docspath, headercolor,
          smtpserver, proxyurl, proxyuserid, proxypassword,
          proxyenabled, emochtml1
     INTO v_timezonefactor, v_timezonehours, v_gmtfactor, v_gmthours,
          v_version, v_basename, v_etictimer, v_archivedom,
          v_archivepurgemo, v_scheduledow, v_scheduletime, v_schedulepath,
          v_templatepath, v_archivepath, v_docspath, v_headercolor,
          v_smtpserver, v_proxyurl, v_proxyuserid, v_proxypassword,
          v_proxyenabled, v_emochtml1
     FROM emocconfig
    WHERE emocconfigid = emocconfigidin;

   SELECT seq_emocconfig.NEXTVAL
     INTO emocconfigidnew
     FROM DUAL;

   INSERT INTO emoc3.emocconfig
               (timezonefactor, timezonehours, gmtfactor, gmthours,
                VERSION, basename, etictimer, archivedom,
                archivepurgemo, scheduledow, scheduletime,
                schedulepath, templatepath, archivepath, docspath,
                headercolor, smtpserver, proxyurl, proxyuserid,
                proxypassword, proxyenabled, emochtml1, mocid,
                emocconfigid
               )
        VALUES (v_timezonefactor, v_timezonehours, v_gmtfactor, v_gmthours,
                v_version, v_basename, v_etictimer, v_archivedom,
                v_archivepurgemo, v_scheduledow, v_scheduletime,
                v_schedulepath, v_templatepath, v_archivepath, v_docspath,
                v_headercolor, v_smtpserver, v_proxyurl, v_proxyuserid,
                v_proxypassword, v_proxyenabled, v_emochtml1, mocidin,
                emocconfigidnew
               );

   COMMIT;
END copy_emocconfig;

 
 
 
 
 
 
 
 
@
