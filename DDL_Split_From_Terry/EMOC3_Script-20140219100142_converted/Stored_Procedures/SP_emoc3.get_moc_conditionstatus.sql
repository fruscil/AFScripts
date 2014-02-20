--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CONDITIONSTATUS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
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
                                                               AS colorvalue,
               conditionstatus.mocid
          FROM conditionstatus
         WHERE conditionstatus.mocid = mocidin
      ORDER BY conditionstatus.conditionstatus ASC;
END get_moc_conditionstatus;

 
 
 
 
 
 
 
 
@
