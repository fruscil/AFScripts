--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."WEAPONCLASSCACHE_TRG" 
	AFTER DELETE OR INSERT OR UPDATE ON "EMOC3"."WEAPONSCLASS"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
DECLARE
   v_recs   NUMBER;
BEGIN
              SELECT COUNT(*)
    INTO v_recs
    FROM changenotification
   WHERE cachedtablename = 'weaponclass'
     AND mocid = :NEW.mocid;

   IF INSERTING
   THEN
      IF v_recs = 0
      THEN
         INSERT INTO changenotification
                     (changeid, cachedtablename, mocid
                     )
              VALUES (SYSDATE, 'weaponsclass', :NEW.mocid
                     );
      ELSE
         UPDATE changenotification
            SET changeid = SYSDATE
          WHERE cachedtablename = 'weaponsclass' AND mocid = :NEW.mocid;
      END IF;
   ELSE
      SELECT COUNT (*)
         INTO v_recs
        FROM changenotification
       WHERE cachedtablename = 'weaponsclass' AND mocid = :OLD.mocid;

      IF v_recs > 0
      THEN
         UPDATE changenotification
            SET changeid = SYSDATE
          WHERE cachedtablename = 'weaponsclass' AND mocid = :OLD.mocid;
      ELSE
         INSERT INTO changenotification
                     (changeid, cachedtablename, mocid
                     )
              VALUES (SYSDATE, 'weaponsclass', :OLD.mocid
                     );
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      INSERT INTO changenotification
                  (cachedtablename, changeid, mocid
                  )
           VALUES ('weaponsclass', SYSDATE, :NEW.mocid
                  );
   WHEN OTHERS
   THEN
      NULL;
END;

@
