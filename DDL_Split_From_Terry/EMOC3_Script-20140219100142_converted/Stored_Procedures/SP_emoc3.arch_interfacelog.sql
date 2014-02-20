--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_INTERFACELOG" (
ARCHDATE DATE
)
AS
BEGIN


--Archive record if older than cutoff date.
INSERT INTO EMOCAUX.INTERFACELOG

SELECT INTERFACELOGID,
    INTERFACECONTROLID,
    TRANSACTIONTYPE,
    TIMEOFINSERT,
    EXPIRATION,
    CAMSVALIDATED,
    CANCELFLAG,
    USERID,
    null,
    null,
    AIRCRAFTID,
    null,
    null,
    null,
    XMLIN,
    XMLOUT,
    null,
    PARSED,
    SYSDATE AS ARCHIVEDATE

FROM INTERFACELOG
WHERE TIMEOFINSERT < ARCHDATE;

--Then delete
DELETE INTERFACELOG
WHERE TIMEOFINSERT < ARCHDATE;

--Commit only if both successful
COMMIT;

end;
 
 
 
 
 
 
 
 
@
