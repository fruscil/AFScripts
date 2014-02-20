--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CONDITIONSTATUS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   conditionstatus.condstatid, conditionstatus.conditionstatus,
               conditionstatus.conditionlevel, conditionstatus.flyable,
               conditionstatus.colorid,
               (SELECT colors.colorname
                  FROM colors
                 WHERE colors.colorid = conditionstatus.colorid)
                                                                AS colorname,
               (SELECT colors.colorvalue
                  FROM colors
                 WHERE colors.colorid = conditionstatus.colorid)
                                                               AS colorvalue
          FROM conditionstatus
      ORDER BY conditionstatus.conditionstatus ASC;
END get_conditionstatus;

 
 
 
 
 
 
 
 
@
