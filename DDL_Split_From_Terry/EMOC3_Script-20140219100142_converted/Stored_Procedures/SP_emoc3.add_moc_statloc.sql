--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_STATLOC" (
   stationlocin              stationloccodes.stationloc%TYPE,
   stalocnarrativein         stationloccodes.stalocnarrative%TYPE,
   camsinitflag              INTEGER,
   startdatein               stationloccodes.startdate%TYPE,
   stopdatein                stationloccodes.stopdate%TYPE,
   mocidin                   stationloccodes.mocid%TYPE,
   staloccodeid        OUT   stationloccodes.staloccodeid%TYPE
)
AS
BEGIN
   SELECT seq_stationlocs.NEXTVAL
     INTO staloccodeid
     FROM DUAL;

   INSERT INTO stationloccodes
               (staloccodeid, stationloc, stalocnarrative, mocid,
                startdate, stopdate
               )
        VALUES (staloccodeid, stationlocin, stalocnarrativein, mocidin,
                startdatein, stopdatein
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE stationloccodes
         SET camsinit = SYSDATE
       WHERE staloccodeid = staloccodeid;
   END IF;
END add_moc_statloc;

 
 
 
 
 
 
 
 
@
