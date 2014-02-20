--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC_AIRCRAFTMDS" (mocidin moc.mocid%TYPE)
AS
   CURSOR mdscur
   IS
      SELECT aircraftmdsid
        FROM aircraftmds
       WHERE mocid = mocidin;

   mdsrec   mdscur%ROWTYPE;
BEGIN
   OPEN mdscur;

   FETCH mdscur
    INTO mdsrec;

   WHILE mdscur%FOUND
   LOOP
      DELETE      armament
            WHERE aircraftmdsid = mdsrec.aircraftmdsid;

      DELETE      combatsclrules
            WHERE aircraftmdsid = mdsrec.aircraftmdsid;

      DELETE      customdatamds
            WHERE aircraftmdsid = mdsrec.aircraftmdsid;

      /*
   DELETE      statusimage
            WHERE aircraftmdsid = mdsrec.aircraftmdsid;

       DELETE      wuc
            WHERE aircraftmdsid = mdsrec.aircraftmdsid; 
   */
      FETCH mdscur
       INTO mdsrec;
   END LOOP;

   CLOSE mdscur;

   DELETE      combatscls
         WHERE mocid = mocidin;

   DELETE      weaponsinfo
         WHERE mocid = mocidin;

   DELETE      ordnance
         WHERE mocid = mocidin;

   DELETE      weapontypes
         WHERE mocid = mocidin;

   DELETE      aircraftmds
         WHERE mocid = mocidin;

   COMMIT;
END delete_moc_aircraftmds;
 
 
 
 
 
 
 
 
@
