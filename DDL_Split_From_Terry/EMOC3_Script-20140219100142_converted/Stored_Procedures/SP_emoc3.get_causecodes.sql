--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_CAUSECODES" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   causecodes.causecodeid, causecodes.causecode,
               causecodes.description,
               NVL (defaultcausecode, 0) AS defaultcausecode,
               NVL (causecodes.causecodetype, 'M') AS causecodetype
          FROM causecodes
      ORDER BY causecodes.causecode ASC;
END get_causecodes;

 
 
 
 
 
 
 
 
@
