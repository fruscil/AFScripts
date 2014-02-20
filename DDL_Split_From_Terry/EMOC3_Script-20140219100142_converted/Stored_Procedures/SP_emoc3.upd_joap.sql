--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_JOAP" (
   joapcodein          joap.joapcode%TYPE,
   joapdescriptionin   joap.joapdescription%TYPE,
   landingin           joap.landing%TYPE,
   redcapstatusin      joap.redcapstatus%TYPE,
   defaultjoapin       joap.defaultjoap%TYPE,
   colorrulesidin      joap.colorrulesid%TYPE,
   joapidin            joap.joapid%TYPE
)
AS
BEGIN
   UPDATE joap
      SET joapcode = joapcodein,
          joapdescription = joapdescriptionin,
          landing = landingin,
          redcapstatus = redcapstatusin,
          defaultjoap = defaultjoapin,
          colorrulesid = colorrulesidin
    WHERE joapid = joapidin;
END upd_joap;

 
 
 
 
 
 
 
 
@
