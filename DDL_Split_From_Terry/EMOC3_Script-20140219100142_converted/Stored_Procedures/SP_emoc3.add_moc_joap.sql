--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_JOAP" (
   joapcode                joap.joapcode%TYPE,
   joapdescription         joap.joapdescription%TYPE,
   landing                 joap.landing%TYPE,
   redcapstatus            joap.redcapstatus%TYPE,
   defaultjoap             joap.defaultjoap%TYPE,
   colorrulesid            joap.colorrulesid%TYPE,
   mocidin                 joap.mocid%TYPE,
   joapid            OUT   joap.joapid%TYPE
)
AS
BEGIN
   SELECT seq_joaps.NEXTVAL
     INTO joapid
     FROM DUAL;

   INSERT INTO joap
               (joapid, joapcode, joapdescription, landing, redcapstatus,
                defaultjoap, colorrulesid, mocid
               )
        VALUES (joapid, joapcode, joapdescription, landing, redcapstatus,
                defaultjoap, colorrulesid, mocidin
               );
END add_moc_joap;

 
 
 
 
 
 
 
 
@
