--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_SCHEDULESTATUS" (archdate DATE)
AS
   CURSOR pcursor
   IS
      SELECT   schedulestatusid, schedulestatus.scheduleid, statuscodeid,
               statustime, statustype, userid, fuelstatusid, SYSDATE AS archivedate
          FROM schedulestatus JOIN schedule ON schedule.scheduleid =
                                                             schedulestatus.scheduleid
         WHERE schedday < archdate
      ORDER BY schedulestatus.schedulestatusid;

   prec     pcursor%ROWTYPE;
   status   VARCHAR2(50);
BEGIN
   OPEN pcursor;

   FETCH pcursor
    INTO prec;

   WHILE pcursor%FOUND
   LOOP
      IF prec.statustype = 0
      THEN
         BEGIN
            SELECT statuscode
              INTO status
              FROM statuscode
             WHERE statuscodeid = prec.statuscodeid;
         END;
      ELSE
         BEGIN
            SELECT fuelstatus
              INTO status
              FROM fuel
             WHERE fuelstatusid = prec.fuelstatusid;
         END;
      END IF;

      INSERT INTO emocaux.schedulestatus
                  (userid, statustype, statustime, statuscode,
                   schedulestatusid, scheduleid, archivedate
                  )
           VALUES (prec.userid, prec.statustype, prec.statustime, status,
                   prec.schedulestatusid, prec.scheduleid, SYSDATE
                  );

      DELETE FROM schedulestatus
            WHERE schedulestatusid = prec.schedulestatusid;

      FETCH pcursor
       INTO prec;
   END LOOP;

   CLOSE pcursor;

--Commit only if both successful
   COMMIT;
END;
 
 
 
 
 
 
 
 
@
