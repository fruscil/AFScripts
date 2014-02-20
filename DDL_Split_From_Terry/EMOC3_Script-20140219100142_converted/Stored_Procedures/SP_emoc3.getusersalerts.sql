--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GETUSERSALERTS" (
   useridin         useralert.userid%TYPE,
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   alertid, TO_CHAR (received, 'MM/DD/YYYY') AS dreceived,
               TO_CHAR (received, 'HH24MI') AS treceived,
               (SELECT fullname
                  FROM users
                 WHERE users.userid = useralert.sentby) AS fromuser,
               alertmsg, priority, sentby
          FROM useralert
         WHERE userid = useridin AND acknowledged IS NULL
      ORDER BY priority DESC, dreceived DESC, treceived DESC;
END getusersalerts;

 
 
 
 
 
 
 
 
@
