--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WING" (
   wingnamein                wings.wingname%TYPE,
   unitidin                  wings.unitid%TYPE,
   commandcodein             wings.commandcode%TYPE,
   elcin                     wings.elc%TYPE,
   defaultwingin             INTEGER,
   lastupdatebyin            INTEGER,
   mocidin                   wings.mocid%TYPE,
   wingidout           OUT   wings.wingid%TYPE,
   scheduledowin             wings.scheduledow%TYPE,
   scheduletimein            wings.scheduletime%TYPE,
   timezonefactorin          wings.timezonefactor%TYPE,
   timezonehoursin           wings.timezonehours%TYPE,
   gmtfactorin               wings.gmtfactor%TYPE,
   gmthoursin                wings.gmthours%TYPE,
   imdsinterfaceonin         wings.imdsinterfaceon%TYPE
)
AS
BEGIN
   SELECT seq_wings.NEXTVAL
     INTO wingidout
     FROM DUAL;

   INSERT INTO wings
               (wingid, wingname, unitid, commandcode, elc,
                lastupdate, lastupdateby, mocid, scheduledow,
                scheduletime, timezonefactor, timezonehours,
                gmtfactor, gmthours, imdsinterfaceon
               )
        VALUES (wingidout, wingnamein, unitidin, commandcodein, elcin,
                SYSDATE, lastupdatebyin, mocidin, scheduledowin,
                scheduletimein, timezonefactorin, timezonehoursin,
                gmtfactorin, gmthoursin, imdsinterfaceonin
               );
END add_moc_wing;
 
 
 
 
 
 
 
 
@
