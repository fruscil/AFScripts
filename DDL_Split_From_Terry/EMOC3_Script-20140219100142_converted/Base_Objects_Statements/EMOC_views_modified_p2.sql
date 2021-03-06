CREATE BUFFERPOOL "BP32K" IMMEDIATE ALL DBPARTITIONNUMS SIZE 1000 AUTOMATIC PAGESIZE 32768
@
CREATE SYSTEM TEMPORARY TABLESPACE "ts1systemp" IN DATABASE PARTITION GROUP IBMTEMPGROUP PAGESIZE 32768 MANAGED BY AUTOMATIC STORAGE USING STOGROUP IBMSTOGROUP BUFFERPOOL "BP32K" OVERHEAD 7.5 TRANSFERRATE 0.06
@
create or replace view EMOC3.AIRCRAFT_ENGINE_DATA_VIEW as
SELECT * from (
select
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
TO_CHAR(AIRCRAFTENGINEDATA.enginenumber) enginenumber,
TO_NUMBER(TO_CHAR(SUM((SCHEDULE.ACTUALLANDING - SCHEDULE.ACTUALTAKEOFF) * 24), '99999.99')) "ENGHRSFLOWN",
REMARKS.REMARKS "AIRCRAFTREMARKS"
FROM EMOC3.AIRCRAFT, EMOC3.WINGS, EMOC3.SQUADRONS, EMOC3.AIRCRAFTMDS, EMOC3.AIRCRAFTENGINEDATA, EMOC3.SCHEDULE, EMOC3.REMARKS
WHERE (    (AIRCRAFT.aircraftid = AIRCRAFTENGINEDATA.aircraftid)
AND (AIRCRAFT.squadronid = SQUADRONS.SQUADRONID)
AND (SQUADRONS.wingid = WINGS.wingid)
AND (AIRCRAFT.aircraftmdsid = AIRCRAFTMDS.aircraftmdsid)
AND (SCHEDULE.AIRCRAFTID = AIRCRAFT.AIRCRAFTID(+))
AND (AIRCRAFT.remarksid = REMARKS.REMARKSID(+))
)
GROUP BY
WINGS.wingname,
WINGS.UNITID,
WINGS.ELC,
AIRCRAFT.MOCID,
SQUADRONS.squadronname,
AIRCRAFT.aircraftyear,
AIRCRAFT.shorttailnumber,
AIRCRAFT.misequipid,
AIRCRAFT.serialnumber,
AIRCRAFTMDS.AIRCRAFTMDS,
AIRCRAFTENGINEDATA.enginenumber,
REMARKS.REMARKS
ORDER BY AIRCRAFT.shorttailnumber, AIRCRAFTENGINEDATA.enginenumber)

