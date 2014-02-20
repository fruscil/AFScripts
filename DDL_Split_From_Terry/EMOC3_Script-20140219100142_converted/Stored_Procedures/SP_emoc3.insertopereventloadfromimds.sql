--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTOPEREVENTLOADFROMIMDS" (
   oeltransidin           NUMBER,
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   isortiedatein                 VARCHAR2,
   sortiedatein       VARCHAR2,
   dsortiedatein     VARCHAR2,
   durexcd24hrsin     VARCHAR2,
   opeventtypeeventin    VARCHAR2,
   assnoneblockin     VARCHAR2,
   estfuelloadin     VARCHAR2,
   equipidin      VARCHAR2,
   schedblknumin     VARCHAR2,
   sortienumberin      VARCHAR2,
   starttimein                   VARCHAR2,
   stoptimein                    VARCHAR2,
   missionnumin                  VARCHAR2,
   devcausecodein                VARCHAR2,
   chargeindin                   VARCHAR2
)
AS
   tmpvar   NUMBER;
   mocvar   NUMBER;
   acidvar NUMBER;
   devidvar NUMBER;
   causevar NUMBER;
   wxvar    NUMBER;
   squadvar NUMBER;
   missvar  NUMBER;
   startdate DATE;
   stopdate DATE;
   starttime NUMBER;
   stoptime NUMBER;
   schedday DATE;
   blocknum NUMBER;
   causecnt NUMBER;
   schedcnt NUMBER;
   overcnt NUMBER;
   /******************************************************************************
   NAME:       INSERTOPEREVENTLOADFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTOPEREVENTLOADFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventloadtrx)

******************************************************************************/
BEGIN
   
  /*GET MOCID for gathering code ids*/
  GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);
  IF mocvar IS NOT NULL THEN
  /*Get Aircraftid to make sure correct schedule line*/
      GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);
     IF acidvar IS NOT NULL THEN
        UPD_AIRCRAFT_FUELLOAD(estfuelloadin,acidvar);
         /*Get Squadronid */
         GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);
     IF squadvar IS NOT NULL THEN
      /*Get Deviationid*/
         GET_DEVDEFAULT_BY_MOC(mocvar,devidvar);
        IF devidvar IS NOT NULL THEN
         /*GET CauseCodeid*/
        IF devcausecodein IS NOT NULL THEN
         SELECT COUNT(*)
             INTO causecnt
             FROM CAUSECODES
            WHERE mocid = mocvar
              AND causecode = devcausecodein;
         IF causecnt > 0 THEN
          GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);
         ELSE
           causevar := NULL;
         END IF;
        ELSE
           causevar := NULL;
        END IF;
        /*Get Weathercode*/
        GET_WXDEFAULT_BY_MOC(mocvar,wxvar);
        
        /*Get Missionid*/
        GET_MISSIONID_BY_MOCMISSION(mocvar, missionnumin,missvar);
        IF starttimein IS NOT NULL THEN
         startdate := TO_DATE(dsortiedatein || starttimein, 'mm/dd/yyyy hh24:MI:ss');
        ELSE
          startdate := NULL;
        END IF;
        IF stoptimein IS NOT NULL THEN
         IF TO_NUMBER(stoptimein) < TO_NUMBER(starttimein) THEN
           IF durexcd24hrsin IS NOT NULL THEN
               stopdate := TO_DATE(dsortiedatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss') + 2;--+2
         ELSE
             stopdate := TO_DATE(dsortiedatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss') + 1;--+1
         END IF;
         ELSE
          IF durexcd24hrsin IS NOT NULL THEN
             stopdate := TO_DATE(dsortiedatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss') + 1;--+1
         ELSE
             stopdate := TO_DATE(dsortiedatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss');
         END IF;
         END IF;
         ELSE
           stopdate := NULL;
         END IF; 
         schedday := TO_DATE(dsortiedatein, 'mm/dd/yyyy');

        IF schedblknumin IS NOT NULL THEN
         blocknum := schedblknumin;
        ELSE
         blocknum := NULL;
        END IF;
        CHECK_FOR_DUP_SCHEDULELINE(squadvar,sortiedatein,sortienumberin,acidvar,schedcnt);
        --IF startdate IS NOT NULL and stopdate IS NOT NULL THEN
         --CHECK_FOR_FLIGHT_OVERLAP(sortiedatein,startdate,stopdate,acidvar,overcnt);
        --ELSE
          overcnt := 0;
        --END IF;
        IF schedcnt = 0 AND overcnt = 0 THEN
          SELECT seq_schedule.NEXTVAL
             INTO tmpvar
             FROM DUAL;
          
            INSERT INTO EMOC3.SCHEDULE (
              SCHEDULEID, GO, SCHEDULEDTAKEOFF, SCHEDULEDLANDING, ACTUALTAKEOFF, 
          ACTUALLANDING, SPARE, ADJTAKEOFF, ADJLANDING, AREAARRIVETIME, 
          AREALEAVETIME, LANDINGCODEID, RANGEID, DEVIATIONCODEID, CAUSECODEID, 
             WXCODEID, MISSIONID, AREAID, AIRCRAFTID, PILOTID, SORTIENUM, 
             SORTIEMOD, SORTIEDATE, BLOCKNUMBER, PUBLISHED_FLAG, SCHEDDAY, CALLSIGN, 
             TRANSIENT, DURATIONSCHEDULED, DURATIONACTUAL, CONFIGCODE, 
          SCHEDULEREMARKS, MAINTREMARKS, SORTIE_JOAP, SORTIE_SEMEDX, SQUADRONID, 
             UTILCODEID, CAMSINIT, SCHEDULESOURCE, INTERFACELOGID, TYPE_EVENT, SWAPPEDLINE) 
          VALUES (tmpvar, NULL, startdate, stopdate, NULL, NULL, 0, NULL, NULL, NULL, 
              NULL, NULL, NULL, devidvar,
                 causevar, wxvar, missvar, NULL, acidvar, NULL, sortienumberin, NULL, 
              sortiedatein, blocknum, NULL, schedday, NULL, NULL, NULL, NULL,
                 NULL, NULL, NULL, NULL, NULL, squadvar, NULL, SYSDATE, 341, NULL, 
              opeventtypeeventin, NULL);
       END IF;
         END IF;
     END IF;
   END IF;
  END IF;
--EXCEPTION
--  WHEN NO_DATA_FOUND
 --  THEN
 --     NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTOPEREVENTLOADFROMIMDS;
 
 
 
 
 
 
 
 
@
