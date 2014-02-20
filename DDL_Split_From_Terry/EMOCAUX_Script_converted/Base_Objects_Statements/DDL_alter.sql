--<ScriptOptions statementTerminator=";"/>


ALTER TABLE "EMOCAUX"."DEVIATIONABORTTRX" ADD CONSTRAINT "SYS_C0011501" CHECK ("DEVIATIONABORTTRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."DEVIATIONCORRECTIONTRX" ADD CONSTRAINT "SYS_C0011503" CHECK ("DEVIATIONCORRECTTRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."DEVIATIONDELETETRX" ADD CONSTRAINT "SYS_C0011504" CHECK ("DEVIATIONDELETETRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."DEVIATIONSTARTSTOPTRX" ADD CONSTRAINT "SYS_C0011505" CHECK ("DEVIATIONSTARTSTOPTRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011510" CHECK ("MAINTENANCEEVENTID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011511" CHECK ("UNIT" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011512" CHECK ("PWC" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011513" CHECK ("EQUIPID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011514" CHECK ("WUCLCN" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011515" CHECK ("SYMBOL" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011516" CHECK ("TSSCH" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MAINTENANCEEVENTS" ADD CONSTRAINT "SYS_C0011517" CHECK ("DISCREPANCY" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MICAP" ADD CONSTRAINT "SYS_C0011519" CHECK ("MICAPID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."MICAP" ADD CONSTRAINT "SYS_C0011520" CHECK ("DOCUMENTNUMBER" IS NOT NULL);

ALTER TABLE "EMOCAUX"."OPERATIONALEVENTDELETETRX" ADD CONSTRAINT "SYS_C0011522" CHECK ("OPERATIONALEVENTDELETETRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."OPERATIONALEVENTLOADTRX" ADD CONSTRAINT "SYS_C0011523" CHECK ("OPERATIONALEVENTLOADTRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."OPERATIONALEVENTUPDATETRX" ADD CONSTRAINT "SYS_C0011524" CHECK ("OPERATIONALEVENTUPDATETRXID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011528" CHECK ("EVENTTIME" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011529" CHECK ("TABLENAME" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011530" CHECK ("TABLERECORDID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011531" CHECK ("USERID" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011532" CHECK ("ACTION" IS NOT NULL);

ALTER TABLE "EMOCAUX"."TRANSACTIONLOG" ADD CONSTRAINT "SYS_C0011533" CHECK ("TRANSACTIONLOGID" IS NOT NULL);
