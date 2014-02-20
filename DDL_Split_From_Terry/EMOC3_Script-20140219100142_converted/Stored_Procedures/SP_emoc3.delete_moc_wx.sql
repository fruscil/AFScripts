--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_WX" (mocidin moc.mocid%TYPE)
AS
   CURSOR wxcur
   IS
      SELECT wxcodeid
        FROM wx
       WHERE mocid = mocidin;

   wxrec   wxcur%ROWTYPE;
BEGIN
   OPEN wxcur;

   FETCH wxcur
    INTO wxrec;

   WHILE wxcur%FOUND
   LOOP
      UPDATE schedule
         SET wxcodeid = NULL
       WHERE wxcodeid = wxrec.wxcodeid;

      FETCH wxcur
       INTO wxrec;
   END LOOP;

   CLOSE wxcur;

   DELETE      wx
         WHERE mocid = mocidin;

   COMMIT;
END delete_moc_wx;
 
 
 
 
 
 
 
 
@
