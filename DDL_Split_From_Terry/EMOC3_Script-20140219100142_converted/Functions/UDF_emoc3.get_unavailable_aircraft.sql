--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_UNAVAILABLE_AIRCRAFT" (
SORTIEDATEIN IN VARCHAR2,
SQUADRONIDIN NUMBER
)
/******************************************************************************
   NAME:       GET_UNAVAILABLE_AIRCRAFT
   PURPOSE:    Return a string with NMC aircraft for Schedule Fly Day report

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        4/9/2004    A.Mitchell      1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal VARCHAR2(500) := null;
CURSOR schedcur is
	   select  aircraft.shorttailnumber
	   from schedule
	   join aircraft on schedule.aircraftid = aircraft.aircraftid
	   join conditioncodes cc on aircraft.conditioncodeid = cc.condcodeid
	   join conditionstatus cs on cc.condstatid = cs.condstatid
	   where conditionstatus like 'NMC%' and schedule.sortiedate = SORTIEDATEIN and schedule.squadronid = SQUADRONIDIN;

	   schedrec schedcur%rowtype;
BEGIN

	   open schedcur;

	   fetch schedcur into schedrec;

	   while schedcur%found
	   loop
	   	   retVal := retVal || '  ' || schedrec.shorttailnumber;
		   fetch schedcur into schedrec;
	   end loop;
	   close schedcur;

   RETURN retVal;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END GET_UNAVAILABLE_AIRCRAFT;
 
 
 
 
 
 
 
 
@
