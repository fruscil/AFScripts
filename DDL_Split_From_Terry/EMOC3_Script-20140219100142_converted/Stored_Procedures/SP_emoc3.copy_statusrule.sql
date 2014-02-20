--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_STATUSRULE" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT statuscodeid, transition2id,
             (SELECT statuscode
                FROM statuscode
               WHERE statuscode.statuscodeid =
                             statustransitionrule.statuscodeid)
                                                              AS statuscode1,
             (SELECT statuscode
                FROM statuscode
               WHERE statuscode.statuscodeid =
                            statustransitionrule.transition2id)
                                                              AS statuscode2
        FROM statustransitionrule
       WHERE mocid = 0;

   myrec             mycur%ROWTYPE;
   v_statuscodeid1   NUMBER;
   v_statuscodeid2   NUMBER;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      SELECT statuscodeid
        INTO v_statuscodeid1
        FROM statuscode
       WHERE statuscode = myrec.statuscode1 AND mocid = mocidin;

      SELECT statuscodeid
        INTO v_statuscodeid2
        FROM statuscode
       WHERE statuscode = myrec.statuscode2 AND mocid = mocidin;

      INSERT INTO statustransitionrule
                  (statruleid, statuscodeid, transition2id,
                   mocid
                  )
           VALUES (seq_statusrule.NEXTVAL, v_statuscodeid1, v_statuscodeid2,
                   mocidin
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
END copy_statusrule;

 
 
 
 
 
 
 
 
@
