--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_CUSTOMDATA" (mocidin moc.mocid%TYPE)
AS
   CURSOR cdcur
   IS
      SELECT customdataid
        FROM customdata
       WHERE mocid = mocidin;

   cdrec   cdcur%ROWTYPE;
BEGIN
   OPEN cdcur;

   FETCH cdcur
    INTO cdrec;

   WHILE cdcur%FOUND
   LOOP
      DELETE FROM customdatalistitem
            WHERE customdataid = cdrec.customdataid;

      DELETE FROM customdatamds
            WHERE customdataid = cdrec.customdataid;

      FETCH cdcur
       INTO cdrec;
   END LOOP;

   CLOSE cdcur;

   COMMIT;

   DELETE FROM customdata
         WHERE mocid = mocidin;

   COMMIT;
END delete_moc_customdata;
 
 
 
 
 
 
 
 
@
