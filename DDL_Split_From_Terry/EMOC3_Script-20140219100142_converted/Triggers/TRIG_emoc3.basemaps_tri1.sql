--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."BASEMAPS_TRI1" 
	BEFORE INSERT ON "EMOC3"."BASEMAPS"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
BEGIN
 SELECT SEQ_BASEMAPS.NEXTVAL INTO :NEW.MAPID FROM dual;
END;

@
