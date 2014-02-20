--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."IMDSINITCREWCHIEF" (crewchiefin crewchiefs.crewchief%TYPE,
                   gradecodein         ranks.gradecode%TYPE,
                                                mocidin     crewchiefs.mocid%TYPE,
                                                crewchiefid OUT crewchiefs.crewchiefid%TYPE) AS
  rankidin INTEGER;
BEGIN
  SELECT seq_crewchiefs.NEXTVAL INTO crewchiefid FROM DUAL;

  SELECT r.rankid
    INTO rankidin
    FROM ranks r
   WHERE r.gradecode = gradecodein
     AND mocid = mocidin;

  IF rankidin IS NULL THEN
    BEGIN
      SELECT rankid
        INTO rankidin
        FROM ranks
       WHERE defaultrank = 1
         AND mocid = mocidin;
    END;
  END IF;

  IF rankidin IS NULL THEN
    SELECT MIN(rankid) INTO rankidin FROM ranks WHERE mocid = mocidin;
  END IF;

  INSERT INTO crewchiefs
    (crewchiefid, crewchief, rankid, mocid)
  VALUES
    (crewchiefid, crewchiefin, rankidin, mocidin);
END imdsinitcrewchief;
 
 
 
 
 
 
 
 
@
