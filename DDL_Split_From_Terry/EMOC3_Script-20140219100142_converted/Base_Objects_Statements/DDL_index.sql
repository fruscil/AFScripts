--<ScriptOptions statementTerminator="@"/>


CREATE INDEX "EMOC3"."IDX_ACRFTENGINEDATA_AIRCRAFTID"
	ON "EMOC3"."AIRCRAFTENGINEDATA"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFTMDS_MOCID"
	ON "EMOC3"."AIRCRAFTMDS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_AIRCRAFTMDSID"
	ON "EMOC3"."AIRCRAFT"
	("AIRCRAFTMDSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_AIRCRAFTWUCID"
	ON "EMOC3"."AIRCRAFT"
	("AIRCRAFTWUCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_CODITIONCODEID"
	ON "EMOC3"."AIRCRAFT"
	("CONDITIONCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_COMBATSCLID"
	ON "EMOC3"."AIRCRAFT"
	("COMBATSCLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_CREWCHIEFID"
	ON "EMOC3"."AIRCRAFT"
	("CREWCHIEFID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_FIRESYMBOLID"
	ON "EMOC3"."AIRCRAFT"
	("FIRESYMBOLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_FLIGHTID"
	ON "EMOC3"."AIRCRAFT"
	("FLIGHTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_FUELSTATUSID"
	ON "EMOC3"."AIRCRAFT"
	("FUELSTATUSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_HANGERQUEENSTATUS"
	ON "EMOC3"."AIRCRAFT"
	("HANGERQUEENSTATUS"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_MOCID"
	ON "EMOC3"."AIRCRAFT"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_POSSESSIONID"
	ON "EMOC3"."AIRCRAFT"
	("POSSESSIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_REMARKSID"
	ON "EMOC3"."AIRCRAFT"
	("REMARKSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_SHORTTAIL"
	ON "EMOC3"."AIRCRAFT"
	("SHORTTAILNUMBER"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_SQUADRONID"
	ON "EMOC3"."AIRCRAFT"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AIRCRAFT_STATUSCODEID"
	ON "EMOC3"."AIRCRAFT"
	("STATUSCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_AREAS_MOCID"
	ON "EMOC3"."AREAS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ARMAMENT_AIRCRAFTMDSID"
	ON "EMOC3"."ARMAMENT"
	("AIRCRAFTMDSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ARMAMENT_MOCID"
	ON "EMOC3"."ARMAMENT"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ARMAMENT_ORDNANCEID"
	ON "EMOC3"."ARMAMENT"
	("ORDNANCEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ASSIGNMENTCODES_MOCID"
	ON "EMOC3"."ASSIGNMENTCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CAUSECODES_CAUSECODE"
	ON "EMOC3"."CAUSECODES"
	("CAUSECODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CAUSECODES_MOCID"
	ON "EMOC3"."CAUSECODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COLORRULES_COLORID"
	ON "EMOC3"."COLORRULES"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COLORRULES_MOCID"
	ON "EMOC3"."COLORRULES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COMBATSCLRULES_ACFTMDSID"
	ON "EMOC3"."COMBATSCLRULES"
	("AIRCRAFTMDSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COMBATSCLRULES_COMBATSCLID"
	ON "EMOC3"."COMBATSCLRULES"
	("COMBATSCLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COMBATSCLRULES_MOCID"
	ON "EMOC3"."COMBATSCLRULES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_COMBATSCLS_MOCID"
	ON "EMOC3"."COMBATSCLS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CONDITIONCODES_MOCID"
	ON "EMOC3"."CONDITIONCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CONDITIONSTATUS_COLORID"
	ON "EMOC3"."CONDITIONSTATUS"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CONDITIONSTATUS_MOCID"
	ON "EMOC3"."CONDITIONSTATUS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CREWCHIEFS_MOCID"
	ON "EMOC3"."CREWCHIEFS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CREWCHIEFS_RANKID"
	ON "EMOC3"."CREWCHIEFS"
	("RANKID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_CUSTOMDATA_MOCID"
	ON "EMOC3"."CUSTOMDATA"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_DEVIATIONCODES_COLORID"
	ON "EMOC3"."DEVIATIONCODES"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_DEVIATIONCODES_MOCID"
	ON "EMOC3"."DEVIATIONCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_EMOCCONFIG_LASTUPDATEBY"
	ON "EMOC3"."EMOCCONFIG"
	("LASTUPDATEDBY"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_EMOCCONFIG_MOCID"
	ON "EMOC3"."EMOCCONFIG"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ENGINERUNLOG_AIRCRAFTID"
	ON "EMOC3"."ENGINERUNLOG"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ENGINERUNLOG_ENGINEDATAID"
	ON "EMOC3"."ENGINERUNLOG"
	("ENGINEDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ENGINERUNLOG_LASTUPDATEBY"
	ON "EMOC3"."ENGINERUNLOG"
	("LASTUPDATEBY"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_EVENTLOG_MOCID"
	ON "EMOC3"."EVENTLOG"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_EVENTLOG_USERID"
	ON "EMOC3"."EVENTLOG"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_FIRESYMBOLS_MOCID"
	ON "EMOC3"."FIRESYMBOLS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_FLIGHTS_SQUADRONID"
	ON "EMOC3"."FLIGHTS"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_FLIGHTS_WORKCENTERID"
	ON "EMOC3"."FLIGHTS"
	("WORKCENTERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_FUEL_COLORID"
	ON "EMOC3"."FUEL"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_FUEL_MOCID"
	ON "EMOC3"."FUEL"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_GENERATIONFLOW_MOCID"
	ON "EMOC3"."GENERATIONFLOW"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_HANGER_QUEEN_CODE_MOCID"
	ON "EMOC3"."HANGER_QUEEN_CODE"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_HISTORY_AIRCRAFTID"
	ON "EMOC3"."HISTORY"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_HISTORY_USERID"
	ON "EMOC3"."HISTORY"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_HOTSPOTS_LOCATIONID"
	ON "EMOC3"."HOTSPOTS"
	("LOCATIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_HOTSPOTS_MOCID"
	ON "EMOC3"."HOTSPOTS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IFACEITEMS_IFACECONTROLID"
	ON "EMOC3"."INTERFACEITEMS"
	("INTERFACECONTROLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IFACELOG_AIRCRAFTID"
	ON "EMOC3"."INTERFACELOG"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 720896
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IFACELOG_IFACECONTROLID"
	ON "EMOC3"."INTERFACELOG"
	("INTERFACECONTROLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 655360
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IFACELOG_MOCID"
	ON "EMOC3"."INTERFACELOG"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 720896
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IFACELOG_USERID"
	ON "EMOC3"."INTERFACELOG"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 720896
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IMDSLOGINS_USERID"
	ON "EMOC3"."IMDSLOGINS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_IMDSLOGINS_WINGFID"
	ON "EMOC3"."IMDSLOGINS"
	("WINGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_INTERFACEITEMS_MOCID"
	ON "EMOC3"."INTERFACEITEMS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_JOAPDATA_ENGINEDATAID"
	ON "EMOC3"."JOAPDATA"
	("ENGINEDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_JOAPDATA_JOAPID"
	ON "EMOC3"."JOAPDATA"
	("JOAPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_JOAPDATA_SCHEDULEID"
	ON "EMOC3"."JOAPDATA"
	("SCHEDULEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_JOAP_MOCID"
	ON "EMOC3"."JOAP"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_LANDINGCODES_MOCID"
	ON "EMOC3"."LANDINGCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_LOCATIONS_MOCID"
	ON "EMOC3"."LOCATIONS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_MESSAGES_MOCID"
	ON "EMOC3"."MESSAGES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_MISSIONS_MOCID"
	ON "EMOC3"."MISSIONS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_MOCADMINS_MOCID"
	ON "EMOC3"."MOCADMINS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_MOCADMINS_USERID"
	ON "EMOC3"."MOCADMINS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_OLDPASSWORDS_USERID"
	ON "EMOC3"."OLDPASSWORDS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ORDNANCE_MOCID"
	ON "EMOC3"."ORDNANCE"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ORDNANCE_WEAPONSTYPEID"
	ON "EMOC3"."ORDNANCE"
	("WEAPONSTYPEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_ORGANIZATIONS_MOCID"
	ON "EMOC3"."ORGANIZATIONS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_PERMISSIONS_SQUADRONID"
	ON "EMOC3"."PERMISSIONS"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_PERMISSIONS_USERID"
	ON "EMOC3"."PERMISSIONS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_PILOT_MOCID"
	ON "EMOC3"."PILOT"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_PILOT_RANKID"
	ON "EMOC3"."PILOT"
	("RANKID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_PILOT_SQUADRONID"
	ON "EMOC3"."PILOT"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_POSSESSIONS_MOCID"
	ON "EMOC3"."POSSESSIONS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_RANGES_MOCID"
	ON "EMOC3"."RANGES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_RANKS_MOCID"
	ON "EMOC3"."RANKS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_REPORTCOLUMNS_REPORTID"
	ON "EMOC3"."REPORTCOLUMNS"
	("REPORTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_REPORTCRITERIA_REPORTID"
	ON "EMOC3"."REPORTCRITERIA"
	("REPORTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_REPORTPARAMETERS_REPORTID"
	ON "EMOC3"."REPORTPARAMETERS"
	("REPORTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_REPORTS_MOCID"
	ON "EMOC3"."REPORTS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_REPORTS_USERID"
	ON "EMOC3"."REPORTS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHDEVIATIONS_IFACELOGID"
	ON "EMOC3"."SCHEDULEDEVIATIONS"
	("INTERFACELOGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULESTATUS_SCHEDULEID"
	ON "EMOC3"."SCHEDULESTATUS"
	("SCHEDULEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_AIRCRAFTID"
	ON "EMOC3"."SCHEDULE"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_AREASID"
	ON "EMOC3"."SCHEDULE"
	("AREAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_CAUSECODEID"
	ON "EMOC3"."SCHEDULE"
	("CAUSECODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_DEVIATIONCODEID"
	ON "EMOC3"."SCHEDULE"
	("DEVIATIONCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_LANDINGCODEID"
	ON "EMOC3"."SCHEDULE"
	("LANDINGCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_MAINTREMARKS"
	ON "EMOC3"."SCHEDULE"
	("MAINTREMARKS"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_MISSIONID"
	ON "EMOC3"."SCHEDULE"
	("MISSIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_PILOTID"
	ON "EMOC3"."SCHEDULE"
	("PILOTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_RANGEID"
	ON "EMOC3"."SCHEDULE"
	("RANGEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_SCHEDULEREMARKS"
	ON "EMOC3"."SCHEDULE"
	("SCHEDULEREMARKS"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_SORTIEDATE"
	ON "EMOC3"."SCHEDULE"
	("SORTIEDATE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_SQUADRONID"
	ON "EMOC3"."SCHEDULE"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_UTILCODEID"
	ON "EMOC3"."SCHEDULE"
	("UTILCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SCHEDULE_WXCODEID"
	ON "EMOC3"."SCHEDULE"
	("WXCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SEMEDXDATA_ENGINEDATAID"
	ON "EMOC3"."SEMEDXDATA"
	("ENGINEDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SEMEDXDATA_SCHEDULEID"
	ON "EMOC3"."SEMEDXDATA"
	("SCHEDULEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SEMEDXDATA_SEMEDXID"
	ON "EMOC3"."SEMEDXDATA"
	("SEMEDXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SEMEDX_MOCID"
	ON "EMOC3"."SEMEDX"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SHOPDISPATCH_AIRCRAFTID"
	ON "EMOC3"."SHOPDISPATCH"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SQSORTORDER_SQUADRONID"
	ON "EMOC3"."SQUADRON_SORT_ORDER"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SQUADRONS_COLORID"
	ON "EMOC3"."SQUADRONS"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SQUADRONS_MOCID"
	ON "EMOC3"."SQUADRONS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SQUADRONS_WINGID"
	ON "EMOC3"."SQUADRONS"
	("WINGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_STATIONLOCCODES_MOCID"
	ON "EMOC3"."STATIONLOCCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_STATUSCODE_MOCID"
	ON "EMOC3"."STATUSCODE"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_STATUSCODE_ORDNUM"
	ON "EMOC3"."STATUSCODE"
	("ORDERNUMBER"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SYMBOLS_CONDCODEID"
	ON "EMOC3"."SYMBOLS"
	("CONDCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_SYMBOLS_MOCIDID"
	ON "EMOC3"."SYMBOLS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_USERALERT_USERID"
	ON "EMOC3"."USERALERT"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_USERID"
	ON "EMOC3"."USERIMAGES"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSCLASS_MOCID"
	ON "EMOC3"."WEAPONSCLASS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSINFO_COMBATSCLID"
	ON "EMOC3"."WEAPONSINFO"
	("COMBATSCLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSINFO_MOCID"
	ON "EMOC3"."WEAPONSINFO"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSLOAD_AIRCRAFTEID"
	ON "EMOC3"."WEAPONSLOAD"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSLOAD_FIRESYMBOLID"
	ON "EMOC3"."WEAPONSLOAD"
	("FIRESYMBOLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSLOAD_ORDANCEID"
	ON "EMOC3"."WEAPONSLOAD"
	("ORDNANCEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONSLOAD_WEAPONCLASSID"
	ON "EMOC3"."WEAPONSLOAD"
	("WEAPONSCLASSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WEAPONTYPES_MOCID"
	ON "EMOC3"."WEAPONTYPES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WHENDISCOVEREDCODES_MOCID"
	ON "EMOC3"."WHENDISCOVEREDCODES"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WINGS_MOCID"
	ON "EMOC3"."WINGS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WINGS_WINGNAME"
	ON "EMOC3"."WINGS"
	("WINGNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WORKCENTERS_MOCID"
	ON "EMOC3"."WORKCENTERS"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WRITEUPS_AIRCRAFTID"
	ON "EMOC3"."WRITEUPS"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WRITEUPS_SYMBOLID"
	ON "EMOC3"."WRITEUPS"
	("SYMBOLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WRITEUPS_WUCID"
	ON "EMOC3"."WRITEUPS"
	("WUCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IDX_WX_MOCID"
	ON "EMOC3"."WX"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_AUCMDS"
	ON "EMOC3"."UTILIZATIONCODES"
	("MISSIONDESIGNSERIES"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_AUC_UTILIZATIONCODE"
	ON "EMOC3"."UTILIZATIONCODES"
	("UTILIZATIONCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_GEOLOCCODETRX_DATEPROCESSED"
	ON "EMOC3"."GEOLOCCODETRX"
	("DATEPROCESSED"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 655360
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_GEOLOCCODETRX_GEOLOCCODE"
	ON "EMOC3"."GEOLOCCODETRX"
	("GEOLOCCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 655360
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_MDSBLKWUC"
	ON "EMOC3"."WUC"
	("MISSIONDESIGNSERIES"		ASC,
	  "BLOCKNUMBER"		ASC,
	  "WUCCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 18874368
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."IX_WUC_WUCCODE"
	ON "EMOC3"."WUC"
	("WUCCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 11534336
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."MOC_MOCID_N"
	ON "EMOC3"."CHECKLIST"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."SYS_MTABLE_00000D44B_IND_1"
	ON "EMOC3"."EXPORT000021"
	("OBJECT_SCHEMA"		ASC,
	  "OBJECT_NAME"		ASC,
	  "OBJECT_TYPE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOC3"."UK_MOCSTATUSICONS_IDX" ON "EMOC3"."MOCSTATUSICONS" ("ICON_TYPE","MISSIONDESIGNSERIES","MOCID","STATUSCODE")
@

CREATE UNIQUE INDEX "EMOC3"."MICROSOFT_PK_DTPROPERTIES"
	ON "EMOC3"."MICROSOFTDTPROPERTIES"
	("ID"		ASC,
	  "PROPERTY"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ACFTMDSTYPES"
	ON "EMOC3"."ACFTMDSTYPES"
	("MOCID"		ASC,
	  "ACFTMDSTYPECD"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 7340032
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AIRCRAFT"
	ON "EMOC3"."AIRCRAFT"
	("AIRCRAFTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AIRCRAFTCUSTOMDATA"
	ON "EMOC3"."AIRCRAFTCUSTOMDATA"
	("AIRCRAFTID"		ASC,
	  "CUSTOMDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AIRCRAFTENGINEDATA"
	ON "EMOC3"."AIRCRAFTENGINEDATA"
	("ENGINEDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AIRCRAFTMDS"
	ON "EMOC3"."AIRCRAFTMDS"
	("AIRCRAFTMDSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AIRCRAFTSTATUSUPDATE"
	ON "EMOC3"."AIRCRAFTSTATUSUPDATE"
	("STATUSUPDATEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_AREAS"
	ON "EMOC3"."AREAS"
	("AREAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ARMAMENT"
	ON "EMOC3"."ARMAMENT"
	("ARMAMENTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_BASEMAPS_MAPID"
	ON "EMOC3"."BASEMAPS"
	("MAPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CAUSECODES"
	ON "EMOC3"."CAUSECODES"
	("CAUSECODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CAUSECODETRX"
	ON "EMOC3"."CAUSECODETRX"
	("CAUSECODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CHECKLIST"
	ON "EMOC3"."CHECKLIST"
	("CHECKLISTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_COLORRULES"
	ON "EMOC3"."COLORRULES"
	("COLORRULESID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_COLORS"
	ON "EMOC3"."COLORS"
	("COLORID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_COMBATSCLS"
	ON "EMOC3"."COMBATSCLS"
	("COMBATSCLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CONDITIONCODES"
	ON "EMOC3"."CONDITIONCODES"
	("CONDCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CONDITIONSTATUS"
	ON "EMOC3"."CONDITIONSTATUS"
	("CONDSTATID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CONFIG_ID"
	ON "EMOC3"."EMOCAPPCONFIGURATION"
	("CONFIGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_COUNTRYCODES_COUNTRYCODE"
	ON "EMOC3"."COUNTRYCODES"
	("COUNTRYCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CREWCHIEFS"
	ON "EMOC3"."CREWCHIEFS"
	("CREWCHIEFID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CUSTOMDATA"
	ON "EMOC3"."CUSTOMDATA"
	("CUSTOMDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CUSTOMDATALISTITEM"
	ON "EMOC3"."CUSTOMDATALISTITEM"
	("CUSTOMDATAITEMID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_CUSTOMDATAMDS"
	ON "EMOC3"."CUSTOMDATAMDS"
	("CUSTOMDATAID"		ASC,
	  "AIRCRAFTMDSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_DEVIATIONCODES"
	ON "EMOC3"."DEVIATIONCODES"
	("DEVIATIONCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_DEVIATIONCODETRX"
	ON "EMOC3"."DEVIATIONCODETRX"
	("DEVIATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_EMOCCONFIG"
	ON "EMOC3"."EMOCCONFIG"
	("EMOCCONFIGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_EMOCHELP"
	ON "EMOC3"."EMOCHELP"
	("HELPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ENGINERUNLOG"
	ON "EMOC3"."ENGINERUNLOG"
	("ENGINELOGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_FIELDNAMES"
	ON "EMOC3"."FIELDNAMES"
	("FIELDNAMESID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_FIRESYMBOLS"
	ON "EMOC3"."FIRESYMBOLS"
	("FIRESYMBOLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_FLIGHTS"
	ON "EMOC3"."FLIGHTS"
	("FLIGHTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_FUEL"
	ON "EMOC3"."FUEL"
	("FUELSTATUSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GAINLOSSSTATUSUPDATETRX"
	ON "EMOC3"."GAINLOSSSTATUSUPDATETRX"
	("GAINLOSSSTATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GENERATIONFLOW"
	ON "EMOC3"."GENERATIONFLOW"
	("GENERATIONFLOWNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GENERATIONFLOWITEMS"
	ON "EMOC3"."GENERATIONFLOWITEMS"
	("ITEMNUMBER"		ASC,
	  "GENERATIONFLOWNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GENERATIONFLOWPROGRESS"
	ON "EMOC3"."GENERATIONFLOWPROGRESS"
	("GENERATIONFLOWNAME"		ASC,
	  "STEPNUMBER"		ASC,
	  "ITEMNUMBER"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GENERATIONFLOWSTEPS"
	ON "EMOC3"."GENERATIONFLOWSTEPS"
	("STEPNUMBER"		ASC,
	  "GENERATIONFLOWNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_GEOLOCCODETRX"
	ON "EMOC3"."GEOLOCCODETRX"
	("GEOLOCCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 524288
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_HANGERQUEEN"
	ON "EMOC3"."HANGER_QUEEN_CODE"
	("HQCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_HISTORY"
	ON "EMOC3"."HISTORY"
	("HISTORYID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_HOTSPOTS"
	ON "EMOC3"."HOTSPOTS"
	("FIELDNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_IMAGEID"
	ON "EMOC3"."USERIMAGES"
	("IMAGEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_IMDSCDBELCUNITOPTION"
	ON "EMOC3"."IMDSCDBELCUNITOPTION"
	("IMDSCDBELCUNITOPTIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_IMDSCDBINTERFACEOPTION"
	ON "EMOC3"."IMDSCDBINTERFACEOPTION"
	("IMDSCDBINTERFACEOPTIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_IMDSLOGINS"
	ON "EMOC3"."IMDSLOGINS"
	("IMDSLOGINID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_INTERFACECONTROL"
	ON "EMOC3"."INTERFACECONTROL"
	("INTERFACECONTROLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_INTERFACEITEMS"
	ON "EMOC3"."INTERFACEITEMS"
	("INTERFACEITEMID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_INTERFACELOG"
	ON "EMOC3"."INTERFACELOG"
	("INTERFACELOGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 720896
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_INTERFACEREJECTLIST"
	ON "EMOC3"."INTERFACEREJECTLIST"
	("REJECTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_INVENTORYSTATUSUPDATE"
	ON "EMOC3"."INVENTORYSTATUSUPDATETRX"
	("INVENTORYSTATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_JOAP"
	ON "EMOC3"."JOAP"
	("JOAPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_JOAPDATA"
	ON "EMOC3"."JOAPDATA"
	("JOAPDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_LANDINGCODES"
	ON "EMOC3"."LANDINGCODES"
	("LANDINGCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_LOACTIONCODETRX"
	ON "EMOC3"."LOCATIONCODETRX"
	("LOCATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 327680
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_LOCATIONS"
	ON "EMOC3"."LOCATIONS"
	("LOCATIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MAJORCOMMANDCODETRX"
	ON "EMOC3"."MAJORCOMMANDCODETRX"
	("MAJORCOMMANDCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MESSAGES"
	ON "EMOC3"."MESSAGES"
	("MESSAGEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MICAP"
	ON "EMOC3"."MICAP"
	("MICAPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MICAPTRXID"
	ON "EMOC3"."MICAPTRX"
	("MICAPTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MISSIONS"
	ON "EMOC3"."MISSIONS"
	("MISSIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MOC"
	ON "EMOC3"."MOC"
	("MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MOCADMIN"
	ON "EMOC3"."MOCADMINS"
	("MOCADMINID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MOCSTATUSICONS"
	ON "EMOC3"."MOCSTATUSICONS"
	("MOCID"		ASC,
	  "STATUSCODE"		ASC,
	  "MISSIONDESIGNSERIES"		ASC,
	  "ICON_TYPE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 3145728
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_MOCUSERS"
	ON "EMOC3"."MOCUSERS"
	("MOCUSERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ORDNANCE"
	ON "EMOC3"."ORDNANCE"
	("ORDNANCEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ORGANIZATIONLOADTRX"
	ON "EMOC3"."ORGANIZATIONTRX"
	("ORGANIZATIONLOADTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_ORGANIZATIONS"
	ON "EMOC3"."ORGANIZATIONS"
	("ORGANIZATIONSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_PERMISSIONS"
	ON "EMOC3"."PERMISSIONS"
	("PERMISSIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_PILOT"
	ON "EMOC3"."PILOT"
	("PILOTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_POSSESSIONS"
	ON "EMOC3"."POSSESSIONS"
	("POSSESSIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_RANGES"
	ON "EMOC3"."RANGES"
	("RANGEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_RANKS"
	ON "EMOC3"."RANKS"
	("RANKID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_REMARKS"
	ON "EMOC3"."REMARKS"
	("REMARKSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_REPORTCRITERIA"
	ON "EMOC3"."REPORTCRITERIA"
	("CRITERIAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_REPORTID"
	ON "EMOC3"."REPORTS"
	("REPORTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SCHEDULE"
	ON "EMOC3"."SCHEDULE"
	("SCHEDULEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SEMEDX"
	ON "EMOC3"."SEMEDX"
	("SEMEDXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SEMEDXDATA"
	ON "EMOC3"."SEMEDXDATA"
	("SEMDATAID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SERVERS_ID"
	ON "EMOC3"."WEBSERVERS"
	("SERVERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SHOPDISPATCH"
	ON "EMOC3"."SHOPDISPATCH"
	("SHOPDISPATCHID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SMSTESTBLOB_ID"
	ON "EMOC3"."SMSTESTBLOB"
	("ID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SQUADRONS"
	ON "EMOC3"."SQUADRONS"
	("SQUADRONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SQUADRON_SORT_ORDER"
	ON "EMOC3"."SQUADRON_SORT_ORDER"
	("SQSORTORDERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STALOCCODEID"
	ON "EMOC3"."STATIONLOCCODES"
	("STALOCCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STATUSCODE"
	ON "EMOC3"."STATUSCODE"
	("STATUSCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STATUSCORRECTION"
	ON "EMOC3"."STATUSCORRECTIONTRX"
	("STATUSCORRECTIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STATUSIMAGES"
	ON "EMOC3"."STATUSIMAGE"
	("STATUSIMAGEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STATUSTRANSITIONRULE"
	ON "EMOC3"."STATUSTRANSITIONRULE"
	("STATRULEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_STATUSUPDATETRX"
	ON "EMOC3"."STATUSUPDATETRX"
	("STATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_SYMBOLS"
	ON "EMOC3"."SYMBOLS"
	("SYMBOLID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_TBMCSINTERFACELOG"
	ON "EMOC3"."TBMCSINTERFACELOG"
	("INTERFACELOGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_USERALERT"
	ON "EMOC3"."USERALERT"
	("ALERTID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_USERS"
	ON "EMOC3"."USERS"
	("USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_UTILCODEID"
	ON "EMOC3"."UTILIZATIONCODES"
	("UTILCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_UTILIZATIONCODETRX"
	ON "EMOC3"."UTILIZATIONCODETRX"
	("UTILIZATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_UVRCHANGETRX"
	ON "EMOC3"."UVRCHANGETRX"
	("UVRCHANGETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WEAPONSCLASS"
	ON "EMOC3"."WEAPONSCLASS"
	("WEAPONSCLASSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WEAPONSLOAD"
	ON "EMOC3"."WEAPONSLOAD"
	("LOADID"		ASC,
	  "STATION"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WEAPONTYPES"
	ON "EMOC3"."WEAPONTYPES"
	("WEAPONSTYPEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WHENDISCOVEREDCODETRX"
	ON "EMOC3"."WHENDISCOVEREDCODETRX"
	("WHENDISCOVEREDCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WINGS"
	ON "EMOC3"."WINGS"
	("WINGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WORKCENTERTRX"
	ON "EMOC3"."WORKCENTERTRX"
	("WORKCENTERTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WORKUNITCODETRX"
	ON "EMOC3"."WORKUNITCODETRX"
	("WORKUNITCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 2097152
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WRITEUPS"
	ON "EMOC3"."WRITEUPS"
	("WRITEUPID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 196608
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WUC"
	ON "EMOC3"."WUC"
	("WUCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 9437184
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."PK_WX"
	ON "EMOC3"."WX"
	("WXCODEID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."SYS_C008061"
	ON "EMOC3"."EMOCHELP"
	("TOPIC"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_CN_MOCID_CACHEDTABLENAME"
	ON "EMOC3"."CHANGENOTIFICATION"
	("CACHEDTABLENAME"		ASC,
	  "MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_COLOR_AND_MOCID"
	ON "EMOC3"."COLORS"
	("COLORNAME"		ASC,
	  "COLORVALUE"		ASC,
	  "MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_CUSTOMLABLE_MOC"
	ON "EMOC3"."CUSTOMDATA"
	("CUSTOMDATALABEL"		ASC,
	  "MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_GCN_CACHEDTABLENAME"
	ON "EMOC3"."GLOBALCHANGENOTIFICATION"
	("CACHEDTABLENAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_IMDSCDBELCUNITOPTION"
	ON "EMOC3"."IMDSCDBELCUNITOPTION"
	("IMDSCDBINTERFACEOPTIONID"		ASC,
	  "ENTERPRISELOCATIONCODE"		ASC,
	  "UNITID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_MOCID_CHECKLISTTITLE"
	ON "EMOC3"."CHECKLIST"
	("CHECKLISTTITLE"		ASC,
	  "MOCID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_MOCUSERS"
	ON "EMOC3"."MOCUSERS"
	("MOCID"		ASC,
	  "USERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 131072
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_SERVERNAME"
	ON "EMOC3"."WEBSERVERS"
	("SERVERNAME"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."UK_SERVERURL"
	ON "EMOC3"."WEBSERVERS"
	("SERVERURL"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@


CREATE UNIQUE INDEX "EMOC3"."UK_WINGS_ELCUNITID"
	ON "EMOC3"."WINGS"
	("ELC"		ASC,
	  "UNITID"		ASC) EXCLUDE NULL KEYS
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."WEAPONSINFO_PK11061992374968"
	ON "EMOC3"."WEAPONSINFO"
	("WEAPONSID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."WHENDISCOVERE_PK11061906353349"
	ON "EMOC3"."WHENDISCOVEREDCODES"
	("WHENDISCOVEREDID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOC3"."WORKCENTERS_PK11061901575234"
	ON "EMOC3"."WORKCENTERS"
	("WORKCENTERID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 262144
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@
