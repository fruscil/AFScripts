--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACEITEMSHISTORY" (
   p_cursor            OUT   emoc_types.emoc_cursor,
   interfaceitemidin         interfaceitemshistory.interfaceitemid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   statuschangetime,
               (SELECT fullname
                  FROM users
                 WHERE users.userid =
                          interfaceitemshistory.statuschangeby)
                                                            AS statuschangby,
               currentstatus
          FROM interfaceitemshistory
         WHERE interfaceitemid = interfaceitemidin
      ORDER BY statuschangetime DESC;
END get_interfaceitemshistory;

 
 
 
 
 
 
 
 
@
