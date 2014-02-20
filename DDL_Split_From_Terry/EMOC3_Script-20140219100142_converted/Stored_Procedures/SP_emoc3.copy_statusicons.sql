--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_STATUSICONS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT statusimageid, missiondesignseries, statuscode, icon_type
        FROM mocstatusicons
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   DELETE FROM mocstatusicons
         WHERE mocid = mocidin;

   COMMIT;

   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO mocstatusicons
                  (statusimageid, missiondesignseries,
                   statuscode, icon_type, mocid
                  )
           VALUES (myrec.statusimageid, myrec.missiondesignseries,
                   myrec.statuscode, myrec.icon_type, mocidin
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;

   COMMIT;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END copy_statusicons;
 
 
 
 
 
 
 
 
@
