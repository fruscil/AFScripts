--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_INTERFACELOG" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          interfacelog.mocid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   interfacelogid, interfacelog.interfacecontrolid,
               interfacename, interfaceenabled, transactiontype,
               TO_CHAR (timeofinsert, 'MM/DD/YY HH24:MI') "INSERTED",
               interfacelog.aircraftid,
               (SELECT misequipid
                  FROM aircraft
                 WHERE aircraftid = interfacelog.aircraftid) AS equipid,
               xmlin, xmlout,
               (SELECT fullname
                  FROM users
                 WHERE users.userid = interfacelog.userid) AS controller,
               (SELECT tric
                  FROM interfaceitems
                 WHERE itemname = interfacelog.transactiontype) AS tric
          FROM interfacelog, interfacecontrol
         WHERE interfacelog.mocid = mocidin
           AND interfacelog.interfacecontrolid =
                                           interfacecontrol.interfacecontrolid
      ORDER BY interfacelogid DESC;
END get_moc_interfacelog;
 
 
 
 
 
 
 
 
@
