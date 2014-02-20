--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_STATUSCODES" AS
  /* Delete MOC Status Icons By Status Code and Moc Id */
  PROCEDURE DeleteMocStatusIcons(p_statuscode mocstatusicons.statuscode%TYPE,
                                 p_mocId      mocstatusicons.mocid%TYPE);

  /* Delete Status Code By Id */
  PROCEDURE DeleteStatusCodeById(p_statuscodeid statuscode.statuscodeid%TYPE,
                                 p_mocId        statuscode.mocid%TYPE);

  /* Get Status Code By Status Cide Id */
  FUNCTION GetStatusCode(p_statusCodeId statuscode.statuscodeid%TYPE)
    return VARCHAR2;

END emoc_statuscodes;
 
 
 
 
 
 
 
 
@

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 47830
	Relative Current Chunk Line Number: 47830
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '= p_statusCodeId; return vStatusCode;\nend;\n\nEND emoc_statuscodes;\n\n[CREATE]'
------------

The following statement (from line 47805 to 47828) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_STATUSCODES" AS
/* Delete MOC Status Icons By Status Code and Moc Id */
PROCEDURE DeleteMocStatusIcons(p_statuscode mocstatusicons.statuscode%TYPE, p_mocId mocstatusicons.mocid%TYPE) AS
BEGIN
DELETE FROM mocstatusicons t WHERE t.statuscode = p_statuscode AND t.mocid = p_mocId;
END DeleteMocStatusIcons;

/* Delete Status Code By Status Code Id */
PROCEDURE DeleteStatusCodeById(p_statuscodeid statuscode.statuscodeid%TYPE, p_mocId statuscode.mocid%TYPE) AS
v_StatusCode varchar2(50);
BEGIN
v_StatusCode := emoc_statuscodes.GetStatusCode(p_statuscodeid); DELETE statuscode t WHERE t.statuscodeid = p_statuscodeid;

emoc_statuscodes.DeleteMocStatusIcons(v_StatusCode, p_mocId);
END DeleteStatusCodeById;

/* Get Status Code By Status Cide Id */
FUNCTION GetStatusCode(p_statusCodeId statuscode.statuscodeid%TYPE) RETURN varchar2 AS
vStatusCode VARCHAR2(50);
begin
select t.statuscode into vStatusCode from statuscode t where t.statuscodeid = p_statusCodeId; return vStatusCode;
end;

END emoc_statuscodes@
