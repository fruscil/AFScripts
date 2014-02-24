--<ScriptOptions statementTerminator="@"/>


CREATE INDEX "EMOCAUX"."IX_GEOLOCCODETRX_DATEPROCESSED"
	ON "EMOCAUX"."GEOLOCCODETRX"
	("DATEPROCESSED"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE INDEX "EMOCAUX"."IX_GEOLOCCODETRX_GEOLOCCODE"
	ON "EMOCAUX"."GEOLOCCODETRX"
	("GEOLOCCODE"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_DEVIATIONCODETRX"
	ON "EMOCAUX"."DEVIATIONCODETRX"
	("DEVIATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_GAINLOSSSTATUSUPDATETRX"
	ON "EMOCAUX"."GAINLOSSSTATUSUPDATETRX"
	("GAINLOSSSTATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_GEOLOCCODETRX"
	ON "EMOCAUX"."GEOLOCCODETRX"
	("GEOLOCCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_INVENTORYSTATUSUPDATE"
	ON "EMOCAUX"."INVENTORYSTATUSUPDATETRX"
	("INVENTORYSTATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_LOACTIONCODETRX"
	ON "EMOCAUX"."LOCATIONCODETRX"
	("LOCATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_MAJORCOMMANDCODETRX"
	ON "EMOCAUX"."MAJORCOMMANDCODETRX"
	("MAJORCOMMANDCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_MICAPTRXID"
	ON "EMOCAUX"."MICAPTRX"
	("MICAPTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_ORGANIZATIONLOADTRX"
	ON "EMOCAUX"."ORGANIZATIONTRX"
	("ORGANIZATIONLOADTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_STATUSCORRECTION"
	ON "EMOCAUX"."STATUSCORRECTIONTRX"
	("STATUSCORRECTIONID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_STATUSUPDATETRX"
	ON "EMOCAUX"."STATUSUPDATETRX"
	("STATUSUPDATETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_UTILIZATIONCODETRX"
	ON "EMOCAUX"."UTILIZATIONCODETRX"
	("UTILIZATIONCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_UVRCHANGETRX"
	ON "EMOCAUX"."UVRCHANGETRX"
	("UVRCHANGETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_WHENDISCOVEREDCODETRX"
	ON "EMOCAUX"."WHENDISCOVEREDCODETRX"
	("WHENDISCOVEREDCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_WORKCENTERTRX"
	ON "EMOCAUX"."WORKCENTERTRX"
	("WORKCENTERTRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."PK_WORKUNITCODETRX"
	ON "EMOCAUX"."WORKUNITCODETRX"
	("WORKUNITCODETRXID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@

CREATE UNIQUE INDEX "EMOCAUX"."TRANSACTIONLOG_1"
	ON "EMOCAUX"."TRANSACTIONLOG"
	("TRANSACTIONLOGID"		ASC)
	/*Code Fragment was removed >> INITRANS 2
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> LOGGING
	<< Code Fragment was removed - END*/
/*Code Fragment was removed >> TABLESPACE "EMOCMAIN"<< Code Fragment was removed - END*/
/*Code Fragment was removed >> STORAGE (
	INITIAL 65536
	NEXT 1048576
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL DEFAULT)<< Code Fragment was removed - END*/

@
