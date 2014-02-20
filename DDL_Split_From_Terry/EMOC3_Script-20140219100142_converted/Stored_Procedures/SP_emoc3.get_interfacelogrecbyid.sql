--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACELOGRECBYID" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   logidin          interfacelog.interfacelogid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT interfacelogid, interfacelog.interfacecontrolid,
             transactiontype,
             TO_CHAR (timeofinsert, 'MM/DD/YY HH24:MI') "INSERTED",
             interfacelog.aircraftid, interfacelog.userid,
             (SELECT misequipid
                FROM aircraft
               WHERE aircraftid = interfacelog.aircraftid) AS equipid, xmlin,
             xmlout, squadronid,
             (SELECT squadronname
                FROM squadrons
               WHERE squadrons.squadronid =
                                          interfacelog.squadronid)
                                                                 AS squadron,
             (SELECT fullname
                FROM users
               WHERE users.userid = interfacelog.userid) AS controller,
             parsed, rejected, corrected, correctiveaction, updateobject,
             (SELECT tric
                FROM interfaceitems
               WHERE itemname = interfacelog.transactiontype 
        AND mocid = interfacelog.MOCID) AS tric
        FROM interfacelog
       WHERE interfacelog.interfacelogid = logidin;
END get_interfacelogrecbyid;
 
 
 
 
 
 
 
 
@
