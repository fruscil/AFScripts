--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."EMOCAPPCONFIGURATION_INSTRG" 
	BEFORE INSERT ON "EMOC3"."EMOCAPPCONFIGURATION"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
BEGIN
    -- Find serverid sequence and Update id field
    SELECT seq_emocappconfiguration.NEXTVAL INTO :NEW.configid FROM dual;

    -- Update lastupdateddate field to current system date
    :NEW.LastUpdatedDate := SYSDATE;
END;

@
