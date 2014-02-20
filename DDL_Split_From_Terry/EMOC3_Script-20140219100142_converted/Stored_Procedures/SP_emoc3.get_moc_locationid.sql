--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_LOCATIONID" (
   codein          locations.locationcode%TYPE,
   elcin           locations.elc%TYPE,
   mocidin         locations.mocid%TYPE,
   idout     OUT   locations.locationid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   SELECT locationid
     INTO idout
     FROM (SELECT locationid
             FROM locations
            WHERE locationcode = codein
              AND elc = elcin
              AND mocid = mocidin
              AND ROWNUM < 2);
END get_moc_locationid;
 
 
 
 
 
 
 
 
@
