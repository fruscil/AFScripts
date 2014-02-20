--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."USERIMAGES_INSTRG" 
	BEFORE INSERT ON "EMOC3"."USERIMAGES"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
DECLARE
    v_imageid      userimages.imageid%TYPE;
    v_dateuploaded userimages.dateuploaded%TYPE;

BEGIN

    -- Find imageid sequence
    SELECT seq_userimages.Nextval INTO v_imageid FROM dual;

    -- Update dateuploaded field to current system date
    :new.dateuploaded := sysdate;

    -- Update imageid field
    :new.imageid := v_imageid;

END;

@
