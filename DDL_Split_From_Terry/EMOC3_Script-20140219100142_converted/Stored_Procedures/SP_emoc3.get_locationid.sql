--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_LOCATIONID" (
   codein         locations.locationcode%TYPE,
   elcin          locations.elc%TYPE,
   idout    OUT   locations.locationid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   SELECT locationid
     INTO idout
     FROM locations
    WHERE locationcode = codein AND elc = elcin;
END get_locationid;
 
 
 
 
 
 
 
 
@
