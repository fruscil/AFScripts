--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_AIRCRAFT_FROM_EXCEL" (
   insquadronid              aircraft.squadronid%TYPE,
   inshorttailnumber         aircraft.shorttailnumber%TYPE,
   outaircraftid        OUT   aircraft.aircraftid%TYPE
)
/******************************************************************************
   NAME:       ADD_AIRCRAFT_FROM_EXCEL
   PURPOSE:    Inserts an aircraft found in an Excel schedule line not
               already in the db.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/27/03      A.Mitchell       1. Created this procedure.
   1.1        10/1/03      A.Mitchell       2. Added MISEQUIPID
   PARAMETERS:
   INPUT:
   *SQUADRONID,
   *SHORTTAILNUMBER
   OUTPUT:
   *AIRCRAFTID
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
   v_newaircraftid   NUMBER;
   v_mocid           NUMBER;
BEGIN
   --INCREMENT
   SELECT seq_aircraft.NEXTVAL
     INTO v_newaircraftid
     FROM DUAL;

   SELECT squadrons.mocid
     INTO v_mocid
     FROM squadrons
    WHERE squadrons.squadronid = insquadronid;

   INSERT INTO aircraft
               (aircraftid, squadronid, shorttailnumber, tailnumber,
                misequipid, mocid
               )
        VALUES (v_newaircraftid, insquadronid, inshorttailnumber, inshorttailnumber,
                'A' || inshorttailnumber, v_mocid
               );

   outaircraftid := v_newaircraftid;
END add_aircraft_from_excel;
 
 
 
 
 
 
 
 
@
