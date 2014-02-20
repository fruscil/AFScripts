--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEL_ORG" (
   orgidin   organizations.organizationsid%TYPE
)
AS
BEGIN
   DELETE      workcenters
         WHERE porgid IN (SELECT orgid
                            FROM organizations
                           WHERE organizationsid = orgidin);

   UPDATE squadrons
      SET organization_id = NULL
    WHERE organization_id IN (SELECT orgid
                                FROM organizations
                               WHERE organizationsid = orgidin);

   UPDATE squadrons
      SET organizationsid = NULL
    WHERE organizationsid = orgidin;

   DELETE      organizations
         WHERE organizationsid = orgidin;
END del_org;
 
 
 
 
 
 
 
 
@
