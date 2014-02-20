--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_STATCOUNT" (CONDCODEIN IN CHAR, SQUADIN IN NUMBER, WINGIN IN NUMBER)
/******************************************************************************
   NAME:       GET_STATCOUNT
   PURPOSE:    Return the number of aircraft with a conditioncode

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/12/2004  J.Chaplin        1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal NUMBER := 0;

BEGIN

	   SELECT COUNT(*)
	   INTO retVal
	   FROM
       		WINGS W,
			SQUADRONS SQ,
			AIRCRAFT AC,
			CONDITIONCODES CC
	   WHERE
	   		W.WINGID = WINGIN
	   		AND W.WINGID = SQ.WINGID
			AND AC.SQUADRONID = SQ.SQUADRONID
	 		AND AC.SQUADRONID = SQUADIN
	 		AND CC.CONDCODEID = AC.CONDITIONCODEID
			AND CC.CONDITIONCODE = CONDCODEIN;

   RETURN retVal;
   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END GET_STATCOUNT;

 
 
 
 
 
 
 
 
@
