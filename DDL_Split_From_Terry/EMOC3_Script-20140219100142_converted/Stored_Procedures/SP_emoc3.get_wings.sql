--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WINGS" (p_cursor OUT emoc_types.emoc_cursor)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   wingid, wingname, unitid, commandcode, elc, defaultwing,
               scheduledow, scheduletime
          FROM wings
      ORDER BY wingname;
END get_wings;

 
 
 
 
 
 
 
 
@
