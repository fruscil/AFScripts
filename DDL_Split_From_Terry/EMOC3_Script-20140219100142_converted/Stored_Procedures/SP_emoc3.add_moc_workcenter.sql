--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WORKCENTER" (
   workcenternamein         workcenters.workcentername%TYPE,
   workcentercodein         workcenters.workcentercode%TYPE,
   organizationidin         workcenters.porgid%TYPE,
   wingidin                 workcenters.wingid%TYPE,
   camsinitflag             INTEGER,
   lastupdatebyin           INTEGER,
   mocidin                  workcenters.mocid%TYPE,
   workcenterid       OUT   workcenters.workcenterid%TYPE
)
AS
BEGIN
   SELECT seq_workcenters.NEXTVAL
     INTO workcenterid
     FROM DUAL;

   INSERT INTO workcenters
               (workcenterid, workcentername, workcentercode,
                porgid, wingid, lastupdateby, lastupdate, mocid
               )
        VALUES (workcenterid, workcenternamein, workcentercodein,
                organizationidin, wingidin, lastupdatebyin, SYSDATE, mocidin
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE workcenters
         SET camsinit = SYSDATE
       WHERE workcenterid = workcenterid;
   END IF;
END add_moc_workcenter;

 
 
 
 
 
 
 
 
@
