--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WEAPONSCLASSES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   weaponsclassid, weaponsclass, defaultval, mocid
          FROM weaponsclass
         WHERE mocid = mocidin
      ORDER BY weaponsclass;
END get_moc_weaponsclasses;

 
 
 
 
 
 
 
 
@
