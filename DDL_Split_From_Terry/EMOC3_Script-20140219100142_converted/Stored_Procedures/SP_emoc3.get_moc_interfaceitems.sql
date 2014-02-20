--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_INTERFACEITEMS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   interfacecontrolid, interfaceitemid, itemname,
               itemdescription, itemenabled, tric, lastupdate,
               (SELECT fullname
                  FROM users
                 WHERE userid = interfaceitems.lastupdatedby) AS updatedby,
               mocid
          FROM interfaceitems
         WHERE mocid = mocidin
      ORDER BY itemname;
END get_moc_interfaceitems;

 
 
 
 
 
 
 
 
@
