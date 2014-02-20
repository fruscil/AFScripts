--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_STATLOC" (
   stationlocin        stationloccodes.stationloc%TYPE,
   stalocnarrativein   stationloccodes.stalocnarrative%TYPE,
   staloccodeidin      stationloccodes.staloccodeid%TYPE,
   startdatein         stationloccodes.startdate%TYPE,
   stopdatein          stationloccodes.stopdate%TYPE
)
AS
BEGIN
   IF (staloccodeidin IS NOT NULL)
   THEN
      UPDATE stationloccodes
         SET stationloc = stationlocin,
             stalocnarrative = stalocnarrativein,
             startdate = startdatein,
             stopdate = stopdatein
       WHERE staloccodeid = staloccodeidin;
   END IF;
END upd_statloc;
 
 
 
 
 
 
 
 
@
