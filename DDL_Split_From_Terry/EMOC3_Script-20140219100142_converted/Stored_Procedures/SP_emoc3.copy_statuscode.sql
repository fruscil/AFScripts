--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_STATUSCODE" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT statuscode, ordernumber, iconname, defaultstatuscode, lastflown,
             flying, takeoff, statuscodelabel, allowsortieupdate, isrequired
        FROM statuscode
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO statuscode
                  (statuscodeid, statuscode,
                   ordernumber, iconname,
                   defaultstatuscode, lastflown, flying,
                   takeoff, statuscodelabel,
                   allowsortieupdate, isrequired, mocid
                  )
           VALUES (seq_statuscode.NEXTVAL, myrec.statuscode,
                   myrec.ordernumber, myrec.iconname,
                   myrec.defaultstatuscode, myrec.lastflown, myrec.flying,
                   myrec.takeoff, myrec.statuscodelabel,
                   myrec.allowsortieupdate, myrec.isrequired, mocidin
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
END copy_statuscode;

 
 
 
 
 
 
 
 
@
