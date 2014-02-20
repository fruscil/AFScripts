--<ScriptOptions statementTerminator="@"/>


CREATE TABLE  /* pagesizemin=4K rowlen=73 */ "EMOC3"."ACFTMDSTYPES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:762 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:769 *** */
(
		"ACFTMDSTYPECD" VARCHAR2(6) NOT NULL,
		"ACFTMDSTYPENM" VARCHAR2(50),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=1069 */ "EMOC3"."AIRCRAFT" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:880 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:887 *** */
(
		"AIRCRAFTID" NUMBER NOT NULL,
		"TAILNUMBER" VARCHAR2(10) NOT NULL,
		"SHORTTAILNUMBER" VARCHAR2(10) NOT NULL,
		"SERIALNUMBER" VARCHAR2(50),
		"AIRCRAFTYEAR" VARCHAR2(4),
		"MISEQUIPID" VARCHAR2(10),
		"SQUADRONID" NUMBER NOT NULL,
		"CREWCHIEFID" NUMBER,
		"LASTFLOWNTIME" DATE,
		"FUELSTATUSTIME" DATE,
		"FUELSTATUSID" NUMBER DEFAULT NULL,
		"LOCATIONID" NUMBER(10,0),
		"PHASEDATE" DATE,
		"ETIC" VARCHAR2(9),
		"FCF" NUMBER(1,0) DEFAULT 0,
		"OCF" NUMBER(1,0) DEFAULT 0,
		"QVI" NUMBER(1,0) DEFAULT 0,
		"FIRSTOFFICIAL" VARCHAR2(50),
		"SECONDOFFICIAL" VARCHAR2(50),
		"STATUSCODEID" NUMBER DEFAULT NULL,
		"STATUSCODETIME" DATE,
		"POSSESSIONID" NUMBER,
		"PRIORITY" NUMBER(1,0),
		"CONDITIONCODEID" NUMBER DEFAULT NULL,
		"FLIGHTID" NUMBER,
		"CONDITIONCODETIME" DATE,
		"ARM_DEARM" NUMBER(1,0) DEFAULT 0,
		"MULTICONFIGID" CHAR(4),
		"STATUSNARRATIVE" VARCHAR2(180),
		"LOCALOPTION" CHAR(8),
		"ASSIGNMENTCMD" CHAR(3),
		"ASSIGNMENTSTATUS" CHAR(2),
		"REPORTDESIG" CHAR(3),
		"RELATEDMDS" CHAR(7),
		"COMMANDCODE" CHAR(3),
		"HANGERQUEENSTATUS" NUMBER(10,0),
		"AIRCRAFTMDSID" NUMBER(10,0) DEFAULT NULL  NOT NULL,
		"CREWCHIEFLASTUPDATED" DATE,
		"SERIALNUMBERLASTUPDATED" DATE,
		"IMPOUNDSLASTUPDATED" DATE,
		"HQSTATUSLASTUPDATED" DATE,
		"TESTSTATUSLASTUPDATED" DATE,
		"PHASEDATELASTUPDATED" DATE,
		"POSSESSIONCODELASTUPDATED" DATE,
		"ETICLASTUPDATED" DATE,
		"PRIORITYLASTUPDATED" DATE,
		"COMBATSCLID" NUMBER(10,0),
		"CHAFF" NUMBER(10,0),
		"FLARE" NUMBER(10,0),
		"HOTGUNS" NUMBER(10,0) DEFAULT 0,
		"WEAPONSSTATUSTIME" DATE,
		"SQPRESELECT" CHAR(2),
		"STATUSCODELASTUPDATED" DATE,
		"LOCATIONLASTUPDATED" DATE,
		"FUELSTATUSLASTUPDATED" DATE,
		"LOCALCONFIGID" CHAR(4),
		"FUELREQUESTEDTIME" DATE,
		"FUELDELIVERYTIME" DATE,
		"PHASEUNITS" NUMBER(10,1),
		"AIRCRAFTWUCID" NUMBER(20,0),
		"WEAPONSSTATUSLASTUPDATED" DATE,
		"CONDITIONCODELASTUPDATED" DATE,
		"ACFT_CONFIG_ID" CHAR(2),
		"CAMSINIT" DATE,
		"REMARKSID" NUMBER(10,0),
		"FUELLOAD" VARCHAR2(10),
		"POSSDATETIME" DATE,
		"ASSIGNSTATDATETIME" DATE,
		"ASSIGNCOMDATETIME" DATE,
		"AIRCONFIGDATETIME" DATE,
		"REPDESIGNDATETIME" DATE,
		"ETICDATETIME" DATE,
		"ASSIGNSTATUSLASTUPDATED" DATE,
		"ASSIGNCOMMANDLASTUPDATED" DATE,
		"SQUADRONLASTUPDATED" DATE,
		"MDSLASTUPDATED" DATE,
		"REPDESIGNLASTUPDATED" DATE,
		"REMARKSLASTUPDATED" DATE,
		"STALOCCODEID" NUMBER(10,0),
		"FIRESYMBOLID" NUMBER(10,0),
		"AIRCONFIGIDLASTUPDATED" DATE,
		"WUCLASTUPDATED" DATE,
		"TMEFLOWNSINCEPHASEDATE" NUMBER(10,1),
		"STATUSSTARTDATE" VARCHAR2(5),
		"STATUSSTARTTIME" VARCHAR2(4),
		"OPENSTATUSEVENTJCN" VARCHAR2(12),
		"STATUSWUCLCN" VARCHAR2(15),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"COUNTRYCODE" VARCHAR2(2) DEFAULT 'US'' ' NOT NULL,
		"OWNINGWORKCENTER" VARCHAR2(4),
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"MISSIONDESIGNSERIES" VARCHAR2(15),
		"MISSIONDESIGNSERIESBLOCK" VARCHAR2(3),
		"LOCATIONCODE" VARCHAR2(10),
		"GEOLOCCODE" VARCHAR2(4),
		"GAINLOSSACTIONCODE" VARCHAR2(2),
		"CHANGEDATE" VARCHAR2(7),
		"CHANGETIME" VARCHAR2(4),
		"GAINLOSSTRANSFEROPTION" VARCHAR2(10),
		"TRANSFERTYPE" VARCHAR2(1),
		"OCCURANCEDATE" VARCHAR2(7),
		"OCCURANCETIME" VARCHAR2(4)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=81 */ "EMOC3"."AIRCRAFTCUSTOMDATA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:899 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:906 *** */
(
		"AIRCRAFTID" NUMBER(10,0) NOT NULL,
		"CUSTOMDATAID" NUMBER(10,0) NOT NULL,
		"DATAVALUE" VARCHAR2(50),
		"LASTUPDATED" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=17 */ "EMOC3"."AIRCRAFTENGINEDATA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:916 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:923 *** */
(
		"ENGINEDATAID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTID" NUMBER(10,0) NOT NULL,
		"ENGINENUMBER" NUMBER(2,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=440 */ "EMOC3"."AIRCRAFTEXTRACTTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:959 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:966 *** */
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
		"OWNINGWORKCENTER" VARCHAR2(4)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=85 */ "EMOC3"."AIRCRAFTMDS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:984 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:991 *** */
(
		"AIRCRAFTMDSID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTMDS" VARCHAR2(11),
		"NUMBEROFSTATIONS" NUMBER(10,0),
		"NUMBEROFENGINES" NUMBER(10,0),
		"TIMEBETWEENPHASE" NUMBER(10,0),
		"DEFAULTAIRCRAFTTYPE" NUMBER(1,0),
		"BLOCKNUMBER" CHAR(3),
		"PHASEUNIT" NUMBER(1,0) DEFAULT 0,
		"CAMSINIT" VARCHAR2(10),
		"ACFTMDSTYPECD" VARCHAR2(6),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=598 */ "EMOC3"."AIRCRAFTSTATUSUPDATE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1044 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1051 *** */
(
		"STATUSUPDATEID" NUMBER(10,0) NOT NULL,
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5) NOT NULL,
		"MAINTENANCESTATUSCODE" VARCHAR2(4),
		"CONDITIONSTATUSCODE" VARCHAR2(1),
		"STATUSSTARTDATE" VARCHAR2(5),
		"STATUSSTARTTIME" VARCHAR2(4),
		"WORKUNITCODE" VARCHAR2(15),
		"OPENSTATUSEVENT" VARCHAR2(12),
		"ESTIMATEDTIMEINCOMMISSION" VARCHAR2(9),
		"PARTSPLUS" VARCHAR2(4),
		"STATUSNARRATIVE" VARCHAR2(40),
		"LOCATION" VARCHAR2(10),
		"CONFIGURATION" VARCHAR2(4),
		"PRIORITY" VARCHAR2(1),
		"ARM" VARCHAR2(1),
		"MULTIPLECONFIGID" VARCHAR2(4),
		"LOCALOPTION" VARCHAR2(8),
		"ENTERED" DATE DEFAULT SYSDATE,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"ENTEREDBY" VARCHAR2(50),
		"UPDATEDBY" VARCHAR2(50),
		"AIRCRAFTID" NUMBER(10,0) NOT NULL,
		"INTERFACELOGID" NUMBER(10,0),
		"PREVCONDITIONCODEID" NUMBER(10,0),
		"PREVSTARTDATE" VARCHAR2(5),
		"PREVSTARTTIME" VARCHAR2(4),
		"PREVWUC" VARCHAR2(15),
		"PREVWUCID" NUMBER(10,0),
		"PREVOSE" VARCHAR2(12),
		"PREVETIC" VARCHAR2(9),
		"PREVPARTSPLUS" VARCHAR2(4),
		"PREVNARRATIVE" VARCHAR2(40),
		"PREVMAINTENANCESTATUS" VARCHAR2(4),
		"PREVCONDITIONSTATUS" VARCHAR2(1),
		"PREVLOCATION" VARCHAR2(10),
		"PREVPRIORITY" VARCHAR2(1),
		"PREVARM" VARCHAR2(1),
		"PREVMULTICONFIGID" VARCHAR2(4),
		"PREVLOCALOPTION" VARCHAR2(8),
		"PREVCONFIG" VARCHAR2(4),
		"PREVLOCATIONID" NUMBER(10,0),
		"LOCATIONID" NUMBER(10,0),
		"PREVMULTIFIGID" VARCHAR2(4),
		"PREVGEOLOCCODE" CHAR(4),
		"GEOLOCCODE" CHAR(4)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 9437184
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=174 */ "EMOC3"."AREAS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1062 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1069 *** */
(
		"AREAID" NUMBER(10,0) NOT NULL,
		"AREA" VARCHAR2(50) NOT NULL,
		"AREADESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=35 */ "EMOC3"."ARMAMENT" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1081 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1088 *** */
(
		"STATION" NUMBER(10,0) NOT NULL,
		"ARMAMENTID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTMDSID" NUMBER(10,0) NOT NULL,
		"ORDNANCEID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=79 */ "EMOC3"."ASSIGNMENTCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1101 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1108 *** */
(
		"ASSIGNMENTCODEID" NUMBER(10,0) NOT NULL,
		"ASSIGNMENTCODE" CHAR(2) NOT NULL,
		"ASSIGNMENTDESCRIPTION" VARCHAR2(50),
		"CAMSINIT" DATE,
		"DEFAULTASSIGNMENT" NUMBER(1,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=242 */ "EMOC3"."BASEMAPS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1119 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1126 *** */
(
		"MAPID" NUMBER NOT NULL,
		"MAPOBJECT" BLOB NOT NULL,
		"MOCID" NUMBER NOT NULL,
		"MIMETYPE" VARCHAR2(50) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4876 */ "EMOC3"."BRIEF_AIRCRAFT_STATUS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1156 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1163 *** */
(
		"ACSTATBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"ORDERBY" NUMBER,
		"TAILNUMBER" VARCHAR2(8),
		"POSSESSION" VARCHAR2(8),
		"LASTFLYDATE" DATE,
		"DAYSDOWN" VARCHAR2(10),
		"STATUS" VARCHAR2(8),
		"LOCATION" VARCHAR2(10),
		"WUC" VARCHAR2(15),
		"STATUSDATE" DATE,
		"ETIC" VARCHAR2(20),
		"TODAYSFLIGHTS" VARCHAR2(8),
		"TOMMORROWSFLIGHTS" VARCHAR2(8),
		"PRIMARYREMARK" VARCHAR2(180),
		"SECONDARYREMARK" VARCHAR2(4000),
		"MICAP" VARCHAR2(100),
		"JOAP" VARCHAR2(200),
		"REMARK" VARCHAR2(100),
		"SQUADRON" VARCHAR2(50),
		"AIRCRAFTMDS" VARCHAR2(20),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 3145728
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=378 */ "EMOC3"."BRIEF_DEVIATIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1185 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1192 *** */
(
		"DEVBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"SQUADRON" VARCHAR2(50),
		"POSSESSION" VARCHAR2(2),
		"DEVIATION" VARCHAR2(8),
		"CAUSECODE" VARCHAR2(3),
		"TAILNUMBER" VARCHAR2(10),
		"LINENUMBER" VARCHAR2(8),
		"DEVIATIONCODE" VARCHAR2(8),
		"REMARKS" VARCHAR2(100),
		"SPARE" VARCHAR2(1),
		"RR" VARCHAR2(1),
		"CORRECTIVE" VARCHAR2(100),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=382 */ "EMOC3"."BRIEF_FLYING_SCHEDULE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1224 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1231 *** */
(
		"FLYSCHEDBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"POSSESSION" VARCHAR2(8),
		"LINENUMBER" VARCHAR2(8),
		"TAILNUMBER" VARCHAR2(8),
		"STATUSCODE" VARCHAR2(50),
		"CREWREADY" DATE,
		"CREWSHOW" DATE,
		"TAXI" DATE,
		"SCHEDULEDTO" DATE,
		"ACTUALTO" DATE,
		"SCHEDULEDLAND" DATE,
		"ACTUALLAND" DATE,
		"JOAPCODE" VARCHAR2(10),
		"FUEL" DATE,
		"LANDINGSTATUSCODE" VARCHAR2(8),
		"GROUNDDEVIATION" VARCHAR2(8),
		"AIRDEVIATION" VARCHAR2(8),
		"CAUSECODE" VARCHAR2(8),
		"REMARKS" VARCHAR2(50),
		"CALLSIGN" VARCHAR2(25),
		"ORDERBY" NUMBER,
		"SQUADRON" VARCHAR2(50),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=391 */ "EMOC3"."BRIEF_FLYING_STATUS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1257 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1264 *** */
(
		"FLYINGSTATUSBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"ORDERBY" NUMBER,
		"UNIT" VARCHAR2(50),
		"SQUADRON" VARCHAR2(50),
		"SCHEDULED" VARCHAR2(100),
		"TOTALSORTIES" VARCHAR2(5),
		"CX" VARCHAR2(5),
		"GA" VARCHAR2(5),
		"AD" VARCHAR2(5),
		"F" VARCHAR2(5),
		"SP" VARCHAR2(5),
		"TAKEOFF" DATE,
		"LAND" DATE,
		"UNAVAILABLEAC" VARCHAR2(50),
		"FIRSTTAKEOFF" DATE,
		"LASTLAND" DATE,
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4190 */ "EMOC3"."BRIEF_HANGAR_QUEEN" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1287 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1294 *** */
(
		"HQBRIEFID" NUMBER NOT NULL,
		"SHOW" VARCHAR2(5) NOT NULL,
		"AIRCRAFTMDS" VARCHAR2(11) NOT NULL,
		"TAILNUMBER" VARCHAR2(10) NOT NULL,
		"SQUADRON" VARCHAR2(50) NOT NULL,
		"LASTFLYDATE" DATE,
		"PROJECTED" DATE,
		"HQDATE" DATE,
		"STATUS" VARCHAR2(8),
		"ETIC" VARCHAR2(9),
		"ESTIMATEDFLYDATE" DATE,
		"REMARKS" VARCHAR2(4000),
		"BRIEFDATE" DATE NOT NULL,
		"DAYSDOWN" VARCHAR2(5),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=1303 */ "EMOC3"."BRIEF_MICAPS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1314 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1321 *** */
(
		"MICAPBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"SQUADRON" VARCHAR2(50),
		"TAILNUMBER" VARCHAR2(10),
		"NOUN" VARCHAR2(50),
		"BULLET" VARCHAR2(50),
		"DOCUMENTNUMBER" VARCHAR2(50),
		"STATUS" VARCHAR2(8),
		"STATUSDATE" DATE,
		"IND" VARCHAR2(8),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER,
		"USERCOMMENT" NVARCHAR2(500)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 589824
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=887 */ "EMOC3"."BRIEF_NEXT_WEEKS_PLAN" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1343 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1350 *** */
(
		"NXTWKSPLANBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"WEEKSTART" DATE,
		"WEEKEND" DATE,
		"SQUADRON" VARCHAR2(50),
		"WING" VARCHAR2(50),
		"MONDAY" VARCHAR2(100),
		"TUESDAY" VARCHAR2(100),
		"WEDNESDAY" VARCHAR2(100),
		"THURSDAY" VARCHAR2(100),
		"FRIDAY" VARCHAR2(100),
		"SATURDAY" VARCHAR2(100),
		"SUNDAY" VARCHAR2(100),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4190 */ "EMOC3"."BRIEF_POT_HANGAR_QUEEN" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1373 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1380 *** */
(
		"POTHQBRIEFID" NUMBER NOT NULL,
		"SHOW" VARCHAR2(5) NOT NULL,
		"AIRCRAFTMDS" VARCHAR2(11) NOT NULL,
		"TAILNUMBER" VARCHAR2(10) NOT NULL,
		"SQUADRON" VARCHAR2(50) NOT NULL,
		"LASTFLYDATE" DATE,
		"PROJECTED" DATE,
		"HQDATE" DATE,
		"STATUS" VARCHAR2(8),
		"ETIC" VARCHAR2(9),
		"ESTIMATEDFLYDATE" DATE,
		"REMARKS" VARCHAR2(4000),
		"BRIEFDATE" DATE NOT NULL,
		"DAYSDOWN" VARCHAR2(5),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4319 */ "EMOC3"."BRIEF_SCHEDULE_OVERVIEW" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1404 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1411 *** */
(
		"SCHEDOVERBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"SQUADRON" VARCHAR2(50),
		"POSSESSION" VARCHAR2(8),
		"LINENUMBER" VARCHAR2(10),
		"TAILNUMBER" VARCHAR2(8),
		"SCHTO" DATE,
		"ACTTO" DATE,
		"LANDSTATUS" VARCHAR2(10),
		"DEVCODE" VARCHAR2(10),
		"EFFECTIVE" VARCHAR2(10),
		"SPARE" VARCHAR2(5),
		"REMARKS" VARCHAR2(4000),
		"CORRECTIVE" VARCHAR2(100),
		"SQUADRONID" NUMBER,
		"AIRCRAFTMDS" VARCHAR2(11),
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=301 */ "EMOC3"."BRIEF_WING_STATUS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1441 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1448 *** */
(
		"WINGSTATUSBRIEFID" NUMBER NOT NULL,
		"BRIEFDATE" DATE NOT NULL,
		"POSSESSION" VARCHAR2(10),
		"AUTHORIZED" NUMBER,
		"ASSIGNED" NUMBER,
		"CUMPERCENT" NUMBER,
		"CMDSTDPERCENT" NUMBER,
		"FMC" NUMBER,
		"NM" NUMBER,
		"NS" NUMBER,
		"NB" NUMBER,
		"PM" NUMBER,
		"PS" NUMBER,
		"PB" NUMBER,
		"MC" NUMBER,
		"NONPOSS" NUMBER,
		"NONCOMPOSS" NUMBER,
		"COMPOSS" NUMBER,
		"TX" NUMBER,
		"SQUADRON" VARCHAR2(50),
		"WING" VARCHAR2(50),
		"SQUADRONID" NUMBER,
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=90 */ "EMOC3"."CAUSECODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1462 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1469 *** */
(
		"CAUSECODEID" NUMBER(10,0) NOT NULL,
		"CAUSECODE" VARCHAR2(3) NOT NULL,
		"DESCRIPTION" VARCHAR2(50),
		"DEFAULTCAUSECODE" NUMBER(1,0) DEFAULT NULL,
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"CAUSECODETYPE" VARCHAR2(1) DEFAULT 'O'
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 458752
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4241 */ "EMOC3"."CAUSECODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1490 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1497 *** */
(
		"CAUSECODETRXID" NUMBER(20,0) NOT NULL,
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
		"TRANSACTIONTYPE" VARCHAR2(50)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=69 */ "EMOC3"."CHANGENOTIFICATION" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1507 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1514 *** */
(
		"CHANGEID" DATE NOT NULL,
		"CACHEDTABLENAME" VARCHAR2(50) NOT NULL,
		"MOCID" NUMBER NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=452 */ "EMOC3"."CHECKLIST" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1527 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1534 *** */
(
		"CHECKLISTID" NUMBER NOT NULL,
		"CHECKLIST" BLOB NOT NULL,
		"CHECKLISTTITLE" VARCHAR2(150) NOT NULL,
		"DATEUPLOADED" DATE DEFAULT 'SYSDATE ' NOT NULL,
		"MOCID" NUMBER NOT NULL,
		"MIMETYPE" VARCHAR2(100)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=54 */ "EMOC3"."COLORRULES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1546 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1553 *** */
(
		"COLORID" NUMBER(10,0) NOT NULL,
		"COLORRULESID" NUMBER(10,0) NOT NULL,
		"COLORRANK" NUMBER(2,0) NOT NULL,
		"CODETYPE" VARCHAR2(25),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=85 */ "EMOC3"."COLORS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1565 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1572 *** */
(
		"COLORID" NUMBER(10,0) NOT NULL,
		"COLORNAME" VARCHAR2(50) NOT NULL,
		"COLORVALUE" CHAR(7) NOT NULL,
		"FONTCOLOR" CHAR(7) DEFAULT 'B',
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=28 */ "EMOC3"."COMBATSCLRULES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1583 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1590 *** */
(
		"SCLRULESID" NUMBER(10,0),
		"AIRCRAFTMDSID" NUMBER(10,0),
		"COMBATSCLID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=69 */ "EMOC3"."COMBATSCLS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1600 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1607 *** */
(
		"COMBATSCL" VARCHAR2(50) NOT NULL,
		"COMBATSCLID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=134 */ "EMOC3"."CONDITIONCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1620 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1627 *** */
(
		"CONDCODEID" NUMBER(10,0) NOT NULL,
		"CONDITIONCODE" CHAR(5) NOT NULL,
		"CONDITIONDESCRIPTION" VARCHAR2(100),
		"DEFAULTCONDITIONCODE" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"CONDSTATID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=90 */ "EMOC3"."CONDITIONSTATUS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1640 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1647 *** */
(
		"CONDSTATID" NUMBER(10,0) NOT NULL,
		"CONDITIONSTATUS" VARCHAR2(50) NOT NULL,
		"CONDITIONLEVEL" NUMBER(10,0),
		"FLYABLE" NUMBER(10,0) NOT NULL,
		"COLORID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=71 */ "EMOC3"."COUNTRYCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1657 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1664 *** */
(
		"COUNTRYCODE" VARCHAR2(2) NOT NULL,
		"COUNTRYNAME" VARCHAR2(50) NOT NULL,
		"DEFAULTCOUNTRY" NUMBER DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4083 */ "EMOC3"."CREWCHIEFS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1677 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1684 *** */
(
		"CREWCHIEFID" NUMBER(10,0) NOT NULL,
		"CREWCHIEF" VARCHAR2(50) NOT NULL,
		"PICTURE" VARCHAR2(4000),
		"DEFAULTCREWCHIEF" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"RANKID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=127 */ "EMOC3"."CUSTOMDATA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1699 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1706 *** */
(
		"CUSTOMDATAID" NUMBER(10,0) NOT NULL,
		"CUSTOMDATALABEL" VARCHAR2(20) NOT NULL,
		"CUSTOMDATADESCRIPTION" VARCHAR2(50),
		"CUSTOMDATATYPE" VARCHAR2(10) DEFAULT 'String'' ' NOT NULL,
		"CUSTOMDATAWIDTH" NUMBER(4,0) DEFAULT 20,
		"BGCOLORVALUE" VARCHAR2(7) DEFAULT '#FFFFFF',
		"FONTCOLOR" CHAR(1) DEFAULT 'B',
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=119 */ "EMOC3"."CUSTOMDATALISTITEM" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1716 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1723 *** */
(
		"CUSTOMDATAITEMID" NUMBER(10,0) NOT NULL,
		"CUSTOMDATAID" NUMBER(10,0) NOT NULL,
		"CUSTOMDATAITEMVALUE" NVARCHAR2(50)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=14 */ "EMOC3"."CUSTOMDATAMDS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1732 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1739 *** */
(
		"CUSTOMDATAID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTMDSID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4174 */ "EMOC3"."DEVIATIONABORTTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1765 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1772 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=188 */ "EMOC3"."DEVIATIONCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1786 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1793 *** */
(
		"DEVIATIONCODEID" NUMBER(10,0) NOT NULL,
		"DEVIATIONCODE" VARCHAR2(50) NOT NULL,
		"DEVIATIONDESCRIPTION" VARCHAR2(100),
		"DEFAULTDEVIATIONCODE" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"COLORID" NUMBER(10,0),
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=602 */ "EMOC3"."DEVIATIONCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1808 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1815 *** */
(
		"DEVIATIONCODETRXID" NUMBER(20,0) NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"DEVIATIONCODE" VARCHAR2(50),
		"DEVIATIONCODENARRATIVE" VARCHAR2(100),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(200)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4182 */ "EMOC3"."DEVIATIONCORRECTIONTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1842 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1849 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=127 */ "EMOC3"."DEVIATIONDELETETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1870 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1877 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4174 */ "EMOC3"."DEVIATIONSTARTSTOPTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1903 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1910 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=1026 */ "EMOC3"."EMOCAPPCONFIGURATION" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1944 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1950 *** */
(
		"CONFIGID" NUMBER NOT NULL,
		"ORADATASOURCE" VARCHAR2(50),
		"ORAMAINUSERID" VARCHAR2(25),
		"ORAMAINPASSWORD" VARCHAR2(75),
		"ORAAUXUSERID" VARCHAR2(25),
		"ORAAUXPASSWORD" VARCHAR2(75),
		"SQLSERVERINSTANCE" VARCHAR2(25),
		"SQLSERVERHOST" VARCHAR2(25),
		"SQLSERVERUSERID" VARCHAR2(25),
		"SQLSERVERPASSWORD" VARCHAR2(200),
		"IMDSCDBTOEMOCIHOST" VARCHAR2(25),
		"IMDSCDBTOEMOCIQUEMAN" VARCHAR2(25),
		"IMDSCDBTOEMOCIQUENAME" VARCHAR2(25),
		"IMDSCDBTOEMOCICHANNEL" VARCHAR2(25),
		"IMDSCDBTOEMOCIPORT" NUMBER,
		"EMOCTOIMDSCDBIHOST" VARCHAR2(25),
		"EMOCTOIMDSCDBIQUEMAN" VARCHAR2(25),
		"EMOCTOIMDSCDBIQUENAME" VARCHAR2(25),
		"EMOCTOIMDSCDBICHANNEL" VARCHAR2(25),
		"EMOCTOIMDSCDBIPORT" NUMBER,
		"EMOCTOTBMCSULIHOST" VARCHAR2(25),
		"EMOCTOTBMCSULIQUEMAN" VARCHAR2(25),
		"EMOCTOTBMCSULIQUENAME" VARCHAR2(25),
		"EMOCTOTBMCSULICHANNEL" VARCHAR2(25),
		"EMOCTOTBMCSULIPORT" NUMBER,
		"LASTUPDATEDBY" VARCHAR2(50),
		"LASTUPDATEDDATE" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=2570 */ "EMOC3"."EMOCCONFIG" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:1985 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:1992 *** */
(
		"EMOCCONFIGID" NUMBER(10,0) NOT NULL,
		"TIMEZONEFACTOR" CHAR(1),
		"TIMEZONEHOURS" NUMBER(2,0) DEFAULT 0,
		"VERSION" VARCHAR2(10),
		"BASENAME" VARCHAR2(50),
		"TBMCSEMAIL" VARCHAR2(100),
		"TBMCSTIMER" NUMBER(3,0) DEFAULT 3,
		"ETICTIMER" NUMBER(4,0) DEFAULT 15,
		"ARCHIVEDOM" NUMBER(2,0) DEFAULT 1,
		"ARCHIVEPURGEMO" NUMBER(2,0) DEFAULT 25,
		"GMTFACTOR" CHAR(1),
		"GMTHOURS" NUMBER(2,0) DEFAULT 0,
		"SCHEDULEDOW" NUMBER(1,0) DEFAULT 5,
		"SCHEDULETIME" CHAR(4) DEFAULT '1500',
		"LASTUPDATED" DATE DEFAULT SYSDATE,
		"LASTUPDATEDBY" NUMBER(10,0) DEFAULT 0,
		"SCHEDULEPATH" VARCHAR2(255),
		"TEMPLATEPATH" VARCHAR2(255),
		"ARCHIVEPATH" VARCHAR2(255),
		"EMOCHTML1" CLOB,
		"SMTPSERVER" VARCHAR2(50),
		"HEADERCOLOR" CHAR(7) DEFAULT '#0166B4',
		"DOCSPATH" VARCHAR2(255) DEFAULT 'c:\\program files\\emoc\\docs',
		"PROXYURL" VARCHAR2(500),
		"PROXYUSERID" VARCHAR2(50),
		"PROXYPASSWORD" VARCHAR2(500),
		"PROXYENABLED" NUMBER(1,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=292 */ "EMOC3"."EMOCHELP" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2004 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2010 *** */
(
		"HELPID" NUMBER(10,0) NOT NULL,
		"PARENTID" NUMBER(10,0),
		"TOPIC" VARCHAR2(100) NOT NULL,
		"HELPHTML" CLOB,
		"NODE" NUMBER(4,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=333 */ "EMOC3"."ENGINERUNLOG" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2038 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2044 *** */
(
		"ENGINELOGID" NUMBER(10,0) NOT NULL,
		"MOCCONTROLLER" VARCHAR2(50) NOT NULL,
		"RUNPERSON" VARCHAR2(50) NOT NULL,
		"EMPLOYEENUMBER" VARCHAR2(50) NOT NULL,
		"RUNDATE" DATE NOT NULL,
		"QUALCHECKED" NUMBER(1,0) DEFAULT 0,
		"STANDBYFIRETRUCK" NUMBER(1,0) DEFAULT 0,
		"REASON" VARCHAR2(50),
		"IDLESTART" VARCHAR2(5),
		"IDLESTOP" VARCHAR2(5),
		"MILSTART" VARCHAR2(5),
		"MILSTOP" VARCHAR2(5),
		"ABSTART" VARCHAR2(5),
		"ABSTOP" VARCHAR2(5),
		"MISUPDATED" NUMBER(1,0) DEFAULT 0,
		"SPAPPROVAL" NUMBER(10,0),
		"TOWERRUNCLEARANCE" NUMBER(1,0) DEFAULT 0,
		"ENGINEDATAID" NUMBER(10,0) NOT NULL,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4136 */ "EMOC3"."EQUIPMENTLOCATIONUPDATETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2062 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2069 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=601 */ "EMOC3"."EVENTLOG" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2083 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2090 *** */
(
		"LOGID" NUMBER(10,0),
		"DATETIMEENTERED" DATE,
		"EVENTTYPE" VARCHAR2(50),
		"EVENTNARRATIVE" VARCHAR2(500),
		"SHORTTAILNUMBER" VARCHAR2(10),
		"USERID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=32K rowlen=30270 */ "EMOC3"."EXPORT000021" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2179 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2185 *** */
(
		"PROCESS_ORDER" NUMBER,
		"DUPLICATE" NUMBER,
		"DUMP_FILEID" NUMBER,
		"DUMP_POSITION" NUMBER,
		"DUMP_LENGTH" NUMBER,
		"DUMP_ALLOCATION" NUMBER,
		"COMPLETED_ROWS" NUMBER,
		"ERROR_COUNT" NUMBER,
		"ELAPSED_TIME" NUMBER,
		"OBJECT_TYPE_PATH" VARCHAR2(200),
		"OBJECT_PATH_SEQNO" NUMBER,
		"OBJECT_TYPE" VARCHAR2(30),
		"IN_PROGRESS" CHAR(1),
		"OBJECT_NAME" VARCHAR2(500),
		"OBJECT_LONG_NAME" VARCHAR2(4000),
		"OBJECT_SCHEMA" VARCHAR2(30),
		"ORIGINAL_OBJECT_SCHEMA" VARCHAR2(30),
		"PARTITION_NAME" VARCHAR2(30),
		"SUBPARTITION_NAME" VARCHAR2(30),
		"FLAGS" NUMBER,
		"PROPERTY" NUMBER,
		"COMPLETION_TIME" DATE,
		"OBJECT_TABLESPACE" VARCHAR2(30),
		"SIZE_ESTIMATE" NUMBER,
		"OBJECT_ROW" NUMBER,
		"PROCESSING_STATE" CHAR(1),
		"PROCESSING_STATUS" CHAR(1),
		"BASE_PROCESS_ORDER" NUMBER,
		"BASE_OBJECT_TYPE" VARCHAR2(30),
		"BASE_OBJECT_NAME" VARCHAR2(30),
		"BASE_OBJECT_SCHEMA" VARCHAR2(30),
		"ANCESTOR_PROCESS_ORDER" NUMBER,
		"DOMAIN_PROCESS_ORDER" NUMBER,
		"PARALLELIZATION" NUMBER,
		"UNLOAD_METHOD" NUMBER,
		"GRANULES" NUMBER,
		"SCN" NUMBER,
		"GRANTOR" VARCHAR2(30),
		"XML_CLOB" CLOB,
		"NAME" VARCHAR2(30),
		"VALUE_T" VARCHAR2(4000),
		"VALUE_N" NUMBER,
		"IS_DEFAULT" NUMBER,
		"FILE_TYPE" NUMBER,
		"USER_DIRECTORY" VARCHAR2(4000),
		"USER_FILE_NAME" VARCHAR2(4000),
		"FILE_NAME" VARCHAR2(4000),
		"EXTEND_SIZE" NUMBER,
		"FILE_MAX_SIZE" NUMBER,
		"PROCESS_NAME" VARCHAR2(30),
		"LAST_UPDATE" DATE,
		"WORK_ITEM" VARCHAR2(30),
		"OBJECT_NUMBER" NUMBER,
		"COMPLETED_BYTES" NUMBER,
		"TOTAL_BYTES" NUMBER,
		"METADATA_IO" NUMBER,
		"DATA_IO" NUMBER,
		"CUMULATIVE_TIME" NUMBER,
		"PACKET_NUMBER" NUMBER,
		"OLD_VALUE" VARCHAR2(4000),
		"SEED" NUMBER,
		"LAST_FILE" NUMBER,
		"USER_NAME" VARCHAR2(30),
		"OPERATION" VARCHAR2(30),
		"JOB_MODE" VARCHAR2(30),
		"CONTROL_QUEUE" VARCHAR2(30),
		"STATUS_QUEUE" VARCHAR2(30),
		"REMOTE_LINK" VARCHAR2(4000),
		"VERSION" NUMBER,
		"DB_VERSION" VARCHAR2(30),
		"TIMEZONE" VARCHAR2(64),
		"STATE" VARCHAR2(30),
		"PHASE" NUMBER,
		"GUID" CHAR(16) FOR BIT DATA,
		"START_TIME" DATE,
		"BLOCK_SIZE" NUMBER,
		"METADATA_BUFFER_SIZE" NUMBER,
		"DATA_BUFFER_SIZE" NUMBER,
		"DEGREE" NUMBER,
		"PLATFORM" VARCHAR2(101),
		"ABORT_STEP" NUMBER,
		"INSTANCE" VARCHAR2(60)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=32K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=124 */ "EMOC3"."FIELDNAMES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2196 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2202 *** */
(
		"FIELDNAMESID" NUMBER(10,0) NOT NULL,
		"TABLENAME" VARCHAR2(50),
		"KEYFIELD" VARCHAR2(50),
		"SHOW" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=110 */ "EMOC3"."FILEMON" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2211 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2217 *** */
(
		"NAME" NVARCHAR2(50),
		"DATERAN" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=82 */ "EMOC3"."FIRESYMBOLS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2230 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2237 *** */
(
		"FIRESYMBOLID" NUMBER(10,0) NOT NULL,
		"FIRESYMBOL" CHAR(3) NOT NULL,
		"RANKING" NUMBER(10,0) NOT NULL,
		"DEFAULTVAL" NUMBER(1,0) DEFAULT 0,
		"DESCRIPTION" VARCHAR2(50),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=88 */ "EMOC3"."FLIGHTS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2250 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2257 *** */
(
		"FLIGHTID" NUMBER(10,0) NOT NULL,
		"SQUADRONID" NUMBER(10,0) NOT NULL,
		"FLIGHTNAME" VARCHAR2(50) NOT NULL,
		"WORKCENTERID" NUMBER(10,0),
		"LASTUPDATE" DATE DEFAULT sysdate,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=200 */ "EMOC3"."FUEL" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2273 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2280 *** */
(
		"FUELSTATUSID" NUMBER(10,0) NOT NULL,
		"COLORID" NUMBER(10,0) NOT NULL,
		"FUELSTATUS" VARCHAR2(50) NOT NULL,
		"FUELDESCRIPTION" VARCHAR2(100),
		"LANDING" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"DEFAULTFUEL" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"ALLOWSORTIEUPDATE" NUMBER(1,0) DEFAULT 0,
		"FUELSTATUSLABEL" VARCHAR2(8) DEFAULT '0',
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4307 */ "EMOC3"."GAINLOSSSTATUSUPDATETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2311 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2318 *** */
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
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=74 */ "EMOC3"."GENERATIONFLOW" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2329 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2336 *** */
(
		"GENERATIONFLOWNAME" VARCHAR2(50) NOT NULL,
		"GENERATIONFLOWSTARTTIME" DATE NOT NULL,
		"GENERATIONFLOWITEMOFFSET" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=117 */ "EMOC3"."GENERATIONFLOWITEMS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2346 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2353 *** */
(
		"ITEMNUMBER" NUMBER(10,0) NOT NULL,
		"ITEM" VARCHAR2(50) NOT NULL,
		"GENERATIONFLOWNAME" VARCHAR2(50) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=79 */ "EMOC3"."GENERATIONFLOWPROGRESS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2365 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2372 *** */
(
		"GENERATIONFLOWNAME" VARCHAR2(50) NOT NULL,
		"STEPNUMBER" NUMBER(10,0) NOT NULL,
		"ITEMNUMBER" NUMBER(10,0) NOT NULL,
		"STARTED" DATE,
		"COMPLETED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=124 */ "EMOC3"."GENERATIONFLOWSTEPS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2383 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2390 *** */
(
		"STEPNUMBER" NUMBER(10,0) NOT NULL,
		"STEPNAME" VARCHAR2(50) NOT NULL,
		"STEPLENGTH" NUMBER(10,0) NOT NULL,
		"GENERATIONFLOWNAME" VARCHAR2(50) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=152 */ "EMOC3"."GEOLOCCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2406 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2413 *** */
(
		"GEOLOCCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"GEOLOCCODE" VARCHAR2(4),
		"GEOLOCCODENARRATIVE" VARCHAR2(50),
		"STARTDATE" VARCHAR2(20),
		"STOPDATE" VARCHAR2(20),
		"TRANSACTIONCODE" VARCHAR2(1),
		"DATEPROCESSED" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=60 */ "EMOC3"."GLOBALCHANGENOTIFICATION" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2422 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2428 *** */
(
		"CHANGEID" DATE NOT NULL,
		"CACHEDTABLENAME" VARCHAR2(50) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=128 */ "EMOC3"."GRADECODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2438 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2444 *** */
(
		"GRADECODE" VARCHAR2(3),
		"RANKDESCRIPTION" VARCHAR2(100) NOT NULL,
		"RANKCODE" VARCHAR2(10) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=78 */ "EMOC3"."HANGER_QUEEN_CODE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2457 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2464 *** */
(
		"HQCODEID" NUMBER(10,0) NOT NULL,
		"HQCODE" CHAR(3) NOT NULL,
		"HQDESCRIPTION" VARCHAR2(50),
		"HQLEVEL" NUMBER(2,0) DEFAULT 0,
		"HQDEFAULT" NUMBER(1,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4093 */ "EMOC3"."HISTORY" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2478 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2485 *** */
(
		"HISTORYID" NUMBER(10,0) NOT NULL,
		"EVENTDATE" DATE NOT NULL,
		"ELEMENTVALUE" VARCHAR2(4000),
		"USERID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTID" NUMBER(10,0) NOT NULL,
		"ELEMENT" VARCHAR2(50),
		"TRANSACTIONID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=69 */ "EMOC3"."HOTSPOTS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2495 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2502 *** */
(
		"FIELDNAME" VARCHAR2(50) NOT NULL,
		"LOCATIONID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=31 */ "EMOC3"."IMDSCDBELCUNITOPTION" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2514 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2520 *** */
(
		"IMDSCDBELCUNITOPTIONID" NUMBER(10,0) NOT NULL,
		"IMDSCDBINTERFACEOPTIONID" NUMBER(10,0) NOT NULL,
		"ENTERPRISELOCATIONCODE" VARCHAR2(4) NOT NULL,
		"UNITID" VARCHAR2(1) NOT NULL,
		"OPTIONENABLED" NUMBER(1,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=245 */ "EMOC3"."IMDSCDBINTERFACEOPTION" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2535 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2541 *** */
(
		"IMDSCDBINTERFACEOPTIONID" NUMBER(10,0) NOT NULL,
		"OPTIONNAME" VARCHAR2(50) NOT NULL,
		"OPTIONENABLED" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"OPTIONDESCRIPTION" VARCHAR2(100),
		"INTERFACEDIRECTION" VARCHAR2(1) DEFAULT 'O'' ' NOT NULL,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" VARCHAR2(50),
		"OPTIONSHORTNAME" VARCHAR2(5)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=648 */ "EMOC3"."IMDSLOGINS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2556 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2563 *** */
(
		"IMDSLOGINID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0) NOT NULL,
		"IMDSLOGIN" VARCHAR2(256) NOT NULL,
		"IMDSPASSWORD" VARCHAR2(256) NOT NULL,
		"IMDSACCOUNT" VARCHAR2(20),
		"IMDSPROJECTID" VARCHAR2(20),
		"WINGID" NUMBER(10,0),
		"IMDSTERMINALID" VARCHAR2(50)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=668 */ "EMOC3"."INTERFACECONTROL" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2579 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2586 *** */
(
		"INTERFACECONTROLID" NUMBER(10,0) NOT NULL,
		"INTERFACENAME" VARCHAR2(50) NOT NULL,
		"INTERFACEENABLED" NUMBER(1,0) DEFAULT 0,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0),
		"CURRENTSTATUS" VARCHAR2(20) DEFAULT 'DISABLED',
		"INTERFACEUSERID" VARCHAR2(50),
		"INTERFACEPASSWORD" VARCHAR2(500) DEFAULT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=46 */ "EMOC3"."INTERFACEHISTORY" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2598 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2604 *** */
(
		"STATUSCHANGETIME" DATE NOT NULL,
		"STATUSCHANGEBY" NUMBER(10,0) NOT NULL,
		"CURRENTSTATUS" VARCHAR2(20) NOT NULL,
		"INTERFACECONTROLID" NUMBER(10,0) NOT NULL,
		"CURRENTENABLED" NUMBER(1,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=199 */ "EMOC3"."INTERFACEITEMS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2620 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2627 *** */
(
		"INTERFACEITEMID" NUMBER(10,0) NOT NULL,
		"INTERFACECONTROLID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"ITEMNAME" VARCHAR2(50),
		"ITEMENABLED" NUMBER(1,0) DEFAULT 0,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEDBY" NUMBER(10,0) DEFAULT 0,
		"TRIC" CHAR(3),
		"ITEMDESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=48 */ "EMOC3"."INTERFACEITEMSHISTORY" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2640 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2646 *** */
(
		"STATUSCHANGETIME" DATE DEFAULT 'sysdate ' NOT NULL,
		"STATUSCHANGEBY" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"CURRENTSTATUS" VARCHAR2(10),
		"INTERFACECONTROLID" NUMBER(10,0) NOT NULL,
		"PREENABLED" NUMBER(10,0) DEFAULT 0,
		"INTERFACEITEMID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=5419 */ "EMOC3"."INTERFACELOG" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2672 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2679 *** */
(
		"INTERFACELOGID" NUMBER(10,0) NOT NULL,
		"INTERFACECONTROLID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"TRANSACTIONTYPE" CHAR(3),
		"TIMEOFINSERT" DATE DEFAULT sysdate,
		"EXPIRATION" DATE,
		"CAMSVALIDATED" NUMBER(1,0) DEFAULT 0,
		"CANCELFLAG" NUMBER(1,0) DEFAULT 0,
		"USERID" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"XMLIN" CLOB,
		"XMLOUT" CLOB,
		"PARSED" NUMBER(1,0) DEFAULT 0,
		"SQUADRONID" NUMBER(10,1),
		"REJECTED" NUMBER(1,0) DEFAULT 0,
		"CORRECTED" NUMBER(1,0),
		"CORRECTIVEACTION" VARCHAR2(500),
		"UPDATEOBJECT" VARCHAR2(500),
		"ALERTMSG" VARCHAR2(4000),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 83886080
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=1144 */ "EMOC3"."INTERFACEREJECTLIST" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2692 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2699 *** */
(
		"REJECTID" NUMBER(10,1) NOT NULL,
		"INTERFACEITEMID" NUMBER(10,1),
		"FIELDNAME" VARCHAR2(100),
		"CONSTRAINTS" VARCHAR2(500),
		"REJECTCODE" VARCHAR2(10),
		"NARRATIVE" VARCHAR2(500)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4212 */ "EMOC3"."INVENTORYSTATUSUPDATETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2726 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2733 *** */
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
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=187 */ "EMOC3"."JOAP" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2748 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2755 *** */
(
		"JOAPID" NUMBER(10,0) NOT NULL,
		"JOAPCODE" VARCHAR2(50) NOT NULL,
		"JOAPDESCRIPTION" VARCHAR2(100),
		"LANDING" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"REDCAPSTATUS" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"DEFAULTJOAP" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"COLORRULESID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=224 */ "EMOC3"."JOAPDATA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2775 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2782 *** */
(
		"JOAPDATAID" NUMBER(10,0) NOT NULL,
		"JOAPID" NUMBER(10,0) NOT NULL,
		"ENGINEDATAID" NUMBER(10,0) NOT NULL,
		"MOCCONTROLLER" VARCHAR2(50) NOT NULL,
		"SAMPLEDATE" DATE NOT NULL,
		"REASON" VARCHAR2(50),
		"HOURSREQUIRED" NUMBER(10,1),
		"HOURSREMAINING" NUMBER(10,0),
		"NOTIFIEDBY" VARCHAR2(50),
		"EXPEDITERNOTIFIED" NUMBER(1,0) DEFAULT 0,
		"JOAPLASTUPDATED" DATE,
		"SCHEDULEID" NUMBER(10,0),
		"DATECLEARED" DATE DEFAULT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 2789
	Relative Current Chunk Line Number: 2789
	Column Number: 10
------------
 
-------------
Error Message
	Message: no viable alternative at character ' , 0) DEFAULT 0  NOT NULL,\n\t\t"MOCID" [null]'
------------

The following statement (from line 2784 to 2801) and was skipped" BEGIN*/
 CREATE TABLE "EMOC3"."LANDINGCODES" (
		"LANDINGCODEID" NUMBER(10 , 0) NOT NULL,
		"LANDINGCODE" VARCHAR2(10) NOT NULL,
		"LANDINGCODEDESCRIPTION" VARCHAR2(50),
		"WRITEUPNEEDED" NUMBER(1 , 0) DEFAULT 0  NOT NULL,
		"MOCID" null
	)
	PCTUSED 0
	LOGGING
	NOCOMPRESS
	STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	TABLESPACE "EMOCMAIN"@
CREATE TABLE  /* pagesizemin=4K rowlen=433 */ "EMOC3"."LINKS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2817 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2824 *** */
(
		"LINKID" NUMBER(10,0) NOT NULL,
		"LINKURL" VARCHAR2(100) NOT NULL,
		"LINKDESCRIPTION" VARCHAR2(255),
		"ENTEREDBY" NUMBER(10,0),
		"ENTEREDON" DATE DEFAULT sysdate,
		"LASTUPDATED" DATE DEFAULT sysdate,
		"LINKORDER" NUMBER(10,0) DEFAULT 0,
		"LINKTITLE" VARCHAR2(25) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4206 */ "EMOC3"."LOCATIONCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2844 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2851 *** */
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
		"NEWLOCATIONCODE" VARCHAR2(10)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=116 */ "EMOC3"."LOCATIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2868 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2875 *** */
(
		"LOCATIONID" NUMBER(10,0) NOT NULL,
		"LOCATIONCODE" VARCHAR2(10) NOT NULL,
		"LOCATIONNAME" VARCHAR2(50),
		"MAXIMUMOCCUPANCY" NUMBER(4,0) DEFAULT 9999  NOT NULL,
		"DEFAULTLOCATION" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"ELC" VARCHAR2(4),
		"LOCATIONRESTRICTIONCODE" VARCHAR2(2),
		"LASTUPDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 5242880
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=551 */ "EMOC3"."MAINTENANCEEVENTS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2908 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2915 *** */
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
		"SYMBOL" CHAR(1),
		"TSSCH" VARCHAR2(9) NOT NULL,
		"JOBDUR" VARCHAR2(4),
		"DISCREPANCY" VARCHAR2(180),
		"WCENARRATIVE" VARCHAR2(180),
		"EMPID" VARCHAR2(18),
		"ENTRY781" CHAR(1),
		"DEFER" CHAR(3),
		"WCESYMBOL" CHAR(1),
		"JOBFOLLOW" CHAR(1),
		"PARTSREQUIRED" CHAR(1),
		"AIRCRAFTID" NUMBER(10,0),
		"ENTERED" DATE DEFAULT SYSDATE,
		"INTERFACELOGID" NUMBER(10,0),
		"WORKCENTEREVENTID" VARCHAR2(9),
		"WORKCENTEREVENT" CHAR(3),
		"LASTUPDATE" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=97 */ "EMOC3"."MAJCOMS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2931 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2938 *** */
(
		"MAJCOMID" NUMBER(10,0),
		"MAJCOM" CHAR(3),
		"MAJCOMNARRATIVE" VARCHAR2(50),
		"CAMSINIT" DATE,
		"COMCODE" CHAR(2),
		"COMID" CHAR(3),
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=114 */ "EMOC3"."MAJORCOMMANDCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:2954 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:2961 *** */
(
		"MAJORCOMMANDCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"MAJORCOMMANDCODE" VARCHAR2(3),
		"MAJORCOMMANDCODENARRATIVE" VARCHAR2(50),
		"RECORDDATETIME" DATE DEFAULT SYSDATE,
		"TRANSACTIONCODE" VARCHAR2(1),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"MAJORCOMMANDABBREV" VARCHAR2(3)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4567 */ "EMOC3"."MDSEQUIPMENTTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3009 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3016 *** */
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
		"PRODUCTIONBLOCKNUMBER" VARCHAR2(3)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=399 */ "EMOC3"."MESSAGES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3030 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3037 *** */
(
		"MESSAGEID" NUMBER(10,0) NOT NULL,
		"MESSAGETYPE" VARCHAR2(3),
		"MESSAGETITLE" VARCHAR2(100) NOT NULL,
		"MESSAGE" VARCHAR2(255),
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=1264 */ "EMOC3"."MICAP" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3061 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3068 *** */
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
		"LASTUPDATED" DATE DEFAULT sysdate
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=221 */ "EMOC3"."MICAPTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3088 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3095 *** */
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
		"TRANSACTIONCODE" VARCHAR2(1)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=371 */ "EMOC3"."MICROSOFTDTPROPERTIES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3108 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3114 *** */
(
		"ID" NUMBER NOT NULL,
		"OBJECTID" NUMBER,
		"PROPERTY" VARCHAR2(64) NOT NULL,
		"VALUE" VARCHAR2(255),
		"LVALUE" VARCHAR2(10),
		"VERSION" NUMBER DEFAULT (0)  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=174 */ "EMOC3"."MISSIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3125 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3132 *** */
(
		"MISSIONID" NUMBER(10,0) NOT NULL,
		"MISSION" VARCHAR2(50) NOT NULL,
		"MISSIONDESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=274 */ "EMOC3"."MOC" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3143 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3150 *** */
(
		"MOCID" NUMBER(10,0) NOT NULL,
		"MOCTITLE" VARCHAR2(255) NOT NULL,
		"LASTUPDATED" DATE DEFAULT sysdate,
		"ISACTIVE" NUMBER(1,0) DEFAULT 1
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=21 */ "EMOC3"."MOCADMINS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3160 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3167 *** */
(
		"MOCADMINID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=97 */ "EMOC3"."MOCSTATUSICONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3179 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3186 *** */
(
		"MOCID" NUMBER NOT NULL,
		"STATUSIMAGEID" NUMBER(10,0) NOT NULL,
		"MISSIONDESIGNSERIES" VARCHAR2(15) NOT NULL,
		"STATUSCODE" VARCHAR2(50) NOT NULL,
		"ICON_TYPE" VARCHAR2(1) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=21 */ "EMOC3"."MOCUSERS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3196 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3203 *** */
(
		"MOCUSERID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=117 */ "EMOC3"."OLDPASSWORDS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3213 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3220 *** */
(
		"USERID" NUMBER(10,0),
		"USERPASSWORD" VARCHAR2(100),
		"CHGDATE" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=68 */ "EMOC3"."OPERATIONALEVENTDELETETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3235 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3242 *** */
(
		"OPERATIONALEVENTDELETETRXID" NUMBER NOT NULL,
		"HOMEENTERPRISELOCATIONCODE" VARCHAR2(4),
		"CURRENTENTERPRISELOCATIONCODE" VARCHAR2(4),
		"UNITID" VARCHAR2(1),
		"EQUIPMENTID" VARCHAR2(5),
		"SORTIEDATE" VARCHAR2(7),
		"SORTIENUMBER" VARCHAR2(3),
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=169 */ "EMOC3"."OPERATIONALEVENTLOADTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3268 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3275 *** */
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
		"SCHEDULINGBLOCKNUMBER" VARCHAR2(5)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4133 */ "EMOC3"."OPERATIONALEVENTREPLACEMENTTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3297 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3304 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=163 */ "EMOC3"."OPERATIONALEVENTUPDATETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3328 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3335 *** */
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
		"DATEPROCESSED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=131 */ "EMOC3"."ORDNANCE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3347 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3354 *** */
(
		"ORDNANCEID" NUMBER(10,0) NOT NULL,
		"WEAPONSTYPEID" NUMBER(10,0) NOT NULL,
		"ORDNANCE" VARCHAR2(50) NOT NULL,
		"CONFIGURATION" VARCHAR2(50),
		"MOCID" NUMBER(10,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=211 */ "EMOC3"."ORGANIZATIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3380 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3387 *** */
(
		"UNIT_ID" CHAR(1) NOT NULL,
		"STATION_LOCATION_CODE" VARCHAR2(4),
		"CAMSINIT" DATE,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"ORGNAME" VARCHAR2(50),
		"ORGANIZATIONSID" NUMBER(10,0) NOT NULL,
		"ORGID" VARCHAR2(5),
		"WINGID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"ORGANIZATIONNUMBER" VARCHAR2(10),
		"ORGANIZATIONKIND" VARCHAR2(10),
		"ORGANIZATIONTYPE" VARCHAR2(2),
		"AFI21103ORGANIZATIONNUMBER" VARCHAR2(10),
		"AFI21103ORGANIZATIONKIND" VARCHAR2(10),
		"AFI21103ORGANIZATIONTYPE" VARCHAR2(2),
		"DETACHMENTNUMBER" VARCHAR2(2),
		"OVERSEASINDICATOR" VARCHAR2(1) DEFAULT 'N',
		"CELASTREPORTINGDATE" VARCHAR2(5)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4400 */ "EMOC3"."ORGANIZATIONTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3420 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3427 *** */
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
		"NEWORGANIZATIONTYPE" VARCHAR2(2)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=23 */ "EMOC3"."PERMISSIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3438 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3445 *** */
(
		"PERMISSIONID" NUMBER(10,0) NOT NULL,
		"SQUADRONID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0) NOT NULL,
		"EMOCROLE" NUMBER(1,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=195 */ "EMOC3"."PILOT" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3460 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3467 *** */
(
		"PILOTID" NUMBER(10,0) NOT NULL,
		"PILOTNAME" VARCHAR2(50) NOT NULL,
		"RANKID" NUMBER(10,0) NOT NULL,
		"SQUADRONID" NUMBER(10,0) NOT NULL,
		"PILOTFIRSTNAME" VARCHAR2(50),
		"PILOTMIDINIT" CHAR(1),
		"PILOTLASTNAME" VARCHAR2(50),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=84 */ "EMOC3"."POSSESSIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3480 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3487 *** */
(
		"POSSESSIONID" NUMBER(10,0) NOT NULL,
		"POSSESSIONCODE" CHAR(2) NOT NULL,
		"POSSESSIONDESCRIPTION" VARCHAR2(50),
		"DEFAULTPOSSESSION" NUMBER(10,0) NOT NULL,
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 393216
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=174 */ "EMOC3"."RANGES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3498 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3505 *** */
(
		"RANGEID" NUMBER(10,0) NOT NULL,
		"RANGE" VARCHAR2(50) NOT NULL,
		"RANGEDESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=149 */ "EMOC3"."RANKS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3518 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3525 *** */
(
		"RANKID" NUMBER(10,0) NOT NULL,
		"RANKCODE" VARCHAR2(10) NOT NULL,
		"RANKDESCRIPTION" VARCHAR2(100),
		"DEFAULTRANK" NUMBER(10,0) NOT NULL,
		"GRADECODE" VARCHAR2(3),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4017 */ "EMOC3"."REMARKS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3535 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3542 *** */
(
		"REMARKSID" NUMBER(10,0) NOT NULL,
		"REMARKS" VARCHAR2(4000) NOT NULL,
		"REMARKSDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 655360
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=69 */ "EMOC3"."REPORTCOLUMNS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3552 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3558 *** */
(
		"COLUMNNUMBER" NUMBER(10,0) NOT NULL,
		"COLUMNNAME" VARCHAR2(50) NOT NULL,
		"REPORTID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=16K rowlen=13215 */ "EMOC3"."REPORTCRITERIA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3610 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3617 *** */
(
		"CRITERIAID" NUMBER NOT NULL,
		"REPORTID" NUMBER NOT NULL,
		"REPORTNAME" VARCHAR2(100) NOT NULL,
		"REPORTVIEW" VARCHAR2(50) NOT NULL,
		"FIELDS" VARCHAR2(4000) NOT NULL,
		"QUERYTYPE" VARCHAR2(10) NOT NULL,
		"NFFIELDNAME" VARCHAR2(50),
		"COLUMNHEADER" VARCHAR2(50),
		"CRITERIAFIELD1" VARCHAR2(50),
		"CRITERIAFIELD2" VARCHAR2(50),
		"CRITERIAFIELD3" VARCHAR2(50),
		"CRITERIAFIELD4" VARCHAR2(50),
		"CRITERIAFIELD5" VARCHAR2(50),
		"CRITERIAFIELD6" VARCHAR2(50),
		"COMPARISONOPERATOR1" VARCHAR2(10),
		"COMPARISONOPERATOR2" VARCHAR2(10),
		"COMPARISONOPERATOR3" VARCHAR2(10),
		"COMPARISONOPERATOR4" VARCHAR2(10),
		"COMPARISONOPERATOR5" VARCHAR2(10),
		"COMPARISONOPERATOR6" VARCHAR2(10),
		"CRITERIATEXT1" VARCHAR2(50),
		"CRITERIATEXT2" VARCHAR2(50),
		"CRITERIATEXT3" VARCHAR2(50),
		"CRITERIATEXT4" VARCHAR2(50),
		"CRITERIATEXT5" VARCHAR2(50),
		"CRITERIATEXT6" VARCHAR2(50),
		"ANDOR2" VARCHAR2(5),
		"ANDOR3" VARCHAR2(5),
		"ANDOR4" VARCHAR2(5),
		"ANDOR5" VARCHAR2(5),
		"ANDOR6" VARCHAR2(5),
		"RIGHTPAREN2" VARCHAR2(3),
		"RIGHTPAREN3" VARCHAR2(3),
		"RIGHTPAREN4" VARCHAR2(3),
		"RIGHTPAREN5" VARCHAR2(3),
		"RIGHTPAREN6" VARCHAR2(3),
		"LEFTPAREN1" VARCHAR2(3),
		"LEFTPAREN2" VARCHAR2(3),
		"LEFTPAREN3" VARCHAR2(3),
		"LEFTPAREN4" VARCHAR2(3),
		"LEFTPAREN5" VARCHAR2(3),
		"SORTBY" VARCHAR2(4000),
		"GROUPBY" VARCHAR2(4000),
		"DESCENDING" VARCHAR2(3),
		"MOCID" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=16K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=181 */ "EMOC3"."REPORTPARAMETERS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3629 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3636 *** */
(
		"PARAMETERNUMBER" NUMBER(10,0) NOT NULL,
		"PARAMETERNAME" VARCHAR2(100) NOT NULL,
		"PARAMETERTYPE" NUMBER(10,0) NOT NULL,
		"PARAMETERLABEL" VARCHAR2(50),
		"REPORTID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4207 */ "EMOC3"."REPORTS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3653 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3660 *** */
(
		"REPORTNAME" VARCHAR2(50) NOT NULL,
		"SQLSTATEMENT" VARCHAR2(4000) NOT NULL,
		"LIMITBYSQUADRON" NUMBER(10,0) NOT NULL,
		"REPORTID" NUMBER(10,0) NOT NULL,
		"REPORTSOURCE" VARCHAR2(100),
		"REPORTLASTUPDATED" DATE,
		"REPORTLASTUPDATER" NUMBER(10,0),
		"USERID" NUMBER(10,0),
		"PUBLICREPORT" CHAR(1),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=327 */ "EMOC3"."SCHEDULE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3709 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3716 *** */
(
		"SCHEDULEID" NUMBER(10,0) NOT NULL,
		"GO" NUMBER(10,0),
		"SCHEDULEDTAKEOFF" DATE,
		"SCHEDULEDLANDING" DATE,
		"ACTUALTAKEOFF" DATE,
		"ACTUALLANDING" DATE,
		"SPARE" NUMBER(10,0) NOT NULL,
		"ADJTAKEOFF" DATE,
		"ADJLANDING" DATE,
		"AREAARRIVETIME" DATE,
		"AREALEAVETIME" DATE,
		"LANDINGCODEID" NUMBER(10,0),
		"RANGEID" NUMBER(10,0),
		"DEVIATIONCODEID" NUMBER(10,0),
		"CAUSECODEID" NUMBER(10,0),
		"WXCODEID" NUMBER(10,0) DEFAULT 0,
		"MISSIONID" NUMBER(10,0),
		"AREAID" NUMBER(10,0),
		"AIRCRAFTID" NUMBER(10,0),
		"PILOTID" NUMBER(10,0),
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
		"SQUADRONID" NUMBER(10,0),
		"UTILCODEID" NUMBER(10,0),
		"CAMSINIT" DATE,
		"SCHEDULESOURCE" VARCHAR2(3),
		"INTERFACELOGID" NUMBER(10,0),
		"TYPE_EVENT" CHAR(1),
		"SWAPPEDLINE" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=93 */ "EMOC3"."SCHEDULEDEVIATIONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3738 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3745 *** */
(
		"SCHEDULEDEVIATIONID" NUMBER(10,0) NOT NULL,
		"SCHEDULEID" NUMBER(10,0),
		"DEVIATIONCODEID" NUMBER(10,0),
		"CAUSECODEID" NUMBER(10,0),
		"NEWCAUSECODE" NUMBER(10,0),
		"SORTIENUM" NUMBER(10,0),
		"SORTIEDATE" CHAR(7),
		"SORTIEMOD" CHAR(3),
		"ACTIONOPTIONS" CHAR(1),
		"CHARGEABLE" NUMBER(1,0),
		"STARTDATETIME" DATE,
		"STOPDATETIME" DATE,
		"MAINTENANCEEVENTID" CHAR(10),
		"DEVIATIONSREMARKS" NUMBER(10,0),
		"INTERFACELOGID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=247 */ "EMOC3"."SCHEDULESCSV" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3757 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3764 *** */
(
		"SCHEDULECSVID" NUMBER NOT NULL,
		"SCHEDULE" BLOB NOT NULL,
		"SCHEDULENAME" VARCHAR2(50) NOT NULL,
		"DATEUPLOADED" DATE NOT NULL,
		"MOCID" NUMBER NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=42 */ "EMOC3"."SCHEDULESTATUS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3778 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3785 *** */
(
		"SCHEDULESTATUSID" NUMBER(10,0),
		"SCHEDULEID" NUMBER(10,0),
		"STATUSCODEID" NUMBER(10,0),
		"STATUSTIME" DATE,
		"STATUSTYPE" NUMBER(1,0),
		"USERID" NUMBER(10,0),
		"FUELSTATUSID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=130 */ "EMOC3"."SEMEDX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3798 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3805 *** */
(
		"SEMEDXID" NUMBER(10,0) NOT NULL,
		"SEMEDX" CHAR(1) NOT NULL,
		"DEFAULTVAL" NUMBER(1,0) DEFAULT 0,
		"COLORRULESID" NUMBER(10,0) NOT NULL,
		"SEMEDXDESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=224 */ "EMOC3"."SEMEDXDATA" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3825 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3831 *** */
(
		"SEMDATAID" NUMBER(10,0) NOT NULL,
		"ENGINEDATAID" NUMBER(10,0) NOT NULL,
		"SEMEDXID" NUMBER(10,0) NOT NULL,
		"MOCCONTROLLER" VARCHAR2(50) NOT NULL,
		"SAMPLEDATE" DATE NOT NULL,
		"REASON" VARCHAR2(50),
		"HOURSREQUIRED" NUMBER(10,1),
		"HOURSREMAINING" NUMBER(10,0),
		"NOTIFIEDBY" VARCHAR2(50),
		"EXPEDITERNOTIFIED" NUMBER(1,0) DEFAULT 0,
		"SEMEDXLASTUPDATED" DATE,
		"SCHEDULEID" NUMBER(10,0),
		"DATECLEARED" DATE DEFAULT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=335 */ "EMOC3"."SHOPDISPATCH" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3853 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3860 *** */
(
		"SHOPDISPATCHID" NUMBER(10,0) NOT NULL,
		"AIRCRAFTID" NUMBER(10,0) NOT NULL,
		"REQUESTER" VARCHAR2(50),
		"WORKCENTERID" NUMBER(10,0),
		"PERSONCONTACTED" VARCHAR2(50),
		"PERSONDISPATCHED" VARCHAR2(50),
		"REQUESTDATE" DATE,
		"DISCREPANCY" VARCHAR2(50),
		"COMPLETIONDATE" DATE,
		"ETICSHOWTIME" DATE,
		"ENTEREDBY" VARCHAR2(50),
		"SQDISPATCHEDTOID" NUMBER(10,0),
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"ENTERED" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=788 */ "EMOC3"."SMSTESTBLOB" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3871 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3877 *** */
(
		"ID" NUMBER NOT NULL,
		"PHOTO" BLOB,
		"AUTHOR" VARCHAR2(100),
		"DESCRIPTION" VARCHAR2(500)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=168 */ "EMOC3"."SQUADRONS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3895 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3902 *** */
(
		"SQUADRONID" NUMBER(10,0) NOT NULL,
		"SQUADRONNAME" VARCHAR2(50) NOT NULL,
		"SHORTNAME" VARCHAR2(50) NOT NULL,
		"WINGID" NUMBER(10,0) NOT NULL,
		"COLORID" NUMBER(10,0) NOT NULL,
		"SLC" CHAR(4),
		"ORGANIZATION_ID" VARCHAR2(5),
		"CAMSINIT" DATE,
		"ORGANIZATIONSID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0,
		"TIMEOFFSETFROMMOC" NUMBER(2,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=28 */ "EMOC3"."SQUADRON_SORT_ORDER" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3913 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3920 *** */
(
		"SQSORTORDERID" NUMBER(10,0) NOT NULL,
		"USERID" NUMBER(10,0),
		"SQUADRONID" NUMBER(10,0),
		"SORTORDER" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=93 */ "EMOC3"."STATIONLOCCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3934 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3941 *** */
(
		"STALOCCODEID" NUMBER(10,0) NOT NULL,
		"STATIONLOC" VARCHAR2(4) NOT NULL,
		"STALOCNARRATIVE" VARCHAR2(50),
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"STARTDATE" DATE DEFAULT SYSDATE,
		"STOPDATE" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 458752
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=176 */ "EMOC3"."STATUSCODE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3960 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:3967 *** */
(
		"STATUSCODEID" NUMBER(10,0) NOT NULL,
		"STATUSCODE" VARCHAR2(50) NOT NULL,
		"ORDERNUMBER" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"ICONNAME" VARCHAR2(50) NOT NULL,
		"DEFAULTSTATUSCODE" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"LASTFLOWN" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"FLYING" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"TAKEOFF" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"STATUSCODELABEL" VARCHAR2(8),
		"ALLOWSORTIEUPDATE" NUMBER(1,0) DEFAULT 0,
		"ISREQUIRED" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=8K rowlen=4217 */ "EMOC3"."STATUSCORRECTIONTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:3993 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4000 *** */
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
		"UTCSTARTDATEANDTIME" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=427 */ "EMOC3"."STATUSIMAGE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4017 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4024 *** */
(
		"STATUSIMAGEID" NUMBER NOT NULL,
		"IMAGE_DATA" BLOB NOT NULL,
		"ICON_TYPE" VARCHAR2(1) DEFAULT 'B',
		"IMAGE_NAME" VARCHAR2(50) NOT NULL,
		"CONTENTTYPE" VARCHAR2(50),
		"STATUSCODE" VARCHAR2(50),
		"NOTE" VARCHAR2(50),
		"EXTENSION" VARCHAR2(4) DEFAULT '.gif',
		"DATEUPLOADED" DATE,
		"UPLOADEDBY" NUMBER
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=28 */ "EMOC3"."STATUSTRANSITIONRULE" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4035 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4042 *** */
(
		"STATRULEID" NUMBER(10,0) NOT NULL,
		"STATUSCODEID" NUMBER(10,0) NOT NULL,
		"TRANSITION2ID" NUMBER(10,0) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4433 */ "EMOC3"."STATUSUPDATETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4078 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4085 *** */
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
		"UTCSTARTDATEANDTIME" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=174 */ "EMOC3"."SUPPLYINQUIRY" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4105 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4112 *** */
(
		"EQUIPID" VARCHAR2(5),
		"DOCUMENTNUM" VARCHAR2(14),
		"WORKCENTER" VARCHAR2(5),
		"STAT" VARCHAR2(2),
		"EDD" VARCHAR2(4),
		"WUC" VARCHAR2(5),
		"QTY" VARCHAR2(5),
		"EVENTNUM" VARCHAR2(13),
		"LOC" VARCHAR2(3),
		"NARRATIVE" VARCHAR2(50),
		"UNITID" CHAR(1),
		"ELC" VARCHAR2(4),
		"AIRCRAFTID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=181 */ "EMOC3"."SYMBOLS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4124 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4131 *** */
(
		"SYMBOLID" NUMBER(10,0) NOT NULL,
		"CONDCODEID" NUMBER(10,0) NOT NULL,
		"SYMBOL" VARCHAR2(50) NOT NULL,
		"SYMBOLDESCRIPTION" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=932 */ "EMOC3"."TBMCSINTERFACELOG" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4149 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4156 *** */
(
		"INTERFACELOGID" NUMBER(10,0) NOT NULL,
		"TBMCSRESPONSERECV" DATE,
		"MESSAGEID" VARCHAR2(255),
		"CAMSVALIDATED" NUMBER(1,0) DEFAULT 0,
		"USERID" NUMBER(10,0),
		"TBMCSMSGSENT" DATE,
		"TBMCSRESPONSE" VARCHAR2(255),
		"UPDATEMETHOD" VARCHAR2(100),
		"MESSAGEBODY" CLOB,
		"UPDATEOBJECT" VARCHAR2(100),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 40894464
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4043 */ "EMOC3"."USERALERT" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4170 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4177 *** */
(
		"ALERTID" NUMBER(20,0) NOT NULL,
		"USERID" NUMBER(10,0),
		"SENTBY" NUMBER(10,0),
		"RECEIVED" DATE DEFAULT sysdate,
		"ACKNOWLEDGED" DATE DEFAULT NULL,
		"ALERTMSG" VARCHAR2(4000),
		"PRIORITY" NUMBER(1,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=192 */ "EMOC3"."USERIMAGES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4188 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4194 *** */
(
		"IMAGEID" NUMBER NOT NULL,
		"IMAGE" BLOB,
		"USERID" NUMBER NOT NULL,
		"DATEUPLOADED" DATE NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=422 */ "EMOC3"."USERLINKS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4209 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4216 *** */
(
		"LINKID" NUMBER(10,0) NOT NULL,
		"LINKURL" VARCHAR2(100) NOT NULL,
		"LINKDESCRIPTION" VARCHAR2(255),
		"ENTEREDBY" NUMBER(10,0),
		"ENTEREDON" DATE DEFAULT sysdate,
		"LASTUPDATED" DATE DEFAULT sysdate,
		"LINKORDER" NUMBER(2,0) DEFAULT 0,
		"LINKTITLE" VARCHAR2(25) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=1583 */ "EMOC3"."USERS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4250 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4257 *** */
(
		"USERID" NUMBER(10,0) NOT NULL,
		"USERNAME" VARCHAR2(25) NOT NULL,
		"USERPASSWORD" VARCHAR2(100),
		"FULLNAME" VARCHAR2(50),
		"IPADDRESS" VARCHAR2(50),
		"ISONLINE" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"BADATTEMPTS" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"AIRCRAFTSORTORDER1" VARCHAR2(50),
		"DATEPREFERENCE" NUMBER(1,0) DEFAULT 0,
		"TIMEPREFERENCE" NUMBER(1,0) DEFAULT 0,
		"USERSTATUS" VARCHAR2(10) DEFAULT 'New',
		"AIRCRAFTSORTORDER2" VARCHAR2(50),
		"AIRCRAFTSORTORDER3" VARCHAR2(50),
		"EMAIL" VARCHAR2(100),
		"EMOCADMIN" NUMBER(1,0) DEFAULT 0,
		"LASTLOGIN" DATE DEFAULT SYSDATE,
		"AIRCRAFTPERROW" NUMBER(2,0) DEFAULT 7,
		"REFRESHPREF" NUMBER(6,0) DEFAULT 10000,
		"USERHOMEHTML" CLOB,
		"VIEWABLESQUADRONS" VARCHAR2(200),
		"PORTALUSERID" VARCHAR2(255),
		"PORTALPASSWORD" VARCHAR2(255) DEFAULT '1D077A3FED700DB292F76BCEB2B839F9',
		"DEFAULTMOC" VARCHAR2(10),
		"BACKGROUNDCOLOR" VARCHAR2(28) DEFAULT '#000000',
		"FONTCOLOR" VARCHAR2(28) DEFAULT '#FFFFFF',
		"LINKCOLOR" VARCHAR2(28) DEFAULT '#FF0000',
		"RANKCODE" VARCHAR2(10) DEFAULT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=83 */ "EMOC3"."UTILIZATIONCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4272 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4279 *** */
(
		"UTILCODEID" NUMBER(10,0) NOT NULL,
		"UTILIZATIONCODE" CHAR(4) NOT NULL,
		"AUCNARRATIVE" VARCHAR2(20),
		"PROGRAMELEMENTCODE" VARCHAR2(8),
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"MISSIONDESIGNSERIES" VARCHAR2(11),
		"LASTUPDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=2098 */ "EMOC3"."UTILIZATIONCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4295 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4302 *** */
(
		"UTILIZATIONCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"AIRCRAFTUTILIZATIONCODE" VARCHAR2(4),
		"AUCNARRATIVE" VARCHAR2(20),
		"MISSIONDESIGNSERIES" VARCHAR2(9),
		"PROGRAMELEMENTCODE" VARCHAR2(8),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"APPLICATIONNOTE" NVARCHAR2(1000)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 720896
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4156 */ "EMOC3"."UVRCHANGETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4325 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4332 *** */
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
		"REMOTEPRINTINDICATOR" VARCHAR2(1)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=23 */ "EMOC3"."WEAPONSCLASS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4343 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4350 *** */
(
		"WEAPONSCLASSID" NUMBER(10,0) NOT NULL,
		"WEAPONSCLASS" CHAR(1) NOT NULL,
		"DEFAULTVAL" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=37 */ "EMOC3"."WEAPONSINFO" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4363 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4369 *** */
(
		"WEAPONSID" NUMBER(10,0) NOT NULL,
		"COMBATSCLID" NUMBER(10,0) NOT NULL,
		"CHAFF" NUMBER(10,0) DEFAULT 0,
		"FLARE" NUMBER(10,0) DEFAULT 0,
		"HOTGUNS" NUMBER(1,0) DEFAULT 0,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=49 */ "EMOC3"."WEAPONSLOAD" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4383 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4390 *** */
(
		"LOADID" NUMBER(10,0) NOT NULL,
		"STATION" NUMBER(10,0) NOT NULL,
		"ORDNANCEID" NUMBER(10,0),
		"WEAPONSNUMBER" NUMBER(10,0) NOT NULL,
		"AIRCRAFTID" NUMBER(10,0),
		"WEAPONSCLASSID" NUMBER(10,0),
		"FIRESYMBOLID" NUMBER(10,0)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=69 */ "EMOC3"."WEAPONTYPES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4400 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4407 *** */
(
		"WEAPONSTYPEID" NUMBER(10,0) NOT NULL,
		"WEAPONTYPE" VARCHAR2(50) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=194 */ "EMOC3"."WEBSERVERS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4417 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4423 *** */
(
		"SERVERID" NUMBER NOT NULL,
		"SERVERNAME" VARCHAR2(50) NOT NULL,
		"SERVERURL" VARCHAR2(125) NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=91 */ "EMOC3"."WHENDISCOVEREDCODES" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4438 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4445 *** */
(
		"WHENDISCOVEREDID" NUMBER(10,0) NOT NULL,
		"WDC" CHAR(1) NOT NULL,
		"WDCNARRATIVE" VARCHAR2(50) NOT NULL,
		"CAMSINIT" DATE,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"STARTDATE" DATE DEFAULT SYSDATE,
		"STOPDATE" DATE,
		"LASTUPDATE" DATE DEFAULT SYSDATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=149 */ "EMOC3"."WHENDISCOVEREDCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4461 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4468 *** */
(
		"WHENDISCOVEREDCODETRXID" NUMBER(20,0) NOT NULL,
		"FROMENTERPRISELOCATIONCODE" VARCHAR2(4),
		"FROMUNITID" VARCHAR2(1),
		"WHENDISCOVEREDCODE" VARCHAR2(1),
		"WHENDISCOVEREDCODENARRATIVE" VARCHAR2(50),
		"STARTDATE" VARCHAR2(20),
		"STOPDATE" VARCHAR2(20),
		"DATEPROCESSED" DATE DEFAULT SYSDATE,
		"TRANSACTIONCODE" VARCHAR2(1)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=135 */ "EMOC3"."WINGS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4492 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4499 *** */
(
		"WINGID" NUMBER(10,0) NOT NULL,
		"WINGNAME" VARCHAR2(50) NOT NULL,
		"UNITID" CHAR(1),
		"COMMANDCODE" CHAR(3),
		"ELC" CHAR(4),
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"DEFAULTWING" NUMBER(1,0) DEFAULT 0,
		"SCHEDULEDOW" NUMBER(1,0) DEFAULT 5,
		"SCHEDULETIME" CHAR(4) DEFAULT '1500',
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL,
		"TIMEZONEFACTOR" VARCHAR2(1) DEFAULT NULL,
		"TIMEZONEHOURS" VARCHAR2(2) DEFAULT NULL,
		"GMTFACTOR" VARCHAR2(1) DEFAULT NULL,
		"GMTHOURS" VARCHAR2(2) DEFAULT NULL,
		"REMOTEPRINTINDICATOR" VARCHAR2(1),
		"IMDSINTERFACEON" NUMBER(1,0) DEFAULT 0
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=4K rowlen=120 */ "EMOC3"."WORKCENTERS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4516 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4523 *** */
(
		"WORKCENTERID" NUMBER(10,0) NOT NULL,
		"WORKCENTERNAME" VARCHAR2(50),
		"PORGID" VARCHAR2(10),
		"CAMSINIT" DATE,
		"WORKCENTERCODE" VARCHAR2(5) NOT NULL,
		"UNIT_ID" CHAR(1),
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"WINGID" NUMBER(10,0),
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 917504
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=8K rowlen=4245 */ "EMOC3"."WORKCENTERTRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4543 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4550 *** */
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
		"TRANSACTIONTYPE" VARCHAR2(50)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 393216
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=8K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=241 */ "EMOC3"."WORKUNITCODETRX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4569 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4576 *** */
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
		"TRANSACTIONCODE" VARCHAR2(1)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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

CREATE TABLE  /* pagesizemin=16K rowlen=8137 */ "EMOC3"."WRITEUPS" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4596 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4603 *** */
(
		"WRITEUPID" NUMBER(10,0) NOT NULL,
		"WRITEUPTIME" DATE NOT NULL,
		"JCN" VARCHAR2(50),
		"CORRECTED" NUMBER(10,0) NOT NULL,
		"CORRECTEDTIME" DATE,
		"PACER" NUMBER(10,0) NOT NULL,
		"ETIC" CHAR(9),
		"AIRCRAFTID" NUMBER(10,0),
		"SYMBOLID" NUMBER(10,0),
		"WUCID" NUMBER(20,0),
		"DISCREPANCY" VARCHAR2(4000),
		"CORRECTIVEACTION" VARCHAR2(4000),
		"CAMSINIT" DATE
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=16K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=196 */ "EMOC3"."WUC" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4621 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4628 *** */
(
		"WUCID" NUMBER(20,0) NOT NULL,
		"WUCCODE" VARCHAR2(32) NOT NULL,
		"WUCDESCRIPTION" VARCHAR2(50),
		"WUCSTARTDATE" DATE DEFAULT SYSDATE,
		"WUCSTOPDATE" DATE,
		"CAMSINIT" DATE,
		"LASTUPDATE" DATE DEFAULT SYSDATE,
		"LASTUPDATEBY" NUMBER(10,0) DEFAULT 0,
		"MISSIONDESIGNSERIES" VARCHAR2(15),
		"BLOCKNUMBER" VARCHAR2(3) DEFAULT '000',
		"NEWWUC" VARCHAR2(32)
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 46137344
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)
	<< Code Fragment was removed - END*/
IN  /* pagesizemin=4K */ "EMOCMAIN"
@

CREATE TABLE  /* pagesizemin=4K rowlen=136 */ "EMOC3"."WX" 
/* *** DCW Evaluation Issue "DDL_TABLE_STORAGE_CLAUSE".Corresponding line no in the source file:4640 *** */

/* *** DCW Evaluation Issue "DDL_TABLE_TSPACE_CLAUSE".Corresponding line no in the source file:4647 *** */
(
		"WXCODEID" NUMBER(10,0) NOT NULL,
		"WEATHERDESCRIPTION" VARCHAR2(100),
		"DEFAULTWEATHERCODE" NUMBER(1,0) DEFAULT 0  NOT NULL,
		"WEATHERCODE" VARCHAR2(10) NOT NULL,
		"MOCID" NUMBER(10,0) DEFAULT 0  NOT NULL
	)
	/*Code Fragment was removed >> PCTUSED 0
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> NOCOMPRESS<< Code Fragment was removed - END*/
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
