--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_JOAP" (
   joapcode                joap.joapcode%TYPE,
   joapdescription         joap.joapdescription%TYPE,
   landing                 joap.landing%TYPE,
   redcapstatus            joap.redcapstatus%TYPE,
   defaultjoap             joap.defaultjoap%TYPE,
   colorrulesid            joap.colorrulesid%TYPE,
   joapid            OUT   joap.joapid%TYPE
)
AS
BEGIN
   SELECT seq_joaps.NEXTVAL
     INTO joapid
     FROM DUAL;

   INSERT INTO joap
               (joapid, joapcode, joapdescription, landing, redcapstatus,
                defaultjoap, colorrulesid
               )
        VALUES (joapid, joapcode, joapdescription, landing, redcapstatus,
                defaultjoap, colorrulesid
               );
END add_joap;

 
 
 
 
 
 
 
 
@
