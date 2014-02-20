--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_IMDSLOGINS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   useridin         imdslogins.userid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   imdsloginid, imdslogin,
               emoc_security.decrypt (imdspassword) AS imdspassword,
               imdsaccount, imdsprojectid, imdsterminalid, wingid,
               (SELECT (wingname || ', ' || unitid)
                  FROM wings
                 WHERE wingid = imdslogins.wingid) AS wingandunit,
               (SELECT mocid
                  FROM wings
                 WHERE wings.wingid = imdslogins.wingid) AS mocid
          FROM imdslogins
         WHERE userid = useridin
      ORDER BY imdslogin;
END get_imdslogins;
 
 
 
 
 
 
 
 
@
