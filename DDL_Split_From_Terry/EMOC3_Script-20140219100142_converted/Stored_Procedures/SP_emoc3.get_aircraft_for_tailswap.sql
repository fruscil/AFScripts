--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFT_FOR_TAILSWAP" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         aircraft.aircraftid%TYPE,
   squadronidin         squadrons.squadronid%TYPE,
   scheduleidin         schedule.scheduleid%TYPE
)
/******************************************************************************
   NAME:       GET_AIRCRAFT_FOR_SWAP
   PURPOSE:    Gets AIRCRAFTID of same MDS to use in a tail/spare swap.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/6/03      A.Mitchell       1. Created this procedure.
   1.1        8/9/04   A.Mitchell      2. Modified for EMOC2.1

   PARAMETERS:
   INPUT:
   *AIRCRAFTIDIN
   *SQUADRONIDIN
   OUTPUT:
   *P_CURSOR
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
-- BLOCKNUM NUMBER(3);
   sdate   CHAR(7);
BEGIN
   SELECT sortiedate
     INTO sdate
     FROM schedule
    WHERE scheduleid = scheduleidin;

   OPEN p_cursor FOR
      SELECT DISTINCT aircraft.aircraftid, shorttailnumber, misequipid
                 FROM aircraft JOIN schedule ON aircraft.aircraftid =
                                                           schedule.aircraftid
                WHERE aircraft.aircraftid != aircraftidin
                  AND schedule.squadronid = squadronidin
                  AND schedule.sortiedate = sdate
             ORDER BY shorttailnumber;
/*    SELECT BLOCKNUMBER, SORTIEDATE
    INTO BLOCKNUM, SDATE
    FROM SCHEDULE
    WHERE SCHEDULEID = SCHEDULEIDIN;

    IF BLOCKNUM IS NULL THEN
    BEGIN
      OPEN P_CURSOR FOR
        SELECT AIRCRAFTID, SHORTTAILNUMBER, AIRCRAFTMDS
        FROM   AIRCRAFT JOIN AIRCRAFTMDS ON AIRCRAFT.AIRCRAFTMDSID = AIRCRAFTMDS.AIRCRAFTMDSID
        WHERE  AIRCRAFTID != AIRCRAFTIDIN AND SQUADRONID = SQUADRONIDIN
        AND AIRCRAFT.AIRCRAFTMDSID IN
        (SELECT AIRCRAFTMDSID FROM AIRCRAFT WHERE AIRCRAFTID = AIRCRAFTIDIN)
        ORDER BY SHORTTAILNUMBER;
    END;
    ELSE
    BEGIN
      OPEN P_CURSOR FOR
      SELECT AIRCRAFTID, SHORTTAILNUMBER, AIRCRAFTMDS
        FROM   AIRCRAFT JOIN AIRCRAFTMDS ON AIRCRAFT.AIRCRAFTMDSID = AIRCRAFTMDS.AIRCRAFTMDSID
        JOIN   SCHEDULE ON AIRCRAFT.AIRCRAFTID = SCHEDULE.AIRCRAFTID
        WHERE  AIRCRAFTID != AIRCRAFTIDIN  AND SQUADRONID = SQUADRONIDIN
      AND AIRCRAFT.AIRCRAFTMDSID IN
        (SELECT AIRCRAFTMDSID FROM AIRCRAFT WHERE AIRCRAFTID = AIRCRAFTIDIN)
        AND BLOCKNUMBER != BLOCKNUM AND SORTIEDATE = SDATE
        ORDER BY SHORTTAILNUMBER;
       END;
       END IF;
*/
END get_aircraft_for_tailswap;

 
 
 
 
 
 
 
 
@
