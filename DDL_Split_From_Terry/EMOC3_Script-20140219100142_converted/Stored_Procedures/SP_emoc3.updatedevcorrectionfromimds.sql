--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 42698
	Relative Current Chunk Line Number: 42698
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' --     NULL;\n  --  WHEN OTHERS\n  --  THEN\n  -- Consider logging the error and then re-raise\n  --     RAISE;\nEND UPDATEDEVCORRECTIONFROMIMDS;\n\n[CREATE]'
------------

The following statement (from line 42557 to 42696) and was skipped" BEGIN*/
 CREATE PROCEDURE         "EMOC3"."UPDATEDEVCORRECTIONFROMIMDS"
  (
    homeelcin         VARCHAR2,
    currentelcin      VARCHAR2,
    unitidin          VARCHAR2,
    isortiedatein     VARCHAR2,
    sortiedatein      VARCHAR2,
    schedblknumin     VARCHAR2,
    equipidin         VARCHAR2,
    sortienumberin    VARCHAR2,
    sortiemodifierin  VARCHAR2,
    mainteventidin    VARCHAR2,
    devcodein         VARCHAR2,
    devcausecodein    VARCHAR2,
    newdevcausecodein VARCHAR2,
    chargeindin       VARCHAR2,
    istartdatein      VARCHAR2,
    startdatein       VARCHAR2,
    starttimein       VARCHAR2,
    istopdatein       VARCHAR2,
    stopdatein        VARCHAR2,
    stoptimein        VARCHAR2,
    devremarksin      VARCHAR2 )
  /* Stop date 0 null 0 on where clause */
AS
  mocvar      NUMBER;
  acidvar     NUMBER;
  schedidvar  NUMBER;
  devidvar    NUMBER;
  causevar    NUMBER;
  chargevar   NUMBER;
  newcausevar NUMBER;
  squadvar    NUMBER;
  actionvar   NUMBER;
  REMARKSID   NUMBER;
  startdate DATE;
  stopdate DATE;
  /******************************************************************************
  NAME:       UPDATEDEVCORRECTIONFROMIMDS
  PURPOSE:
  REVISIONS:
  Ver        Date        Author           Description
  ---------  ----------  ---------------  ------------------------------------
  1.0        12/15/2006  jwc             1. Created this procedure.
  2.0        08/15/2012  J.Long          1. QC 377 - update if newdevcausecodein NULL
  NOTES:
  Automatically available Auto Replace Keywords:
  Object Name:     UPDATEDEVCORRECTIONFROMIMDS
  Sysdate:         12/15/2006
  Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
  Username:         emoc3)
  Table Name:       deviationcorrectiontrx)
  ******************************************************************************/
BEGIN
  /*GET MOCID for gathering code ids*/
  GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);
  IF mocvar IS NOT NULL THEN
    /*Get Aircraftid to make sure correct schedule line*/
    GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);
    IF acidvar IS NOT NULL THEN
      /*Get Squadronid */
      GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);
      IF squadvar IS NOT NULL THEN
        /*GetScheduleid to apply deviation to*/
        GET_SCHEDID_BY_SQUADSORTIEACID(squadvar,sortiedatein,sortienumberin,acidvar,schedidvar);
        IF schedidvar IS NOT NULL THEN
          /*Get Deviationid*/
          GET_DEVID_BY_MOCDEVCODE(mocvar,devcodein,devidvar);
          IF devidvar IS NOT NULL THEN
            /*GET CauseCodeid*/
            GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);
            IF causevar IS NOT NULL THEN
              /*GET CauseCodeid*/
              IF newdevcausecodein IS NOT NULL THEN
                GET_CAUSEID_BY_MOCCAUSECODE(mocvar,newdevcausecodein,newcausevar);
                IF newcausevar IS NULL THEN
                  RETURN;
                END IF;
              END IF;
              IF chargeindin = 'Y' THEN
                chargevar   := 1;
              ELSE
                chargevar := 0;
              END IF;
              actionvar       := 3;
              IF devremarksin IS NOT NULL THEN
                SELECT SEQ_REMARKS.NEXTVAL INTO REMARKSID FROM DUAL;

                Add_Remarks (REMARKSID, devremarksin);
              ELSE
                remarksid := NULL;
              END IF;
              IF startdatein IS NOT NULL AND starttimein IS NOT NULL THEN
                startdate    := TO_DATE(startdatein || starttimein, 'mm/dd/yyyy hh24:MI:ss');
              ELSE
                startdate := NULL;
              END IF;
              IF stopdatein IS NOT NULL AND stoptimein IS NOT NULL THEN
                stopdate    := TO_DATE(stopdatein || stoptimein, 'mm/dd/yyyy hh24:MI:ss');
              ELSE
                stopdate := NULL;
              END IF;
              UPDATE EMOC3.SCHEDULEDEVIATIONS
              SET NEWCAUSECODE          = newcausevar,
                SORTIEMOD               = sortiemodifierin,
                ACTIONOPTIONS           = actionvar,
                CHARGEABLE              = chargevar,
                STARTDATETIME           = startdate,
                STOPDATETIME            = stopdate,
                MAINTENANCEEVENTID      = mainteventidin,
                DEVIATIONSREMARKS       = remarksid
              WHERE SCHEDULEDEVIATIONID =
                (SELECT SCHEDULEDEVIATIONID
                FROM SCHEDULEDEVIATIONS
                WHERE SCHEDULEID IN
                  (SELECT scheduleid
                  FROM SCHEDULE
                  WHERE SQUADRONID = squadvar
                  AND SORTIEDATE   = sortiedatein
                  AND SORTIENUM    = sortienumberin
                  AND AIRCRAFTID   = acidvar
                  )
                AND DEVIATIONCODEID = devidvar
                AND CAUSECODEID     = causevar
                );
            END IF;
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
END UPDATEDEVCORRECTIONFROMIMDS@
