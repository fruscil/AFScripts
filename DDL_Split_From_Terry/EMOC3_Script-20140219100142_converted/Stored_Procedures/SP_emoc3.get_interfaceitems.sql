--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACEITEMS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   interfacecontrolid, interfaceitemid, itemname,
               itemdescription, itemenabled, tric, lastupdate,
               (SELECT fullname
                  FROM users
                 WHERE userid = interfaceitems.lastupdatedby) AS updatedby
          FROM interfaceitems
      ORDER BY itemname;
END get_interfaceitems;

 
 
 
 
 
 
 
 
@
