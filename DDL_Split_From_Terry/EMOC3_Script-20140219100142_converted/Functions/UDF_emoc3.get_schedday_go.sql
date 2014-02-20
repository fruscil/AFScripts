--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_SCHEDDAY_GO" (
SORTIEDATEIN IN VARCHAR2,
SQUADRONIDIN NUMBER
)
/******************************************************************************
   NAME:       GET_SCHEDDAYGO
   PURPOSE:    Return a string with scheduled 'GO' for Schedule Fly Day report

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        4/9/2004    A.Mitchell      1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal VARCHAR2(500) := null;
CURSOR schedcur is
	   select distinct nvl(go, 0) go, count(nvl(go, 0)) scheduled
	   from schedule
	   where schedule.sortiedate = SORTIEDATEIN
	   and squadronid = SQUADRONIDIN
	   group by go;

	   schedrec schedcur%rowtype;
BEGIN

	   open schedcur;

	   fetch schedcur into schedrec;

	   while schedcur%found
	   loop
	   	   if length(retVal) != 0 then
		   	  begin
			  	   retval := retVal || ' X ';
			  end;
		   end if;

	   	   retVal := retVal || schedrec.scheduled;

		   fetch schedcur into schedrec;
	   end loop;
	   close schedcur;

	   if length(retVal) < 3 then
	   	  begin
		  	   retVal := retVal || ' X 0';
		  end;
	   end if;

   RETURN retVal;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END GET_SCHEDDAY_GO;
 
 
 
 
 
 
 
 
@
