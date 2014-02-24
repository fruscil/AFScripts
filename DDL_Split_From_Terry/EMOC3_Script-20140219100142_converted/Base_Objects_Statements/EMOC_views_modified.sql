
		  	CREATE OR REPLACE VIEW "EMOC3"."WEAPONS_VIEW" ("WING", "UNITID", "ELC", "SQUADRONNAME", "MOCID", "AIRCRAFTYEAR", "TAILNUMBER", "AIRCRAFTMDS", "COMBATSCL", "WEAPONSNUMBER", "WEAPONTYPE", "ORDNANCE", "CONFIGURATION", "HOTGUNS", "ARM_DEARM") AS
	SELECT * from ( select WINGS.wingname WING,
	    WINGS.unitid UNITID,
	    WINGS.elc,
	    squ.squadronname,
	AIRCRAFT.MOCID,
	    AIRCRAFT.aircraftyear AIRCRAFTYEAR,
	       AIRCRAFT.shorttailnumber TAILNUMBER,
	    "MDS".AIRCRAFTMDS AIRCRAFTMDS,
	    COMBATSCLS.combatscl,
	       TO_CHAR(WEAPONSLOAD.weaponsnumber) weaponsnumber,
	    WEAPONTYPES.weapontype,
	    ORDNANCE.ORDNANCE,
	       ORDNANCE.configuration,
	    DECODE(TO_CHAR(AIRCRAFT.hotguns), '1', 'Y', 'N') hotguns,
	    DECODE(TO_CHAR(AIRCRAFT.arm_dearm), '1', 'Y', 'N') arm_dearm
	  FROM EMOC3.AIRCRAFT,
	       EMOC3.COMBATSCLS,
	       EMOC3.ORDNANCE,
	       EMOC3.WEAPONSINFO,
	       EMOC3.WEAPONSLOAD,
	       EMOC3.WEAPONTYPES,
	       EMOC3.SQUADRONS squ,
	       EMOC3.WINGS WINGS,
	       EMOC3.AIRCRAFTMDS "MDS"
	 WHERE (    (COMBATSCLS.combatsclid(+) = AIRCRAFT.combatsclid)
	        AND (COMBATSCLS.combatsclid = WEAPONSINFO.combatsclid(+))
	        AND (AIRCRAFT.aircraftid = WEAPONSLOAD.aircraftid(+))
	        AND (ORDNANCE.ordnanceid(+) = WEAPONSLOAD.ordnanceid)
	        AND (WEAPONTYPES.weaponstypeid = ORDNANCE.weaponstypeid)
	        AND (squ.squadronid = AIRCRAFT.squadronid)
	        AND (WINGS.wingid = squ.wingid)
	        AND ("MDS".aircraftmdsid = AIRCRAFT.aircraftmdsid)
	       ) ORDER BY TAILNUMBER  )
	       
	       @
		   
		 	CREATE OR REPLACE VIEW "EMOC3"."STATUSTRANSITIONRULESVIEW" ("STATUSCODEID", "TRANSITION2ID", "MOCID") AS
	SELECT  * from (select str.statuscodeid, str.transition2id, str.mocid
	FROM statustransitionrule str, statuscode sc
	WHERE str.statuscodeid = sc.statuscodeid
	AND sc.allowsortieupdate = 1
	ORDER BY sc.ordernumber )
	
	@  
	
		CREATE OR REPLACE VIEW "EMOC3"."SQUADRONVIEW" ("SQUADRONID", "SQUADRONNAME", "COLORVALUE", "WINGID", "COLORNAME", "SHORTNAME", "FONTCOLOR", "MOCID") AS
	SELECT * from (select  squadronid, squadronname, colorvalue, wingid,
	   colorname, shortname, fontcolor, squadrons.mocid
	FROM squadrons LEFT JOIN colors ON squadrons.colorid = colors.colorid
	ORDER BY squadronname )
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."SQUADRONSORTORDERVIEW" ("USERID", "SQUADRONID", "SORTORDER", "SQUADRONNAME", "SHORTNAME", "COLORVALUE", "WINGID", "COLORNAME", "FONTCOLOR", "MOCID") AS
	SELECT * from (select userid, squadrons.squadronid, sortorder, squadronname,
	         shortname, colorvalue, wingid, colorname, fontcolor, squadrons.mocid
	FROM emoc3.squadron_sort_order JOIN emoc3.squadrons ON squadron_sort_order.squadronid = squadrons.squadronid
	LEFT JOIN emoc3.colors ON squadrons.colorid = colors.colorid
	ORDER BY wingid, sortorder)
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."PILOTVIEW" ("SQUADRONID", "SQUADRONNAME", "COLORVALUE", "WINGID", "COLORNAME", "SHORTNAME", "FONTCOLOR", "MOCID") AS
	SELECT * from (select squadronid, squadronname, colorvalue, wingid,
	   colorname, shortname, fontcolor, squadrons.mocid
	FROM squadrons LEFT JOIN colors ON squadrons.colorid = colors.colorid
	ORDER BY squadronname )
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."JOAP_VIEW" ("WING", "UNITID", "ELC", "SQUADRONNAME", "MOCID", "AIRCRAFTYEAR", "TAILNUMBER", "MISEQUIPID", "SERIALNUMBER", "AIRCRAFTMDS", "ENGINENUMBER", "SORTIEDATE", "SORTIENUM", "JOAPCODE", "REDCAPSTATUS", "COLORVALUE", "COLORNAME", "COLORRANK", "SAMPLEDATE", "REASON", "NOTIFIEDBY", "MOCCONTROLLER", "JOAPLASTUPDATED", "HOURSREQUIRED", "HOURSREMAINING", "EXPEDITED") AS
	SELECT * from (select 
	      WINGS.wingname "WING",
	    WINGS.UNITID "UNITID",
	    WINGS.ELC "ELC",
	       SQUADRONS.squadronname,
	AIRCRAFT.MOCID,
	    AIRCRAFT.aircraftyear "AIRCRAFTYEAR",
	       AIRCRAFT.shorttailnumber "TAILNUMBER",
	    AIRCRAFT.misequipid "MISEQUIPID",
	       AIRCRAFT.serialnumber "SERIALNUMBER",
	       AIRCRAFTMDS.AIRCRAFTMDS "AIRCRAFTMDS",
	    TO_CHAR(AIRCRAFTENGINEDATA.enginenumber) "ENGINENUMBER",
	    SCHEDULE.SORTIEDATE,
	    TO_CHAR(SCHEDULE.SORTIENUM) "SORTIENUM",
	    JOAP.joapcode "JOAPCODE",
	    DECODE(TO_CHAR(JOAP.REDCAPSTATUS), '1', 'Y', 'N') "REDCAPSTATUS",
	    COLORS.colorvalue "COLORVALUE",
	    COLORS.COLORNAME "COLORNAME",
	    TO_CHAR(COLORRULES.colorrank) "COLORRANK",
	    TO_CHAR(JOAPDATA.SAMPLEDATE, 'MM/DD/YYYY HH24:MI:SS') "SAMPLEDATE",
	    JOAPDATA.REASON "REASON",
	    JOAPDATA.NOTIFIEDBY "NOTIFIEDBY",
	    JOAPDATA.MOCCONTROLLER "MOCCONTROLLER",
	    TO_CHAR(JOAPDATA.JOAPLASTUPDATED, 'MM/DD/YYYY HH24:MI:SS') "JOAPLASTUPDATED",
	    JOAPDATA.HOURSREQUIRED "HOURSREQUIRED",
	    JOAPDATA.HOURSREMAINING "HOURSREMAINING",
	    DECODE(TO_CHAR(JOAPDATA.EXPEDITERNOTIFIED), '1', 'Y', 'N') "EXPEDITED"
	FROM EMOC3.AIRCRAFT, EMOC3.AIRCRAFTMDS, EMOC3.WINGS, EMOC3.SQUADRONS, EMOC3.JOAP, EMOC3.COLORS, EMOC3.COLORRULES, EMOC3.AIRCRAFTENGINEDATA, EMOC3.JOAPDATA, EMOC3.SCHEDULE
	WHERE (    (AIRCRAFT.aircraftid = AIRCRAFTENGINEDATA.aircraftid)
	        AND (AIRCRAFT.squadronid = SQUADRONS.SQUADRONID)
	        AND (SQUADRONS.wingid = WINGS.wingid)
	        AND (AIRCRAFT.aircraftmdsid = AIRCRAFTMDS.aircraftmdsid)
	        AND (AIRCRAFTENGINEDATA.enginedataid = JOAPDATA.enginedataid)
	        AND (JOAP.joapid = JOAPDATA.joapid)
	        AND (JOAP.colorrulesid = COLORRULES.colorrulesid)
	  AND (COLORRULES.CODETYPE = 'JOAP')
	        AND (COLORRULES.colorid = COLORS.colorid)
	  AND (JOAPDATA.scheduleid(+) = SCHEDULE.scheduleid)
	       )
	ORDER BY AIRCRAFTENGINEDATA.enginenumber, JOAPDATA.SAMPLEDATE )
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."FLYBOARD_ARCHIVE_VIEW" ("SQUADRONNAME", "MOCID", "AIRCRAFTYEAR", "TAILNUMBER", "MISEQUIPID", "SERIALNUMBER", "AIRCRAFTMDS", "OTHERMDS", "SCH_GO", "SCH_SCHEDTAKEOFF", "SCH_SCHEDLAND", "SCH_ACTUALTAKEOFF", "SCH_ACTUALLAND", "SCH_SPARE", "SCH_ADJTAKEOFF", "SCH_ADJLANDING", "SCH_AREAARRIVETIME", "SCH_AREALEAVETIME", "SCH_LANDINGCODE", "SCH_RANGE", "SCH_DEVIATIONCODE", "SCH_CAUSECODE", "SCH_WEATHERCODE", "SCH_MISSION", "SCH_AREA", "SCH_PILOTNAME", "SCH_SORTIENUM", "SCH_SORTIEMOD", "SCH_SORTIEDATE", "SCH_BLOCKNUMBER", "SCH_PUBLISHEDFLAG", "SCH_SCHEDDAY", "SCH_CALLSIGN", "SCH_TRANSIENT", "SCH_DURATIONSCHEDULED", "SCH_DURATIONACTUAL", "SCH_CONFIGCODE", "SCH_SCHEDULEREMARKS", "SCH_MAINTREMARKS", "SCH_SORTIEJOAP", "SCH_SORTIESEMEDX", "SCH_SQUADRONNAME", "SCH_UTILIZATIONCODE", "SCH_SCHEDULESOURCE", "SCH_INTERFACELOGID", "SCH_ARCHIVEDATE", "SST_STATUSCODE", "SST_STATUSTIME", "SST_STATUSTYPE", "SST_ARCHIVEDATE", "DEV_DEVIATIONCODE", "DEV_CAUSECODE", "DEV_NEWCAUSECODE", "DEV_SORTIENUM", "DEV_SORTIEDATE", "DEV_SORTIEMOD", "DEV_ACTIONOPTIONS", "DEV_CHARGEABLE", "DEV_STARTDATETIME", "DEV_STOPDATETIME", "DEV_DEVIATIONREMARKS", "DEV_ARCHIVEDATE", "MNT_UNIT", "MNT_PCW", "MNT_EQUIPID", "MNT_CP", "MNT_WUCLCN", "MNT_WD", "MNT_PRIORITY", "MNT_SYMBOL", "MNT_TSSCH", "MNT_JOBDUR", "MNT_DISCREPANCY", "MNT_WCENARRATIVE", "MNT_EMPID", "MNT.ENTRY781", "MNT_DEFER", "MNT_WCESYMBOL", "MNT_JOBFOLLOW", "MNT_PARTSREQUIRED", "MNT_ENTERED", "MNT_ARCHIVEDATE", "JOAP", "JOAP_MOCCONTROLLER", "JOAP_SAMPLEDATE", "JOAP_REASON", "JOAP_HOURSREQUIRED", "JOAP_HOURSREMAINING", "JOAP_NOTIFIEDBY", "JOAP_EXPEDITERNOTIFIED", "JOAPLASTUPDATED", "JOAP_ARCHIVEDATE", "SEMEDX", "SEM_MOCCONTROLLER", "SEM_SAMPLEDATE", "SEM_REASON", "SEM_HOURSREQUIRED", "SEM_HOURSREMAINING", "SEM_NOTIFYBY", "SEM_EXPEDITERNOTIFIED", "SEMEDXLASTUPDATED", "SEM_ARCHIVEDATE") AS
	SELECT
	       AC.SQUADRONNAME,
	     AC1.MOCID,
	    AC.AIRCRAFTYEAR "AIRCRAFTYEAR",
	       AC.SHORTTAILNUMBER "TAILNUMBER",
	    AC.MISEQUIPID "MISEQUIPID",
	       AC.SERIALNUMBER "SERIALNUMBER",
	       AC.AIRCRAFTMDS "AIRCRAFTMDS",
	    AC.RELATEDMDS "OTHERMDS",
	    SCHEDULE.GO "SCH_GO",
	    SCHEDULE.SCHEDULEDTAKEOFF "SCH_SCHEDTAKEOFF",
	    SCHEDULE.SCHEDULEDLANDING "SCH_SCHEDLAND",
	    SCHEDULE.ACTUALTAKEOFF "SCH_ACTUALTAKEOFF",
	    SCHEDULE.ACTUALLANDING "SCH_ACTUALLAND",
	    SCHEDULE.SPARE "SCH_SPARE",
	    SCHEDULE.ADJTAKEOFF "SCH_ADJTAKEOFF",
	    SCHEDULE.ADJLANDING "SCH_ADJLANDING",
	    SCHEDULE.AREAARRIVETIME "SCH_AREAARRIVETIME",
	    SCHEDULE.AREALEAVETIME "SCH_AREALEAVETIME",
	    SCHEDULE.LANDINGCODE "SCH_LANDINGCODE",
	    SCHEDULE.RANGE "SCH_RANGE",
	    SCHEDULE.DEVIATIONCODE "SCH_DEVIATIONCODE",
	    SCHEDULE.CAUSECODE "SCH_CAUSECODE",
	    SCHEDULE.WEATHERCODE "SCH_WEATHERCODE",
	    SCHEDULE.MISSION "SCH_MISSION",
	    SCHEDULE.AREA "SCH_AREA",
	    SCHEDULE.PILOTNAME "SCH_PILOTNAME",
	    SCHEDULE.SORTIENUM "SCH_SORTIENUM",
	    SCHEDULE.SORTIEMOD "SCH_SORTIEMOD",
	    SCHEDULE.SORTIEDATE "SCH_SORTIEDATE",
	    SCHEDULE.BLOCKNUMBER "SCH_BLOCKNUMBER",
	    SCHEDULE.PUBLISHED_FLAG "SCH_PUBLISHEDFLAG",
	    SCHEDULE.SCHEDDAY "SCH_SCHEDDAY",
	    SCHEDULE.CALLSIGN "SCH_CALLSIGN",
	    SCHEDULE.TRANSIENT "SCH_TRANSIENT",
	    SCHEDULE.DURATIONSCHEDULED "SCH_DURATIONSCHEDULED",
	    SCHEDULE.DURATIONACTUAL "SCH_DURATIONACTUAL",
	    SCHEDULE.CONFIGCODE "SCH_CONFIGCODE",
	    SCHEDULE.SCHEDULEREMARKS "SCH_SCHEDULEREMARKS",
	    SCHEDULE.MAINTREMARKS "SCH_MAINTREMARKS",
	    SCHEDULE.SORTIE_JOAP "SCH_SORTIEJOAP",
	    SCHEDULE.SORTIE_SEMEDX "SCH_SORTIESEMEDX",
	    SCHEDULE.SQUADRONNAME "SCH_SQUADRONNAME",
	    SCHEDULE.UTILIZATIONCODE "SCH_UTILIZATIONCODE",
	    SCHEDULE.SCHEDULESOURCE "SCH_SCHEDULESOURCE",
	    SCHEDULE.INTERFACELOGID "SCH_INTERFACELOGID",
	    SCHEDULE.ARCHIVEDATE "SCH_ARCHIVEDATE",
	    SST.STATUSCODE "SST_STATUSCODE",
	    SST.STATUSTIME "SST_STATUSTIME",
	    SST.STATUSTYPE "SST_STATUSTYPE",
	    SST.ARCHIVEDATE "SST_ARCHIVEDATE",
	    DEV.DEVIATIONCODE "DEV_DEVIATIONCODE",
	    DEV.CAUSECODE "DEV_CAUSECODE",
	    DEV.NEWCAUSECODE "DEV_NEWCAUSECODE",
	    DEV.SORTIENUM "DEV_SORTIENUM",
	    DEV.SORTIEDATE "DEV_SORTIEDATE",
	    DEV.SORTIEMOD "DEV_SORTIEMOD",
	    DEV.ACTIONOPTIONS "DEV_ACTIONOPTIONS",
	    DEV.CHARGEABLE "DEV_CHARGEABLE",
	    DEV.STARTDATETIME "DEV_STARTDATETIME",
	    DEV.STOPDATETIME "DEV_STOPDATETIME",
	    DEV.DEVIATIONSREMARKS "DEV_DEVIATIONREMARKS",
	    DEV.ARCHIVEDATE "DEV_ARCHIVEDATE",
	    MNT.UNIT "MNT_UNIT",
	    MNT.PWC "MNT_PCW",
	    MNT.EQUIPID "MNT_EQUIPID",
	    MNT.CP "MNT_CP",
	    MNT.WUCLCN "MNT_WUCLCN",
	    MNT.WD "MNT_WD",
	    MNT.PRIORITY "MNT_PRIORITY",
	    MNT.SYMBOL "MNT_SYMBOL",
	    MNT.TSSCH "MNT_TSSCH",
	    MNT.JOBDUR "MNT_JOBDUR",
	    MNT.DISCREPANCY "MNT_DISCREPANCY",
	    MNT.WCENARRATIVE "MNT_WCENARRATIVE",
	    MNT.EMPID "MNT_EMPID",
	    MNT.ENTRY781 "MNT.ENTRY781",
	    MNT.DEFER "MNT_DEFER",
	    MNT.WCESYMBOL "MNT_WCESYMBOL",
	    MNT.JOBFOLLOW "MNT_JOBFOLLOW",
	    MNT.PARTSREQUIRED "MNT_PARTSREQUIRED",
	    MNT.ENTERED "MNT_ENTERED",
	    MNT.ARCHIVEDATE "MNT_ARCHIVEDATE",
	    JOAP.JOAP "JOAP",
	    JOAP.MOCCONTROLLER "JOAP_MOCCONTROLLER",
	    JOAP.SAMPLEDATE "JOAP_SAMPLEDATE",
	    JOAP.REASON "JOAP_REASON",
	    JOAP.HOURSREQUIRED "JOAP_HOURSREQUIRED",
	    JOAP.HOURSREMAINING "JOAP_HOURSREMAINING",
	    JOAP.NOTIFIEDBY "JOAP_NOTIFIEDBY",
	    JOAP.EXPEDITERNOTIFIED "JOAP_EXPEDITERNOTIFIED",
	    JOAP.JOAPLASTUPDATED "JOAPLASTUPDATED",
	    JOAP.ARCHIVEDATE "JOAP_ARCHIVEDATE",
	    SEM.SEMEDX "SEMEDX",
	    SEM.MOCCONTROLLER "SEM_MOCCONTROLLER",
	    SEM.SAMPLEDATE "SEM_SAMPLEDATE",
	    SEM.REASON "SEM_REASON",
	    SEM.HOURSREQUIRED "SEM_HOURSREQUIRED",
	    SEM.HOURSREMAINING "SEM_HOURSREMAINING",
	    SEM.NOTIFIEDBY "SEM_NOTIFYBY",
	    SEM.EXPEDITERNOTIFIED "SEM_EXPEDITERNOTIFIED",
	    SEM.SEMEDXLASTUPDATED "SEMEDXLASTUPDATED",
	    SEM.ARCHIVEDATE "SEM_ARCHIVEDATE"
	FROM EMOCAUX.SCHEDULE SCHEDULE
	LEFT JOIN EMOCAUX.AIRCRAFT AC ON AC.AIRCRAFTID = SCHEDULE.AIRCRAFTID
	LEFT  JOIN EMOC3.AIRCRAFT AC1 ON AC1.AIRCRAFTID = AC.AIRCRAFTID
	LEFT JOIN EMOCAUX.SCHEDULESTATUS SST ON SST.SCHEDULEID = SCHEDULE.SCHEDULEID
	LEFT JOIN EMOCAUX.SCHEDULEDEVIATIONS DEV ON DEV.SCHEDULEID = SCHEDULE.SCHEDULEID
	LEFT JOIN EMOCAUX.MAINTENANCEEVENTS MNT ON MNT.MAINTENANCEEVENTID = DEV.MAINTENANCEEVENTID
	LEFT JOIN EMOCAUX.JOAPDATA JOAP ON JOAP.SCHEDULEID = SCHEDULE.SCHEDULEID
	LEFT JOIN EMOCAUX.SEMEDXDATA SEM ON SEM.SCHEDULEID = SCHEDULE.SCHEDULEID
	
