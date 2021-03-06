--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_INTERFACELOG" (
P_CURSOR OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT INTERFACELOGID,
    INTERFACELOG.INTERFACECONTROLID,
    INTERFACENAME,
    INTERFACEENABLED,
    TRANSACTIONTYPE,
    TO_CHAR(TIMEOFINSERT,'MM/DD/YY HH24:MI') "INSERTED",
    INTERFACELOG.AIRCRAFTID,
   (SELECT MISEQUIPID
    FROM AIRCRAFT
  WHERE AIRCRAFTID = INTERFACELOG.AIRCRAFTID) AS EquipId,
    XMLIN,
    XMLOUT,
    (SELECT FULLNAME
       FROM USERS
    WHERE USERS.USERID = INTERFACELOG.USERID) AS CONTROLLER
 FROM INTERFACELOG, INTERFACECONTROL
WHERE INTERFACELOG.INTERFACECONTROLID = INTERFACECONTROL.INTERFACECONTROLID
ORDER BY INTERFACELOGID DESC;

END GET_INTERFACELOG;

 
 
 
 
 
 
 
 
@
