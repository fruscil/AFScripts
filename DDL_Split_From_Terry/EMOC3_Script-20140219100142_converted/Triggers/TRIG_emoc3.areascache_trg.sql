--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."AREASCACHE_TRG" 
	AFTER DELETE OR INSERT OR UPDATE ON "EMOC3"."AREAS"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
DECLARE
  v_recs NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO v_recs
    FROM changenotification
   WHERE cachedtablename = 'areas'
     AND mocid = :NEW.mocid;

  IF INSERTING THEN
    IF v_recs = 0 THEN
      INSERT INTO changenotification
        (changeid, cachedtablename, mocid)
      VALUES
        (SYSDATE, 'areas', :NEW.mocid);
    ELSE
      UPDATE changenotification
         SET changeid = SYSDATE
       WHERE cachedtablename = 'areas'
         AND mocid = :OLD.mocid;
    END IF;
  ELSE
    IF v_recs > 0 THEN
      UPDATE changenotification
         SET changeid = SYSDATE
       WHERE cachedtablename = 'areas'
         AND mocid = :OLD.mocid;
    ELSE
      INSERT INTO changenotification
        (changeid, cachedtablename, mocid)
      VALUES
        (SYSDATE, 'areas', :OLD.mocid);
    END IF;
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    INSERT INTO changenotification
      (cachedtablename, changeid, mocid)
    VALUES
      ('areas', SYSDATE, :NEW.mocid);
  WHEN OTHERS THEN
    NULL;
END;

@
