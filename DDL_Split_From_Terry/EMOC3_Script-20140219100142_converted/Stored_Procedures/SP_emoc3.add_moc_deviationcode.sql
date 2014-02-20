--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_DEVIATIONCODE" (
   deviationcode                deviationcodes.deviationcode%TYPE,
   deviationdescription         deviationcodes.deviationdescription%TYPE,
   defaultdeviationcode         deviationcodes.defaultdeviationcode%TYPE,
   colorid                      deviationcodes.colorid%TYPE,
   camsinitflag                 INTEGER,
   mocidin                      deviationcodes.mocid%TYPE,
   deviationcodeid        OUT   deviationcodes.deviationcodeid%TYPE
)
AS
   coloridin   INTEGER;
BEGIN
   SELECT seq_deviationcodes.NEXTVAL
     INTO deviationcodeid
     FROM DUAL;

   IF (colorid IS NULL)
   THEN
      SELECT MIN (colorid)
        INTO coloridin
        FROM colors
       WHERE mocid = mocidin;
   ELSE
      coloridin := colorid;
   END IF;

   INSERT INTO deviationcodes
               (deviationcodeid, deviationcode, deviationdescription,
                defaultdeviationcode, colorid, mocid
               )
        VALUES (deviationcodeid, deviationcode, deviationdescription,
                defaultdeviationcode, coloridin, mocidin
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE deviationcodes
         SET camsinit = SYSDATE
       WHERE deviationcodeid = deviationcodeid;
   END IF;
END add_moc_deviationcode;
 
 
 
 
 
 
 
 
@
