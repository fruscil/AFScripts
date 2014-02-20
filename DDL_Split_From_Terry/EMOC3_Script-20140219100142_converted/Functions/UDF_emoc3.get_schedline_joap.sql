--<ScriptOptions statementTerminator="@"/>

CREATE FUNCTION         "EMOC3"."GET_SCHEDLINE_JOAP" (SCHEDULEIDIN IN NUMBER)
/******************************************************************************
   NAME:       GET_SCHEDDLINE_JOAP
   PURPOSE:    Return JOAP for scheduleid

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        5/25/2004   J.Chaplin        1. Created this function.


******************************************************************************/

RETURN VARCHAR2

IS
retVal VARCHAR2(5) := NULL;
mocvar NUMBER;
BEGIN
  select mocid into mocvar from squadrons 
  where squadronid = (select squadronid 
            from schedule 
      where scheduleid = SCHEDULEIDIN);
     GET_FLYBOARD_JOAP_SEMEDX(retVal, SCHEDULEIDIN, 0, mocvar); --0 is for JOAP

  RETURN retVal;

END GET_SCHEDLINE_JOAP;
 
 
 
 
 
 
 
 
@
