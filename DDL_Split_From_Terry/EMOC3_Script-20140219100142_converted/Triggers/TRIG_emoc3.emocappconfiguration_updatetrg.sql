--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."EMOCAPPCONFIGURATION_UPDATETRG" 
	BEFORE UPDATE ON "EMOC3"."EMOCAPPCONFIGURATION"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
BEGIN
    -- Update lastupdateddate field to current system date
    :NEW.LastUpdatedDate := SYSDATE;
END;

@
