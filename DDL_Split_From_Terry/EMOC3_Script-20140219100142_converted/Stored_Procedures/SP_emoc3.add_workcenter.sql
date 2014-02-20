--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WORKCENTER" (
   workcenternamein         workcenters.workcentername%TYPE,
   workcentercodein         workcenters.workcentercode%TYPE,
   organizationidin         workcenters.porgid%TYPE,
   wingidin                 workcenters.wingid%TYPE,
   camsinitflag             INTEGER,
   lastupdatebyin           INTEGER,
   workcenterid       OUT   workcenters.workcenterid%TYPE
)
AS
BEGIN
   SELECT seq_workcenters.NEXTVAL
     INTO workcenterid
     FROM DUAL;

   INSERT INTO workcenters
               (workcenterid, workcentername, workcentercode,
                porgid, wingid, lastupdateby, lastupdate
               )
        VALUES (workcenterid, workcenternamein, workcentercodein,
                organizationidin, wingidin, lastupdatebyin, SYSDATE
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE workcenters
         SET camsinit = SYSDATE
       WHERE workcenterid = workcenterid;
   END IF;
END add_workcenter;

 
 
 
 
 
 
 
 
@
