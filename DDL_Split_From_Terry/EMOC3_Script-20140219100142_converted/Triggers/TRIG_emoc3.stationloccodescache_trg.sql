--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."STATIONLOCCODESCACHE_TRG" 
	AFTER DELETE OR INSERT OR UPDATE ON "EMOC3"."STATIONLOCCODES"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
DECLARE
   v_recs   NUMBER;
BEGIN
           SELECT COUNT(*)
    INTO v_recs
    FROM changenotification
   WHERE cachedtablename = 'stationloccodes'
     AND mocid = :NEW.mocid;

   IF INSERTING
   THEN
      IF v_recs = 0
      THEN
         INSERT INTO changenotification
                     (changeid, cachedtablename, mocid
                     )
              VALUES (SYSDATE, 'stationloccodes', :NEW.mocid
                     );
      ELSE
         UPDATE changenotification
            SET changeid = SYSDATE
          WHERE cachedtablename = 'stationloccodes' AND mocid = :NEW.mocid;
      END IF;
   ELSE
      SELECT COUNT (*)
         INTO v_recs
        FROM changenotification
       WHERE cachedtablename = 'stationloccodes' AND mocid = :OLD.mocid;

      IF v_recs > 0
      THEN
         UPDATE changenotification
            SET changeid = SYSDATE
          WHERE cachedtablename = 'stationloccodes' AND mocid = :OLD.mocid;
      ELSE
         INSERT INTO changenotification
                     (changeid, cachedtablename, mocid
                     )
              VALUES (SYSDATE, 'stationloccodes', :OLD.mocid
                     );
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      INSERT INTO changenotification
                  (cachedtablename, changeid, mocid
                  )
           VALUES ('stationloccodes', SYSDATE, :NEW.mocid
                  );
   WHEN OTHERS
   THEN
      NULL;
END;

@
