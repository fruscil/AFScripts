--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."REMOVE_AIRCRAFT_SHOPDISPATCH" (
   aircraftidin   shopdispatch.aircraftid%TYPE
)
AS
   CURSOR shopdispatch_cur
   IS
      SELECT shopdispatchid, aircraftid, requester,
             (SELECT workcentercode
                FROM workcenters
               WHERE workcenterid =
                                  shopdispatch.workcenterid)
                                                           AS workcentercode,
             personcontacted, persondispatched, requestdate, discrepancy,
             completiondate, eticshowtime, entered, enteredby,
             (SELECT squadronname
                FROM squadrons
               WHERE squadronid = sqdispatchedtoid) AS sqdispatchedto
        FROM shopdispatch
       WHERE aircraftid = aircraftidin;

   shopdispatch_rec   shopdispatch_cur%ROWTYPE;
BEGIN
   OPEN shopdispatch_cur;

   FETCH shopdispatch_cur
    INTO shopdispatch_rec;

   WHILE shopdispatch_cur%FOUND
   LOOP
      INSERT INTO emocaux.shopdispatch
                  (shopdispatchid,
                   aircraftid, requester,
                   workcentercode,
                   personcontacted,
                   persondispatched,
                   requestdate,
                   discrepancy,
                   completiondate,
                   eticshowtime, entered,
                   enteredby,
                   sqdispatchedto
                  )
           VALUES (shopdispatch_rec.shopdispatchid,
                   shopdispatch_rec.aircraftid, shopdispatch_rec.requester,
                   shopdispatch_rec.workcentercode,
                   shopdispatch_rec.personcontacted,
                   shopdispatch_rec.persondispatched,
                   shopdispatch_rec.requestdate,
                   shopdispatch_rec.discrepancy,
                   shopdispatch_rec.completiondate,
                   shopdispatch_rec.eticshowtime, shopdispatch_rec.entered,
                   shopdispatch_rec.enteredby,
                   shopdispatch_rec.sqdispatchedto
                  );

      FETCH shopdispatch_cur
       INTO shopdispatch_rec;
   END LOOP;

   CLOSE shopdispatch_cur;

   DELETE FROM shopdispatch
         WHERE aircraftid = aircraftidin;
END remove_aircraft_shopdispatch;

 
 
 
 
 
 
 
 
@
