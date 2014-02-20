--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_WINGS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   wingid, wingname, unitid, commandcode, elc, defaultwing,
               scheduledow, scheduletime, mocid,
      timezonefactor,
      timezonehours,
      gmtfactor,
      gmthours,
      imdsinterfaceon
          FROM wings
         WHERE mocid = mocidin
      ORDER BY wingname;
END get_moc_wings;
 
 
 
 
 
 
 
 
@