@

	CREATE OR REPLACE VIEW "EMOC3"."FLIGHTSVIEW" ("FLIGHTID", "FLIGHTNAME", "SQUADRONID", "WORKCENTERID", "SHORTNAME", "WORKCENTERCODE", "MOCID") AS
	SELECT * FROM (SELECT flightid, flightname, squadrons.squadronid,
	   workcenters.workcenterid, shortname, workcentercode, squadrons.mocid
	FROM emoc3.flights JOIN emoc3.squadrons ON flights.squadronid = squadrons.squadronid
	JOIN emoc3.workcenters ON flights.workcenterid = workcenters.workcenterid
	ORDER BY flightname)
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."DEVIATIONCODEVIEW" ("DEVIATIONCODEID", "DEVIATIONCODE", "DEVIATIONDESCRIPTION", "COLORVALUE", "DEVAULTDEVIATIONCODE", "MOCID") AS
	SELECT * FROM (SELECT deviationcodeid, deviationcode, deviationdescription,
	         colorvalue, defaultdeviationcode, deviationcodes.mocid
	FROM deviationcodes LEFT JOIN colors ON deviationcodes.colorid = colors.colorid
	ORDER BY deviationcode)
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."AIRCRAFT_HISTORY_ARCHIVE_VIEW" ("SQUADRONNAME", "AIRCRAFTYEAR", "TAILNUMBER", "MISEQUIPID", "SERIALNUMBER", "AIRCRAFTMDS", "OTHERMDS", "HIS_EVENTDATE", "HIS_ELEMENTVALUE", "HIS_ELEMENT", "HIS_TRANSACTIONID", "HIS_ARCHIVEDATE", "MOCID") AS
	SELECT
	       AIRCRAFT.SQUADRONNAME,
	    AIRCRAFT.AIRCRAFTYEAR "AIRCRAFTYEAR",
	       AIRCRAFT.SHORTTAILNUMBER "TAILNUMBER",
	    AIRCRAFT.MISEQUIPID "MISEQUIPID",
	       AIRCRAFT.SERIALNUMBER "SERIALNUMBER",
	       AIRCRAFT.AIRCRAFTMDS "AIRCRAFTMDS",
	    AIRCRAFT.RELATEDMDS "OTHERMDS",
	    HIS.EVENTDATE "HISTORY_EVENTDATE",
	    HIS.ELEMENT "HISTORY_ELEMENT",
	    HIS.ELEMENTVALUE "HISTORY_VALUE",
	    HIS.TRANSACTIONID "HISTORY_TRANSACTIONID",
	    HIS.ARCHIVEDATE "HIS_ARCHIVEDATE",
	    AC.MOCID "MOCID"
	FROM EMOCAUX.AIRCRAFT aircraft
	LEFT JOIN EMOCAUX.HISTORY HIS ON HIS.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOC3.AIRCRAFT AC ON AC.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."AIRCRAFT_ARCHIVE_VIEW" ("SQUADRONNAME", "MOCID", "AIRCRAFTYEAR", "TAILNUMBER", "MISEQUIPID", "SERIALNUMBER", "AIRCRAFTMDS", "OTHERMDS", "CONDCODE", "STATUSCODE", "STATUSNARRATIVE", "FLIGHTNAME", "ETIC", "AIRCRAFTWUC", "FCF", "OCF", "QVI", "HOTGUNS", "ARM_DEARM", "COMMANDCODE", "PRIORITY", "HQCODE", "LASTFLOWNTIME", "PHASEDATE", "TMEFLWNSINCEPHASE", "PHASEUNITS", "MULTICONFIGID", "ACFT_CONFIG_ID", "LOCALCONFIGID", "LOCALOPTION", "LOCCODE", "STALOCCODE", "BLOCKNUMBER", "ASSIGNCMD", "ASSIGNSTATUS", "POSSESSION", "REPORTDESIG", "REMARKS", "ARCHIVEDATE", "AED_ENGINENUMBER", "AED_ARCHIVEDATE", "MNT_UNIT", "MNT_EVENTID", "MNT_PWC", "MNT_EQUIPID", "MNT_CP", "MNT_WUCLCN", "MNT_WD", "MNT_PRIORITY", "MNT_SYMBOL", "MNT_TSSCH", "MNT_JOBDUR", "MNT_DISCREPANCY", "MNT_WCENARRATIVE", "MNT_EMPID", "MNT_ENTRY781", "MNT_DEFER", "MNT_WCESYMBOL", "MNT_JOB_FOLLOW", "MNT_PARTSREQUIRED", "MNT_ENTERED", "MNT_ARCHIVEDATE", "MIC_MICAPID", "MIC_DOCNUMBER", "MIC_PART", "MIC_ETA", "MIC_ARCHIVEDATE", "SD_REQUESTER", "SD_WORKCENTERCODE", "SD_PERSONCONTACTED", "SD_PERSONDISPATCHED", "SD_REQUESTDATE", "SD_DISCREPANCY", "SD_COMPLETIONDATE", "SD_ETICSHOWTIME", "SD_ENTERED", "SD_ENTEREDBY", "SD_SQDISPATCHEDTO", "SD_ARCHIVEDATE", "WL_STATION", "WL_ORDNANCE", "WL_WEAPONSNUMBER", "WL_WEAPONSCLASS", "WL_FIRESYMBOL", "WL_ARCHIVEDATE", "WU_WRITEUPTIME", "WU_JCN", "WU_CORRECTED", "WU_CORRECTEDTIME", "WU_PACER", "WU_ETIC", "WU_SYMBOL", "WU_WUC", "WU_DISCREPANCY", "WU_CORRECTIVEACTION", "WU_ARCHIVEDATE") AS
	SELECT
	       AIRCRAFT.SQUADRONNAME,
	       AC.MOCID,
	    AIRCRAFT.AIRCRAFTYEAR "AIRCRAFTYEAR",
	       AIRCRAFT.SHORTTAILNUMBER "TAILNUMBER",
	    AIRCRAFT.MISEQUIPID "MISEQUIPID",
	       AIRCRAFT.SERIALNUMBER "SERIALNUMBER",
	       AIRCRAFT.AIRCRAFTMDS "AIRCRAFTMDS",
	    AIRCRAFT.RELATEDMDS "OTHERMDS",
	       AIRCRAFT.CONDITIONCODE "CONDCODE",
	    AIRCRAFT.STATUSCODE,
	    AIRCRAFT.STATUSNARRATIVE,
	    AIRCRAFT.FLIGHTNAME "FLIGHTNAME",
	    AIRCRAFT.ETIC "ETIC",
	    AIRCRAFT.AIRCRAFTWUC "AIRCRAFTWUC",
	    DECODE(TO_CHAR(AIRCRAFT.FCF), '1', 'Y', 'N') FCF,
	    DECODE(TO_CHAR(AIRCRAFT.OCF), '1', 'Y', 'N') OCF,
	    NULL AS "QVI", --DECODE(TO_CHAR(AIRCRAFT.QVI), '1', 'Y', 'N') QVI,
	    NULL AS "HOTGUNS", --DECODE(TO_CHAR(AIRCRAFT.hotguns), '1', 'Y', 'N') hotguns,
	    DECODE(TO_CHAR(AIRCRAFT.ARM_DEARM), '1', 'Y', 'N') arm_dearm,
	    AIRCRAFT.COMMANDCODE "COMMANDCODE",
	    TO_CHAR(AIRCRAFT.PRIORITY) "PRIORITY",
	       AIRCRAFT.HQCODE "HQCODE",
	       AIRCRAFT.LASTFLOWNTIME "LASTFLOWNTIME",
	    AIRCRAFT.PHASEDATE "PHASEDATE",
	    AIRCRAFT.TMEFLOWNSINCEPHASEDATE "TMEFLWNSINCEPHASE",
	    AIRCRAFT.PHASEUNITS,
	    AIRCRAFT.MULTICONFIGID,
	    AIRCRAFT.ACFT_CONFIG_ID,
	    AIRCRAFT.LOCALCONFIGID,
	    AIRCRAFT.LOCALOPTION,
	    AIRCRAFT.LOCATION "LOCCODE",
	    AIRCRAFT.STALOCCODE,
	    AIRCRAFT.BLOCKNUMBER "BLOCKNUMBER",
	    AIRCRAFT.ASSIGNMENTCMD "ASSIGNCMD",
	    AIRCRAFT.ASSIGNMENTSTATUS "ASSIGNSTATUS",
	       AIRCRAFT.POSSESSIONCODE "POSSESSION",
	       AIRCRAFT.REPORTDESIG,
	    AIRCRAFT.REMARKS "REMARKS",
	    AIRCRAFT.ARCHIVEDATE "ARCHIVEDATE",
	    AED.ENGINENUMBER "AED_ENGINENUMBER",
	    AED.ARCHIVEDATE "AED_ARCHIVEDATE",
	    MNT.UNIT "MNT_UNIT",
	    MNT.EVENTID "MNT_EVENTID",
	    MNT.PWC "MNT_PWC",
	    MNT.EQUIPID "MNT_EQUIPID",
	    MNT.CP "MNT_CP",
	    MNT.WUCLCN "MNT_WUCLCN",
	    MNT.WD "MNT_WD",
	    MNT.PRIORITY "MNT_PRIORITY",
	    MNT.SYMBOL "MNT_SYMBOL",
	    MNT.TSSCH "MNT_TSSCH",
	    MNT.JOBDUR "MNT_JOBDUR",
	    MNT.DISCREPANCY "MNT_DISCREPANCY",
	    MNT.WCENARRATIVE "MNT_WCENARRATIVE",
	    MNT.EMPID "MNT_EMPID",
	    MNT.ENTRY781 "MNT_ENTRY781",
	    MNT.DEFER "MNT_DEFER",
	    MNT.WCESYMBOL "MNT_WCESYMBOL",
	    MNT.JOBFOLLOW "MNT_JOB_FOLLOW",
	    MNT.PARTSREQUIRED "MNT_PARTSREQUIRED",
	    MNT.ENTERED "MNT_ENTERED",
	    MNT.ARCHIVEDATE "MNT_ARCHIVEDATE",
	    MIC.MICAPID "MIC_MICAPID",
	    MIC.DOCUMENTNUMBER "MIC_DOCNUMBER",
	    MIC.NOMENCLATURE "MIC_PART",
	    MIC.ESTIMATEDDELIVERYDATE "MIC_ETA",
	    MIC.ARCHIVEDATE "MIC_ARCHIVEDATE",
	    SD.REQUESTER "SD_REQUESTER",
	    SD.WORKCENTERCODE "SD_WORKCENTERCODE",
	    SD.PERSONCONTACTED "SD_PERSONCONTACTED",
	    SD.PERSONDISPATCHED "SD_PERSONDISPATCHED",
	    SD.REQUESTDATE "SD_REQUESTDATE",
	    SD.DISCREPANCY "SD_DISCREPANCY",
	    SD.COMPLETIONDATE "SD_COMPLETIONDATE",
	    SD.ETICSHOWTIME "SD_ETICSHOWTIME",
	    SD.ENTERED "SD_ENTERED",
	    SD.ENTEREDBY "SD_ENTEREDBY",
	    SD.SQDISPATCHEDTO "SD_SQDISPATCHEDTO",
	    SD.ARCHIVEDATE "SD_ARCHIVEDATE",
	    WL.STATION "WL_STATION",
	    WL.ORDNANCE "WL_ORDNANCE",
	    WL.WEAPONSNUMBER "WL_WEAPONSNUMBER",
	    WL.WEAPONSCLASS "WL_WEAPONSCLASS",
	    WL.FIRESYMBOL "WL_FIRESYMBOL",
	    WL.ARCHIVEDATE "WL_ARCHIVEDATE",
	    WU.WRITEUPTIME "WU_WRITEUPTIME",
	    WU.JCN "WU_JCN",
	    WU.CORRECTED "WU_CORRECTED",
	    WU.CORRECTEDTIME "WU_CORRECTEDTIME",
	    WU.PACER "WU_PACER",
	    WU.ETIC "WU_ETIC",
	    WU.SYMBOL "WU_SYMBOL",
	    WU.WUC "WU_WUC",
	    WU.DISCREPANCY "WU_DISCREPANCY",
	    WU.CORRECTIVEACTION "WU_CORRECTIVEACTION",
	    WU.ARCHIVEDATE "WU_ARCHIVEDATE"
	FROM EMOCAUX.AIRCRAFT aircraft
	LEFT JOIN EMOC3.AIRCRAFT AC ON AC.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.AIRCRAFTENGINEDATA AED ON AED.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.MAINTENANCEEVENTS MNT ON MNT.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.MICAP MIC ON MIC.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.SHOPDISPATCH SD ON SD.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.WEAPONSLOAD WL ON WL.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	LEFT JOIN EMOCAUX.WRITEUPS WU ON WU.AIRCRAFTID = AIRCRAFT.AIRCRAFTID
	
	@
	
		CREATE OR REPLACE VIEW "EMOC3"."AIRCRAFTVIEW" ("AIRCRAFTID", "SHORTTAILNUMBER", "TAILNUMBER", "SQUADRONID", "WINGID", "CONDITIONCODEID", "AIRCRAFTMDSID", "AIRCRAFTYEAR", "AIRCRAFTMDS", "ACFTMDSTYPECD", "MISEQUIPID", "MOCID") AS
	SELECT * from (select  aircraftid, shorttailnumber, tailnumber, squadrons.squadronid,
	         wingid, conditioncodeid, aircraftmds.aircraftmdsid, aircraftyear,
	         aircraftmds, acftmdstypecd, misequipid, aircraft.mocid
	FROM emoc3.aircraft JOIN emoc3.squadrons ON aircraft.squadronid = squadrons.squadronid
	              JOIN emoc3.aircraftmds ON aircraft.aircraftmdsid = aircraftmds.aircraftmdsid
	ORDER BY shorttailnumber)
	
	@