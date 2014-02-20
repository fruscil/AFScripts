--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CREWCHIEF_FROMIMDS" (aircraftidin NUMBER,
                                                     mocidin      NUMBER,
                                                     crewchiefin  crewchiefs.crewchief%TYPE) AS
  gradecodevar   VARCHAR2(3);
  crewchiefvar   VARCHAR2(50);
  crewchiefidvar NUMBER;
  tmpvar         NUMBER;
BEGIN
  IF (LENGTH(crewchiefin) > 3) THEN
    gradecodevar := SUBSTR(crewchiefin, 1, 3);
    crewchiefvar := SUBSTR(crewchiefin, 4);

    SELECT COUNT(*)
      INTO tmpvar
      FROM crewchiefs
     WHERE RTRIM(crewchief) = RTRIM(crewchiefvar)
       AND mocid = mocidin;

    IF (tmpvar = 0) THEN
      SELECT seq_crewchiefs.NEXTVAL INTO crewchiefidvar FROM DUAL;

      INSERT INTO crewchiefs
        (crewchiefid, crewchief, defaultcrewchief, picture, rankid)
      VALUES
        (crewchiefidvar,
         crewchiefvar,
         0,
         NULL,
         (SELECT rankid
            FROM ranks r, gradecodes g
           WHERE g.rankcode = r.rankcode
             AND r.mocid = mocidin));

      COMMIT;
    ELSE
      SELECT crewchiefid
        INTO crewchiefidvar
        FROM crewchiefs
       WHERE RTRIM(crewchief) = RTRIM(crewchiefvar)
         AND mocid = mocidin;
    END IF;

    UPDATE aircraft
       SET crewchiefid = crewchiefidvar
     WHERE aircraftid = aircraftidin;
  END IF;
END add_crewchief_fromimds;
 
 
 
 
 
 
 
 
@
