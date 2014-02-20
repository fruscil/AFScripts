--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_AIRCRAFT_FUELLOAD" (
   fuelin                     	 VARCHAR2,
   aircraftidin                  NUMBER
)
AS
   /******************************************************************************
   NAME:       UPD_AIRCRAFT_FUELLOAD
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     UPD_AIRCRAFT_FUELLOAD
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       wings)

******************************************************************************/
BEGIN
   UPDATE AIRCRAFT
   SET	  FUELLOAD = fuelin
   WHERE AIRCRAFTID = aircraftidin;


--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END UPD_AIRCRAFT_FUELLOAD;
 
 
 
 
 
 
 
 
@
