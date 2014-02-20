--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_SQUADRON" (
   squadronidin   squadrons.squadronid%TYPE
)
/******************************************************************************
   NAME:       DELETE_SQUADRON
   PURPOSE:    DELETES all records for a squadron (Used when deleting a squadron)

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/03      R.McBride     1. Created this procedure.

   PARAMETERS:
   INPUT:
   *SQUADRONID
   OUTPUT:
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
   CURSOR sqaircraftcur
   IS
      SELECT aircraftid
        FROM aircraft
       WHERE squadronid = squadronidin;

   sqaircraftrec   sqaircraftcur%ROWTYPE;
BEGIN
   OPEN sqaircraftcur;

   FETCH sqaircraftcur
    INTO sqaircraftrec;

   WHILE sqaircraftcur%FOUND
   LOOP
      delete_aircraft (sqaircraftrec.aircraftid);

      FETCH sqaircraftcur
       INTO sqaircraftrec;
   END LOOP;

   COMMIT;

   CLOSE sqaircraftcur;

   DELETE      brief_aircraft_status
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_deviations
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_flying_schedule
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_flying_status
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_hangar_queen
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_micaps
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_next_weeks_plan
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_pot_hangar_queen
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_schedule_overview
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      brief_wing_status
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      permissions
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      interfacelog
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      flights
         WHERE squadronid = squadronidin;

   COMMIT;
   remove_squadron_schedulerecs (squadronidin);
   remove_squadron_pilots (squadronidin);

   DELETE      squadron_sort_order
         WHERE squadronid = squadronidin;

   COMMIT;

   DELETE      squadrons
         WHERE squadronid = squadronidin;

   COMMIT;
END delete_squadron;
 
 
 
 
 
 
 
 
@