@
create or replace view EMOC3.ALL_AIRCRAFT_DATA_VIEW as
SELECT
--STATUS BOARD VIEW--
STB.WING,
STB.UNITID,
STB.ELC,
STB.MOCID,
STB.SQUADRONNAME,
STB.AIRCRAFTYEAR,
STB.TAILNUMBER,
STB.MISEQUIPID,
STB.SERIALNUMBER,
STB.AIRCRAFTMDS,
STB.OTHERMDS,
STB.MDSLASTUPDATED,
STB.CONDCODE,
STB.CONDUPD,
STB.CONDTIME,
STB.CONDSTATUS,
STB.STATUSCODE,
STB.STATUSUPDATED,
STB.STATUSCODETIME,
STB.STATUSNARRATIVE "CURRENTSTAUSTNARR",
STB.STATUSSTARTDATE || ' ' || STB.STATUSSTARTTIME "CURRENTSTATSTART",
STB.STATUSWUCLCN,
STB.ETIC "CURRENTETIC",
STB.ETICDATE,
STB.ETICUPDATED,
STB.AIRCRAFTWUC,
STB.WUCLASTUPDATED,
STB.OPENSTATEVENTJCN,
STB.FCF, STB.OCF, STB.QVI,
STB.HOTGUNS, STB.ARM_DEARM, STB.FIRESYMBOL,
STB.FUELLOAD,
STB.FUELSTATUS,
STB.FUELSTATUSLASTUPD,
STB.FUELSTATUSTIME,
STB.CREWCHIEF,
STB.RANKCODE,
STB.FIRSTOFFICIAL, STB.SECONDOFFICIAL,
STB.PRIORITY "CURRENTPRIORITY",
STB.HQCODE,
STB.LASTFLOWNTIME,
STB.PICTURE,
STB.PHASEDATE,
STB.PHASEDATELASTUPD,
STB.TMEFLWNSINCEPHASE,
STB.PHASEUNITS,
STB.MULTICONFIGID,
STB.ACFT_CONFIG_ID,
STB.LOCALCONFIGID,
STB.LOCALOPTION "CURRENTLOCOPTION",
STB.LOCCODE,
STB.LOCLASTUPDATED,
STB.STATIONLOC,
STB.CONFIGDATE,
STB.CONFIGUPDATED,
STB.CREWCHIEFLASTUPD,
STB.SERIALNUMLASTUPD,
STB.IMPOUNDSLASTUPD,
STB.HQSTATUSLASTUPD,
STB.TESTSTATUSLASTUPD,
STB.REMARKSLASTUPD,
STB.PRIORITYLASTUPD,
STB.ASSIGNCMD,
STB.ASSIGNSTATUS,
STB.ASSIGNDATE,
STB.ASSIGNUPDATED,
STB.POSSESSION,
STB.POSSDATETIME,
STB.POSSCODELASTUPD,
STB.REPDESIGNDATETIME,
STB.REPDESIGNLASTUPD,
STB.REPORTDESIG,
STB.SQPRESELECT,
STB.WEAPONSTATLASTUPD,
STB.WEAPONSSTATUSTIME,
--WEAPONS VIEW--
COMBATSCL,
WEAPONSNUMBER,
WEAPONTYPE,
ORDNANCE,
WPN.CONFIGURATION "WEAPONS_CONFIG",
--ENGINE DATA VIEW--
ENG.ENGINENUMBER,
ENG.ENGHRSFLOWN,
--STATUS UPDATE VIEW--
STU.MAINTSTATUSCODE,
STU.CONDITIONSTATCODE,
STU.STATUSSTARTDATE || ' ' || STU.STATUSSTARTTIME "STATUSSTARTDATE",
WORKUNITCODE "STATUSCHANGEWUC",
OPENSTATUSEVENT,
STU.ETIC "STATUSETIC",
PARTSPLUS,
STU.STATUSNARRATIVE,
LOCATION,
STU.CONFIGURATION,
STU.PRIORITY, ARM,
MULTIPLECONFIGID,
STU.LOCALOPTION,
ENTERED,
LASTUPDATE,
ENTEREDBY,
UPDATEDBY,
--WRITEUPS AND MICAPS VIEW
WRITEUPTIME,
WRITEUPJCN,
CORRECTED WRITEUPCORRECTED,
CORRECTEDTIME,
PACER WRITEUPPACER,
WRITEUPETIC,
SYMBOL WRITEUPSYMBOL,
WRITEUPWUC,
DISCREPANCY WRITEUPDISCREPANCY,
CORRECTIVEACTION,
WRITEUPCAMSINIT,
DOCUMENTNUMBER MICAPDOCNUMBER,
PART MICAPPART,
ETA MICAPETA,
MICAPCAMSINIT,
--JOAP VIEW--
JP.ENGINENUMBER "JOAP_ENGINENUM",
JP.SORTIEDATE "JOAP_SORTIEDATE",
JP.SORTIENUM "JOAP_SORTIENUM",
JP.JOAPCODE, JP.REDCAPSTATUS,
JP.COLORNAME "JOAP_COLOR",
JP.COLORRANK "JOAP_COLORRANK",
JP.SAMPLEDATE "JOAP_SAMPLEDATE",
JP.REASON "JOAP_REASON",
JP.NOTIFIEDBY "JOAP_NOTIFIEDBY",
JP.MOCCONTROLLER "JOAP_MOCCONTROLLER",
JP.JOAPLASTUPDATED,
JP.HOURSREQUIRED "JOAP_HRSREQUIRED",
JP.HOURSREMAINING "JOAP_HRSREMAINING",
JP.EXPEDITED "JOAP_EXPEDITED",
--SEMEDX VIEW--
SEM.ENGINENUMBER "SEM_ENGINENUM",
SEM.SORTIEDATE "SEM_SORTIEDATE",
SEM.SORTIENUM "SEM_SORTIENUM",
SEM.CODE "SEMEDXCODE",
SEM.COLORNAME "SEM_COLOR",
SEM.COLORRANK "SEM_COLORRANK",
SEM.SAMPLEDATE "SEM_SAMPLEDATE",
SEM.REASON "SEM_REASON",
SEM.NOTIFIEDBY "SEM_NOTIFIEDBY",
SEM.MOCCONTROLLER "SEM_MOCCONTROLLER",
SEM.SEMEDXLASTUPDATED,
SEM.HOURSREQUIRED "SEM_HRSREQUIRED",
SEM.HOURSREMAINING "SEM_HRSREMAINING",
SEM.EXPEDITED "SEM_EXPEDITED"
FROM EMOC3.AIRCRAFT_STATUSBOARD_VIEW STB
LEFT JOIN EMOC3.AIRCRAFT_ENGINE_DATA_VIEW ENG ON ENG.SQUADRONNAME = STB.SQUADRONNAME AND ENG.TAILNUMBER = STB.TAILNUMBER AND ENG.AIRCRAFTMDS = STB.AIRCRAFTMDS
LEFT JOIN EMOC3.AIRCRAFT_STATUSUPDATE_VIEW STU ON STB.SQUADRONNAME = STU.SQUADRONNAME AND STB.TAILNUMBER = STU.TAILNUMBER AND STB.AIRCRAFTMDS = STU.AIRCRAFTMDS
LEFT JOIN EMOC3.JOAP_VIEW JP ON STB.SQUADRONNAME = JP.SQUADRONNAME AND STB.TAILNUMBER = JP.TAILNUMBER AND STB.AIRCRAFTMDS = JP.AIRCRAFTMDS
LEFT JOIN EMOC3.SEMEDX_VIEW SEM ON STB.SQUADRONNAME = SEM.SQUADRONNAME AND STB.TAILNUMBER = SEM.TAILNUMBER AND STB.AIRCRAFTMDS = SEM.AIRCRAFTMDS
LEFT JOIN EMOC3.WEAPONS_VIEW WPN ON STB.SQUADRONNAME = WPN.SQUADRONNAME AND STB.TAILNUMBER = WPN.TAILNUMBER AND STB.AIRCRAFTMDS = WPN.AIRCRAFTMDS
LEFT JOIN EMOC3.WRITEUPS_AND_MICAPS_VIEW WMV ON STB.SQUADRONNAME = WMV.SQUADRONNAME AND STB.TAILNUMBER = WMV.TAILNUMBER AND STB.AIRCRAFTMDS = WMV.AIRCRAFTMDS

@