--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPLOADSCHEDULE" (
      p_schedule        schedulescsv.schedule%TYPE,
      p_title            schedulescsv.schedulename%TYPE,
      p_mocid            schedulescsv.mocid%TYPE
   )
IS
  schedulein   INTEGER;

BEGIN
   SELECT seq_schedulecsv.NEXTVAL
     INTO schedulein
     FROM DUAL;
      INSERT INTO schedulescsv
                  (schedulecsvid, schedule, schedulename, mocid, dateuploaded)
           VALUES (schedulein, p_schedule, p_title, p_mocid, SYSDATE);
END UPLOADSCHEDULE;
 
 
 
 
 
 
 
 
@
