--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACEHISTORY" (
   p_cursor               OUT   emoc_types.emoc_cursor,
   interfacecontrolidin         interfacehistory.interfacecontrolid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   statuschangetime,
               (SELECT fullname
                  FROM users
                 WHERE users.userid =
                             interfacehistory.statuschangeby)
                                                            AS statuschangby,
               currentstatus, currentenabled
          FROM interfacehistory
         WHERE interfacecontrolid = interfacecontrolidin
      ORDER BY statuschangetime DESC;
END get_interfacehistory;

 
 
 
 
 
 
 
 
@
