--<ScriptOptions statementTerminator="@"/>


CREATE TABLE  /* pagesizemin=8K rowlen=4575 */ "EMOCAUX"."AIRCRAFT" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:47 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:54 *** */
(
		"AIRCRAFTID" NUMBER(10,0),
		"TAILNUMBER" VARCHAR2(10),
		"SERIALNUMBER" VARCHAR2(50),
		"AIRCRAFTYEAR" VARCHAR2(4),
		"MISEQUIPID" VARCHAR2(10),
		"LASTFLOWNTIME" DATE,
		"LOCATION" VARCHAR2(50),
		"PHASEDATE" DATE,
		"ETIC" CHAR(9),
		"POSSESSIONCODE" CHAR(2),
		"PRIORITY" NUMBER(1,0),
		"CONDITIONCODE" CHAR(5),
		"FLIGHTNAME" VARCHAR2(50),
		"ARM_DEARM" NUMBER(1,0),
		"MULTICONFIGID" CHAR(4),
		"STATUSNARRATIVE" VARCHAR2(40),
		"LOCALOPTION" CHAR(8),
		"ASSIGNMENTCMD" CHAR(3),
		"ASSIGNMENTSTATUS" CHAR(2),
		"REPORTDESIG" CHAR(3),
		"RELATEDMDS" CHAR(7),
		"COMMANDCODE" CHAR(3),
		"AIRCRAFTMDS" VARCHAR2(15),
		"BLOCKNUMBER" CHAR(3),
		"LOCALCONFIGID" CHAR(4),
		"PHASEUNITS" NUMBER(10,0),
		"AIRCRAFTWUC" VARCHAR2(50),
		"ACFT_CONFIG_ID" CHAR(2),
		"REMARKS" VARCHAR2(4000),
		"STALOCCODE" CHAR(4),
		"TMEFLOWNSINCEPHASEDATE" NUMBER(10,1),
		"SQUADRONNAME" VARCHAR2(50),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE,
		"STATUSCODE" VARCHAR2(50),
		"SHORTTAILNUMBER" VARCHAR2(10),
		"FCF" NUMBER(1,0),
		"OCF" NUMBER(1,0),
		"HQCODE" CHAR(3)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=22 */ "EMOCAUX"."AIRCRAFTENGINEDATA" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:65 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:72 *** */
(
		"ENGINEDATAID" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"ENGINENUMBER" NUMBER(2,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=445 */ "EMOCAUX"."AIRCRAFTEXTRACTTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:109 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:115 *** */
(
		"AIRCRAFTEXTRACTTRXID" NUMBER(20,0),
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"MISSIONDESIGNSERIES" VARCHAR2(15),
		"MISSIONDESIGNSERIESBLOCK" VARCHAR2(3),
		"AIRCRAFTSERIALNUMBER" VARCHAR2(10),
		"MAINTENANCESTATUSCODE" VARCHAR2(4),
		"CONDITIONSTATUSCODE" VARCHAR2(1),
		"STARTDATE" VARCHAR2(10),
		"STARTTIME" VARCHAR2(10),
		"WORKUNITCODE" VARCHAR2(32),
		"JOBCONTROLNUMBER" VARCHAR2(12),
		"ESTIMATEDTIMEINCOMMISSION" VARCHAR2(20),
		"STATUSNARRATIVE" VARCHAR2(40),
		"LOCATIONCODE" VARCHAR2(10),
		"EQUIPMENTORGANIZATIONFLIGHTID" VARCHAR2(4),
		"MAINTENANCEREPAIRPRIORITY" VARCHAR2(1),
		"ARMED" VARCHAR2(1),
		"MULTIPLECONFIGURATIONID" VARCHAR2(10),
		"LOCALOPTION" VARCHAR2(10),
		"ASSIGNMENTSTATUSCODE" VARCHAR2(2),
		"POSSESSIONID" VARCHAR2(2),
		"GEOLOCCODE" VARCHAR2(4),
		"OWNINGMAJCOM" VARCHAR2(3),
		"LASTFLYDATE" VARCHAR2(20),
		"DEDICATEDCREWCHIEF" VARCHAR2(50),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"OWNINGWORKCENTER" VARCHAR2(4),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4246 */ "EMOCAUX"."CAUSECODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:137 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:143 *** */
(
		"CAUSECODETRXID" NUMBER(20,0),
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"CAUSECODE" VARCHAR2(3),
		"CAUSECODENARRATIVE" VARCHAR2(50),
		"CAUSECODETYPEINDICATOR" VARCHAR2(1),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"DEFERCODETYPEINDICATOR" VARCHAR2(1),
		"TRANSACTIONTYPE" VARCHAR2(50),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4179 */ "EMOCAUX"."DEVIATIONABORTTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:170 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:176 *** */
(
		"DEVIATIONABORTTRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"SORTIEMODIFIER" VARCHAR2(2),
		"MAINTENANCEEVENTID" VARCHAR2(10),
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(3),
		"DEVIATIONCODE" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"STOPDATE" VARCHAR2(7),
		"STOPTIME" VARCHAR2(4),
		"DEVIATIONREMARKS" VARCHAR2(4000),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=607 */ "EMOCAUX"."DEVIATIONCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:192 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:198 *** */
(
		"DEVIATIONCODETRXID" NUMBER(20,0) NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"DEVIATIONCODE" VARCHAR2(50),
		"DEVIATIONCODENARRATIVE" VARCHAR2(100),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(200),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4187 */ "EMOCAUX"."DEVIATIONCORRECTIONTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:226 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:232 *** */
(
		"DEVIATIONCORRECTTRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(3),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"SORTIEMODIFIER" VARCHAR2(2),
		"MAINTENANCEEVENTID" VARCHAR2(10),
		"DEVIATIONCODE" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"NEWDEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"STOPDATE" VARCHAR2(7),
		"STOPTIME" VARCHAR2(4),
		"DEVIATIONREMARKS" VARCHAR2(4000),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=132 */ "EMOCAUX"."DEVIATIONDELETETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:254 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:260 *** */
(
		"DEVIATIONDELETETRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(3),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"SORTIEMODIFIER" VARCHAR2(2),
		"MAINTENANCEEVENTID" VARCHAR2(10),
		"DEVIATIONCODE" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4179 */ "EMOCAUX"."DEVIATIONSTARTSTOPTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:287 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:293 *** */
(
		"DEVIATIONSTARTSTOPTRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"SORTIEMODIFIER" VARCHAR2(2),
		"MAINTENANCEEVENTID" VARCHAR2(10),
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(3),
		"DEVIATIONCODE" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"STOPDATE" VARCHAR2(7),
		"STOPTIME" VARCHAR2(4),
		"DEVIATIONREMARKS" VARCHAR2(4000),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=331 */ "EMOCAUX"."ENGINERUNLOG" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:321 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:328 *** */
(
		"ENGINELOGID" NUMBER(10,0),
		"MOCCONTROLLER" VARCHAR2(50),
		"RUNPERSON" VARCHAR2(50),
		"EMPLOYEENUMBER" VARCHAR2(50),
		"RUNDATE" DATE,
		"QUALCHECKED" NUMBER(1,0),
		"STANDBYFIRETRUCK" NUMBER(1,0),
		"REASON" VARCHAR2(50),
		"IDLESTART" VARCHAR2(5),
		"IDLESTOP" VARCHAR2(5),
		"MILSTART" VARCHAR2(5),
		"MILSTOP" VARCHAR2(5),
		"ABSTART" VARCHAR2(5),
		"ABSTOP" VARCHAR2(5),
		"MISUPDATED" NUMBER(1,0),
		"SPAPPROVAL" NUMBER(10,0),
		"TOWERRUNCLEARANCE" NUMBER(1,0),
		"ENGINEDATAID" NUMBER(10,0),
		"LASTUPDATE" DATE,
		"LASTUPDATEBY" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4141 */ "EMOCAUX"."EQUIPMENTLOCATIONUPDATETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:347 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:353 *** */
(
		"EQUIPMENTLOCATIONUPDATETRXID" NUMBER(20,0),
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"LOCATIONCODE" VARCHAR2(10),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=604 */ "EMOCAUX"."EVENTLOG" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:368 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:375 *** */
(
		"LOGID" NUMBER(10,0),
		"DATETIMEENTERED" DATE,
		"EVENTTYPE" VARCHAR2(50),
		"EVENTNARRATIVE" VARCHAR2(500),
		"SHORTTAILNUMBER" CHAR(10),
		"USERID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 10485760
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4312 */ "EMOCAUX"."GAINLOSSSTATUSUPDATETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:407 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:413 *** */
(
		"GAINLOSSSTATUSUPDATETRXID" NUMBER(20,0) NOT NULL,
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"MAINTENANCESTATUSCODE" VARCHAR2(4),
		"CONDITIONSTATUSCODE" VARCHAR2(1),
		"OCCURANCEDATE" VARCHAR2(5),
		"OCCURANCETIME" VARCHAR2(4),
		"GAINLOSSACTIONCODE" VARCHAR2(2),
		"INSTALLATIONCODE" VARCHAR2(4),
		"MAJORCOMMANDABBREVIATION" VARCHAR2(3),
		"GAINLOSSTRANSFEROPTION" VARCHAR2(10),
		"TRANSFERTYPE" VARCHAR2(1),
		"EVENTID" VARCHAR2(15),
		"WORKCENTEREVENT" VARCHAR2(15),
		"WORKUNITCODE" VARCHAR2(32),
		"REQUESTAPPROVEDCONFIGURATION" VARCHAR2(10),
		"REQUESTACTUALCONFIGURATION" VARCHAR2(10),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=157 */ "EMOCAUX"."GEOLOCCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:430 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:436 *** */
(
		"GEOLOCCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"GEOLOCCODE" VARCHAR2(4),
		"GEOLOCCODENARRATIVE" VARCHAR2(50),
		"STARTDATE" VARCHAR2(20),
		"STOPDATE" VARCHAR2(20),
		"TRANSACTIONCODE" VARCHAR2(1),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4098 */ "EMOCAUX"."HISTORY" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:451 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:458 *** */
(
		"HISTORYID" NUMBER(10,0),
		"EVENTDATE" DATE,
		"ELEMENTVALUE" VARCHAR2(4000),
		"USERID" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"ELEMENT" VARCHAR2(50),
		"TRANSACTIONID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 11534336
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=81 */ "EMOCAUX"."INTERFACEHISTORY" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:471 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:478 *** */
(
		"STATUSCHANGETIME" DATE,
		"STATUSCHANGEBY" NUMBER(10,0),
		"CURRENTSTATUS" VARCHAR2(50),
		"INTERFACECONTROLID" NUMBER(10,0),
		"CURRENTENABLED" NUMBER(1,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=93 */ "EMOCAUX"."INTERFACEITEMSHISTORY" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:492 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:499 *** */
(
		"STATUSCHANGETIME" DATE,
		"STATUSCHANGEBY" NUMBER(10,0),
		"CURRENTSTATUS" VARCHAR2(50),
		"INTERFACECONTROLID" NUMBER(10,0),
		"PREENABLED" NUMBER(10,0),
		"INTERFACEITEMID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=685 */ "EMOCAUX"."INTERFACELOG" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:525 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:532 *** */
(
		"INTERFACELOGID" NUMBER(10,0),
		"INTERFACECONTROLID" NUMBER(10,0),
		"TRANSACTIONTYPE" CHAR(3),
		"TIMEOFINSERT" DATE,
		"EXPIRATION" DATE,
		"CAMSVALIDATED" NUMBER(1,0),
		"CANCELFLAG" NUMBER(1,0),
		"USERID" NUMBER(10,0),
		"TBMCSMSGSENT" DATE,
		"TBMCSMSGSUBJECT" VARCHAR2(100),
		"AIRCRAFTID" NUMBER(10,0),
		"TBMCSMSGTYPE" CHAR(10),
		"TBMCSONLY" NUMBER(1,0),
		"TBMCSSUMMARYSENT" NUMBER(1,0),
		"XMLIN" CLOB,
		"XMLOUT" CLOB,
		"TBMCSXML" CLOB,
		"PARSED" NUMBER(1,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4217 */ "EMOCAUX"."INVENTORYSTATUSUPDATETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:560 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:566 *** */
(
		"INVENTORYSTATUSUPDATETRXID" NUMBER(10,0) NOT NULL,
		"TRANSACTIONORDINALDATE" VARCHAR2(20),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"GAINLOSSACTIONCODE" VARCHAR2(2),
		"CHANGEDATE" VARCHAR2(5),
		"CHANGETIME" VARCHAR2(4),
		"POSSESSIONID" VARCHAR2(2),
		"ASSIGNMENTSTATUSCODE" VARCHAR2(2),
		"ASSIGNMENTCOMMANDABBR" VARCHAR2(3),
		"AIRCRAFTCONFIGID" VARCHAR2(10),
		"TRAINERREPORTINGDESIGNATOR" VARCHAR2(10),
		"MISSIONDESIGNSERIES" VARCHAR2(15),
		"MAJORCOMMANDABBR" VARCHAR2(3),
		"HOSTUNITDATEANDTIME" VARCHAR2(20),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=268 */ "EMOCAUX"."JOAPDATA" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:586 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:593 *** */
(
		"JOAPDATAID" NUMBER(10,0),
		"JOAP" CHAR(50),
		"ENGINEDATAID" NUMBER(10,0),
		"MOCCONTROLLER" VARCHAR2(50),
		"SAMPLEDATE" DATE,
		"REASON" VARCHAR2(50),
		"HOURSREQUIRED" NUMBER(10,1),
		"HOURSREMAINING" NUMBER(10,0),
		"NOTIFIEDBY" VARCHAR2(50),
		"EXPEDITERNOTIFIED" NUMBER(1,0),
		"JOAPLASTUPDATED" DATE,
		"SCHEDULEID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4211 */ "EMOCAUX"."LOCATIONCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:614 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:620 *** */
(
		"LOCATIONCODETRXID" NUMBER(20,0) NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"LOCATIONCODE" VARCHAR2(10),
		"LOCATIONRESTRICTIONCODE" VARCHAR2(2),
		"ALLOWABLEQUANTITY" VARCHAR2(4),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"TRANSACTIONTYPE" VARCHAR2(50),
		"NEWLOCATIONCODE" VARCHAR2(10),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=526 */ "EMOCAUX"."MAINTENANCEEVENTS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:650 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:657 *** */
(
		"MAINTENANCEEVENTID" NUMBER(10,0) NOT NULL,
		"UNIT" CHAR(1) NOT NULL,
		"EVENTID" VARCHAR2(9),
		"PWC" VARCHAR2(5) NOT NULL,
		"EQUIPID" VARCHAR2(5) NOT NULL,
		"CP" NUMBER(10,0),
		"WUCLCN" VARCHAR2(15) NOT NULL,
		"WD" VARCHAR2(1),
		"PRIORITY" CHAR(2),
		"SYMBOL" CHAR(1) NOT NULL,
		"TSSCH" VARCHAR2(9) NOT NULL,
		"JOBDUR" VARCHAR2(4),
		"DISCREPANCY" VARCHAR2(180) NOT NULL,
		"WCENARRATIVE" VARCHAR2(180),
		"EMPID" VARCHAR2(18),
		"ENTRY781" CHAR(1),
		"DEFER" CHAR(3),
		"WCESYMBOL" CHAR(1),
		"JOBFOLLOW" CHAR(1),
		"PARTSREQUIRED" CHAR(1),
		"AIRCRAFTID" NUMBER(10,0),
		"ENTERED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 10485760
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=106 */ "EMOCAUX"."MAJORCOMMANDCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:672 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:678 *** */
(
		"MAJORCOMMANDCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"MAJORCOMMANDCODE" VARCHAR2(3),
		"MAJORCOMMANDCODENARRATIVE" VARCHAR2(50),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"TRANSACTIONCODE" VARCHAR2(1),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4572 */ "EMOCAUX"."MDSEQUIPMENTTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:727 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:733 *** */
(
		"MDSEQUIPTRXID" NUMBER(10,0),
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"SERIALNUMBER" VARCHAR2(10),
		"STANDARDREPORTINGDESIGNATOR" VARCHAR2(3),
		"AFI21103SELECTIONINDICATOR" VARCHAR2(1),
		"POSSESSIONID" VARCHAR2(2),
		"ASSIGNMENTSTATUSCODE" VARCHAR2(2),
		"ASSIGNMENTCOMMANDABBREVIATION" VARCHAR2(3),
		"AIRCRAFTCONFIGURATIONID" VARCHAR2(10),
		"PROGRAMELEMENTCODE" VARCHAR2(8),
		"MAINTENANCETYPEINTERVAL" VARCHAR2(1),
		"OPERATINGTIME" VARCHAR2(10),
		"PREVIOUSOPERATINGTIME" VARCHAR2(10),
		"TOTALSORTIES" VARCHAR2(10),
		"TOTALLANDINGS" VARCHAR2(10),
		"FULLSTOPLANDINGS" VARCHAR2(10),
		"CREATEAUTOHISTORYEH" VARCHAR2(1),
		"ITEMMANUFACTURER" VARCHAR2(50),
		"EQUIPMENTACCEPTANCEDATE" VARCHAR2(20),
		"TYPEOFREPAIR" VARCHAR2(1),
		"REPAIRFREQUENCY" VARCHAR2(10),
		"REPAIRTYPEINTERVAL" VARCHAR2(10),
		"LASTOVERHAULDATE" VARCHAR2(7),
		"LASTOVERHAULTIME" VARCHAR2(4),
		"PRIMEREMOTETERMINALID" VARCHAR2(10),
		"SECONDARYREMOTETERMINALID" VARCHAR2(10),
		"LOCALOPTION" VARCHAR2(10),
		"OWNINGWORKCENTER" VARCHAR2(4),
		"SUPPORTGENERALREPORTABLE" VARCHAR2(1),
		"SUPPLYFACTOR" VARCHAR2(10),
		"TRANSACTIONORDINALDATE" VARCHAR2(20),
		"HOSTUNITDATEANDTIME" VARCHAR2(20),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"TRANSACTIONTYPE" VARCHAR2(50),
		"EQUIPMENTDESIGNATOR" VARCHAR2(15),
		"PRODUCTIONBLOCKNUMBER" VARCHAR2(3),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=1264 */ "EMOCAUX"."MICAP" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:757 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:764 *** */
(
		"MICAPID" NUMBER(20,0) NOT NULL,
		"DOCUMENTNUMBER" VARCHAR2(50) NOT NULL,
		"CAMSINIT" DATE,
		"AIRCRAFTID" NUMBER(10,0),
		"ENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"JOBCONTROLNUMBER" VARCHAR2(15),
		"NOMENCLATURE" VARCHAR2(50),
		"ESTIMATEDDELIVERYDATE" VARCHAR2(7),
		"ISSUEDATE" VARCHAR2(7),
		"URGENCYJUSTIFICATIONCODE" VARCHAR2(2),
		"WORKUNITCODE" VARCHAR2(32),
		"USERCOMMENT" NVARCHAR2(500),
		"DELETEDFLAG" NUMBER(1,0) DEFAULT 0,
		"DELETEDDATE" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 3145728
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=226 */ "EMOCAUX"."MICAPTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:785 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:791 *** */
(
		"MICAPTRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"JOBCONTROLNUMBER" VARCHAR2(20),
		"DOCUMENTNUMBER" VARCHAR2(20),
		"NOMENCLATURE" VARCHAR2(50),
		"ESTIMATEDDELIVERYDATE" VARCHAR2(7),
		"ISSUEDATE" VARCHAR2(7),
		"URGENCYJUSTIFICATIONCODE" VARCHAR2(2),
		"WORKUNITCODE" VARCHAR2(32),
		"DATEPROCESSED" DATE,
		"TRANSACTIONCODE" VARCHAR2(1),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=73 */ "EMOCAUX"."OPERATIONALEVENTDELETETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:807 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:813 *** */
(
		"OPERATIONALEVENTDELETETRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIEDATE" VARCHAR2(7),
		"SORTIENUMBER" VARCHAR2(3),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=174 */ "EMOCAUX"."OPERATIONALEVENTLOADTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:840 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:846 *** */
(
		"OPERATIONALEVENTLOADTRXID" NUMBER NOT NULL,
		"OELTRANSACTIONID" NUMBER,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"DURATIONEXCEEDS24HOURS" VARCHAR2(1),
		"OPERATIONALEVENTTYPEEVENT" VARCHAR2(3),
		"ASSIGNTOONESCHEDULEINGBLOCK" VARCHAR2(1),
		"ESTIMATEDFUELLOAD" VARCHAR2(10),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"STARTTIME" VARCHAR2(4),
		"STOPTIME" VARCHAR2(4),
		"MISSIONNUMBER" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"DATEPROCESSED" DATE,
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(5),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4138 */ "EMOCAUX"."OPERATIONALEVENTREPLACEMENTTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:869 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:875 *** */
(
		"OPERATEVENTREPLACEMENTTRXID" NUMBER,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"SORTIENUMBER" VARCHAR2(3),
		"UNDOREPLACEMENT" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"DEVIATIONCODE" VARCHAR2(10),
		"DEVIATIONCAUSECODE" VARCHAR2(3),
		"CHARGEABLEINDICATOR" VARCHAR2(1),
		"NEWEQUIPMENTID" VARCHAR2(5),
		"MAINTENANCEEVENTID" VARCHAR2(10),
		"DEVIATIONREMARKS" VARCHAR2(4000),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=168 */ "EMOCAUX"."OPERATIONALEVENTUPDATETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:900 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:906 *** */
(
		"OPERATIONALEVENTUPDATETRXID" NUMBER NOT NULL,
		"OEUTRANSACTIONID" NUMBER,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"SORTIEDATE" VARCHAR2(7),
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(3),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIENUMBER" VARCHAR2(3),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"STOPDATE" VARCHAR2(7),
		"STOPTIME" VARCHAR2(4),
		"FUELLOAD" VARCHAR2(10),
		"MISSIONNUMBER" VARCHAR2(10),
		"OPERATIONALEVENTTYPEEVENT" VARCHAR2(1),
		"DATEPROCESSED" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4405 */ "EMOCAUX"."ORGANIZATIONTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:940 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:946 *** */
(
		"ORGANIZATIONLOADTRXID" NUMBER(20,0) NOT NULL,
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"ORGANIZATIONID" VARCHAR2(10),
		"ORGANIZATIONNUMBER" VARCHAR2(10),
		"ORGANIZATIONKIND" VARCHAR2(10),
		"ORGANIZATIONTYPE" VARCHAR2(2),
		"NOMENCLATURE" VARCHAR2(50),
		"INSTALLTIONCODE" VARCHAR2(10),
		"AFI21103ORGANIZATIONNUMBER" VARCHAR2(10),
		"AFI21103ORGANIZATIONKIND" VARCHAR2(10),
		"AFI21103ORGANIZATIONTYPE" VARCHAR2(2),
		"DETACHMENTNUMBER" VARCHAR2(2),
		"OVERSEASINDICATOR" VARCHAR2(1),
		"CELASTREPORTINGDATE" VARCHAR2(5),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"TRANSACTIONTYPE" VARCHAR2(50),
		"NEWORGANIZATIONID" VARCHAR2(10),
		"NEWORGANIZATIONNUMBER" VARCHAR2(10),
		"NEWORGANIZATIONKIND" VARCHAR2(10),
		"NEWORGANIZATIONTYPE" VARCHAR2(2),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4017 */ "EMOCAUX"."REMARKS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:956 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:962 *** */
(
		"REMARKSID" NUMBER(10,0),
		"REMARKS" VARCHAR2(4000),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=617 */ "EMOCAUX"."SCHEDULE" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1009 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1015 *** */
(
		"SCHEDULEID" NUMBER(10,0),
		"GO" NUMBER(10,0),
		"SCHEDULEDTAKEOFF" DATE,
		"SCHEDULEDLANDING" DATE,
		"ACTUALTAKEOFF" DATE,
		"ACTUALLANDING" DATE,
		"SPARE" NUMBER(10,0),
		"ADJTAKEOFF" DATE,
		"ADJLANDING" DATE,
		"AREAARRIVETIME" DATE,
		"AREALEAVETIME" DATE,
		"LANDINGCODE" VARCHAR2(10),
		"RANGE" VARCHAR2(50),
		"DEVIATIONCODE" VARCHAR2(50),
		"CAUSECODE" CHAR(3),
		"WEATHERCODE" VARCHAR2(10),
		"MISSION" VARCHAR2(50),
		"AREA" VARCHAR2(50),
		"AIRCRAFTID" NUMBER(10,0),
		"PILOTNAME" VARCHAR2(50),
		"SORTIENUM" NUMBER(3,0),
		"SORTIEMOD" NUMBER(2,0),
		"SORTIEDATE" CHAR(7),
		"BLOCKNUMBER" NUMBER(3,0),
		"PUBLISHED_FLAG" NUMBER(1,0),
		"SCHEDDAY" DATE,
		"CALLSIGN" VARCHAR2(50),
		"TRANSIENT" NUMBER(1,0),
		"DURATIONSCHEDULED" NUMBER(3,1),
		"DURATIONACTUAL" NUMBER(3,1),
		"CONFIGCODE" VARCHAR2(50),
		"SCHEDULEREMARKS" NUMBER(10,0),
		"MAINTREMARKS" NUMBER(10,0),
		"SORTIE_JOAP" CHAR(1),
		"SORTIE_SEMEDX" CHAR(1),
		"SQUADRONNAME" VARCHAR2(50),
		"UTILIZATIONCODE" CHAR(4),
		"SCHEDULESOURCE" VARCHAR2(3),
		"INTERFACELOGID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 4194304
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=140 */ "EMOCAUX"."SCHEDULEDEVIATIONS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1038 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1044 *** */
(
		"SCHEDULEDEVIATIONID" NUMBER(10,0),
		"SCHEDULEID" NUMBER(10,0),
		"DEVIATIONCODE" VARCHAR2(50),
		"CAUSECODE" CHAR(3),
		"NEWCAUSECODE" CHAR(3),
		"SORTIENUM" NUMBER(10,0),
		"SORTIEDATE" CHAR(7),
		"SORTIEMOD" CHAR(3),
		"ACTIONOPTIONS" CHAR(1),
		"CHARGEABLE" NUMBER(1,0),
		"STARTDATETIME" DATE,
		"STOPDATETIME" DATE,
		"MAINTENANCEEVENTID" CHAR(10),
		"DEVIATIONSREMARKS" NUMBER(10,0),
		"INTERFACELOGID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 589824
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=88 */ "EMOCAUX"."SCHEDULESTATUS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1058 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1065 *** */
(
		"SCHEDULESTATUSID" NUMBER(10,0),
		"SCHEDULEID" NUMBER(10,0),
		"STATUSCODE" VARCHAR2(50),
		"STATUSTIME" DATE,
		"STATUSTYPE" NUMBER(1,0),
		"USERID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=219 */ "EMOCAUX"."SEMEDXDATA" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1085 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1092 *** */
(
		"SEMDATAID" NUMBER(10,0),
		"ENGINEDATAID" NUMBER(10,0),
		"SEMEDX" CHAR(1),
		"MOCCONTROLLER" VARCHAR2(50),
		"SAMPLEDATE" DATE,
		"REASON" VARCHAR2(50),
		"HOURSREQUIRED" NUMBER(11,1),
		"HOURSREMAINING" NUMBER(10,0),
		"NOTIFIEDBY" VARCHAR2(50),
		"EXPEDITERNOTIFIED" NUMBER(1,0),
		"SEMEDXLASTUPDATED" DATE,
		"SCHEDULEID" NUMBER(10,0),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=375 */ "EMOCAUX"."SHOPDISPATCH" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1113 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1120 *** */
(
		"SHOPDISPATCHID" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"REQUESTER" VARCHAR2(50),
		"WORKCENTERCODE" CHAR(5),
		"PERSONCONTACTED" VARCHAR2(50),
		"PERSONDISPATCHED" VARCHAR2(50),
		"REQUESTDATE" DATE,
		"DISCREPANCY" VARCHAR2(50),
		"COMPLETIONDATE" DATE,
		"ETICSHOWTIME" DATE,
		"ENTERED" DATE,
		"ENTEREDBY" VARCHAR2(50),
		"SQDISPATCHEDTO" VARCHAR2(50),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4222 */ "EMOCAUX"."STATUSCORRECTIONTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1147 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1153 *** */
(
		"STATUSCORRECTIONID" NUMBER(20,0) NOT NULL,
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"MAINTENANCESTATUSCODE" VARCHAR2(4),
		"CONDITIONSTATUSCODE" VARCHAR2(1),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"STOPDATE" VARCHAR2(5),
		"STOPTIME" VARCHAR2(4),
		"WORKUNITCODE" VARCHAR2(32),
		"GEOLOCCODE" VARCHAR2(4),
		"TRANSACTIONORDINALDATE" VARCHAR2(20),
		"HOSTUNITDATEANDTIME" VARCHAR2(20),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UTCSTARTDATEANDTIME" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4438 */ "EMOCAUX"."STATUSUPDATETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1190 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1196 *** */
(
		"STATUSUPDATETRXID" NUMBER(20,0) NOT NULL,
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"MAINTENANCESTATUSCODE" VARCHAR2(4),
		"CONDITIONSTATUSCODE" VARCHAR2(1),
		"STARTDATE" VARCHAR2(7),
		"STARTTIME" VARCHAR2(4),
		"WORKUNITCODE" VARCHAR2(32),
		"EVENTID" VARCHAR2(15),
		"WORKCENTEREVENT" VARCHAR2(15),
		"ESTIMATEDTIMEINCOMMISSION" VARCHAR2(25),
		"PARTSPLUS" VARCHAR2(9),
		"GEOLOCCODE" VARCHAR2(4),
		"STATUSNARRATIVE" VARCHAR2(40),
		"LOCATIONCODE" VARCHAR2(10),
		"EQUIPMENTORGANIZATIONFLIGHTID" VARCHAR2(10),
		"MAINTENANCEREPAIRPRIORITY" VARCHAR2(10),
		"ARMED" VARCHAR2(1),
		"MULTIPLECONFIGURATIONID" VARCHAR2(10),
		"LOCALOPTION" VARCHAR2(10),
		"RECEIVEMAINTENANCELIMITREPORT" VARCHAR2(10),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UTCSTARTDATEANDTIME" DATE,
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=2081 */ "EMOCAUX"."TRANSACTIONLOG" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1210 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1217 *** */
(
		"EVENTTIME" DATE DEFAULT CURRENT TIMESTAMP NOT NULL,
		"TABLENAME" VARCHAR2(25) NOT NULL,
		"TABLERECORDID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0) NOT NULL,
		"ACTION" VARCHAR2(15) NOT NULL,
		"REMARK" VARCHAR2(2000),
		"TRANSACTIONLOGID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=202 */ "EMOCAUX"."USERS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1229 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1235 *** */
(
		"USERID" NUMBER(10,0),
		"USERNAME" VARCHAR2(25),
		"FULLNAME" VARCHAR2(50),
		"EMAIL" VARCHAR2(100),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=2103 */ "EMOCAUX"."UTILIZATIONCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1252 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1258 *** */
(
		"UTILIZATIONCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"AIRCRAFTUTILIZATIONCODE" VARCHAR2(4),
		"AUCNARRATIVE" VARCHAR2(20),
		"MISSIONDESIGNSERIES" VARCHAR2(9),
		"PROGRAMELEMENTCODE" VARCHAR2(8),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(1000),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4161 */ "EMOCAUX"."UVRCHANGETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1282 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1288 *** */
(
		"UVRCHANGETRXID" NUMBER(20,0) NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"TIMEZONEFACTOR" VARCHAR2(1),
		"TIMEZONEHOURS" VARCHAR2(2),
		"GMTFACTOR" VARCHAR2(1),
		"GMTHOURS" VARCHAR2(2),
		"HOSTTIMEZONEFACTOR" VARCHAR2(1),
		"HOSTTIMEZONEHOURS" VARCHAR2(2),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"REMOTEPRINTINDICATOR" VARCHAR2(1),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=94 */ "EMOCAUX"."WEAPONSLOAD" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1303 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1310 *** */
(
		"LOADID" NUMBER(10,0),
		"STATION" NUMBER(10,0),
		"ORDNANCE" VARCHAR2(50),
		"WEAPONSNUMBER" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"WEAPONSCLASS" CHAR(1),
		"FIRESYMBOL" CHAR(3),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=154 */ "EMOCAUX"."WHENDISCOVEREDCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1327 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1333 *** */
(
		"WHENDISCOVEREDCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"WHENDISCOVEREDCODE" VARCHAR2(1),
		"WHENDISCOVEREDCODENARRATIVE" VARCHAR2(50),
		"STARTDATE" VARCHAR2(20),
		"STOPDATE" VARCHAR2(20),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"TRANSACTIONCODE" VARCHAR2(1),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4250 */ "EMOCAUX"."WORKCENTERTRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1354 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1360 *** */
(
		"WORKCENTERTRXID" NUMBER(20,0) NOT NULL,
		"ENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"WORKCENTER" VARCHAR2(4),
		"NEWWORKCENTER" VARCHAR2(4),
		"WORKCENTERNARRATIVE" VARCHAR2(50),
		"ORGANIZATIONID" VARCHAR2(10),
		"HOSTUNITDATEANDTIME" VARCHAR2(25),
		"TRANSACTIONORDINALDATE" VARCHAR2(25),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(2000),
		"DATEPROCESSED" DATE,
		"TRANSACTIONTYPE" VARCHAR2(50),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=246 */ "EMOCAUX"."WORKUNITCODETRX" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1380 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1386 *** */
(
		"WORKUNITCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"WORKUNITCODE" VARCHAR2(32),
		"WORKUNITCODENARRATIVE" VARCHAR2(50),
		"STARTDATE" VARCHAR2(20),
		"STOPDATE" VARCHAR2(20),
		"MISSIONDESIGNSERIES" VARCHAR2(11),
		"BLOCKNUMBERTYPE" VARCHAR2(3),
		"NEWWORKUNITCODE" VARCHAR2(32),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"TRANSACTIONCODE" VARCHAR2(1),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=16K rowlen=8228 */ "EMOCAUX"."WRITEUPS" 
/* *** DCW Evaluation [Informational] "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1406 *** */

/* *** DCW Evaluation [Informational] "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1413 *** */
(
		"WRITEUPID" NUMBER(10,0),
		"WRITEUPTIME" DATE,
		"JCN" VARCHAR2(50),
		"CORRECTED" NUMBER(10,0),
		"CORRECTEDTIME" DATE,
		"PACER" NUMBER(10,0),
		"ETIC" CHAR(9),
		"AIRCRAFTID" NUMBER(10,0),
		"SYMBOL" VARCHAR2(50),
		"WUC" VARCHAR2(50),
		"DISCREPANCY" VARCHAR2(4000),
		"CORRECTIVEACTION" VARCHAR2(4000),
		"ARCHIVEDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=16K */ "EMOCMAIN"
@
