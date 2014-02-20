--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLSTATUSCODESBYMISSION" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   scheduleidin         schedulestatus.scheduleid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   schedulestatus.scheduleid,
               schedulestatus.schedulestatusid,
               schedulestatus.statuscodeid,
               TO_CHAR (schedulestatus.statustime,
                        'MM/DD/YYYY HH24:MI:SS'
                       ) statustime,
               schedulestatus.statustype, statuscode.statuscode
          FROM schedulestatus, statuscode
         WHERE (    (schedulestatus.statuscodeid = statuscode.statuscodeid(+))
                AND (schedulestatus.statustype = 0)
                AND (schedulestatus.scheduleid = scheduleidin)
               )
      ORDER BY statuscode, schedulestatus.statustime DESC;
END spgetallstatuscodesbymission;
 
 
 
 
 
 
 
 
@
