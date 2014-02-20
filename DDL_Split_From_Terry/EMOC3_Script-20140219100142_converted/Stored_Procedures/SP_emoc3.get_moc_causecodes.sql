--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_CAUSECODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   causecodes.causecodeid, causecodes.causecode,
               causecodes.description, mocid,
               NVL (defaultcausecode, 0) AS defaultcausecode,
               NVL (causecodes.causecodetype, 'O') AS causecodetype
          FROM causecodes
         WHERE mocid = mocidin
      ORDER BY causecodes.causecode ASC;
END get_moc_causecodes;
 
 
 
 
 
 
 
 
@
