--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 22323
	Relative Current Chunk Line Number: 22323
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' --      NULL;\n  --   WHEN OTHERS\n  --   THEN\n  -- Consider logging the error and then re-raise\n  --      RAISE;\nEND DELETEDEVIATIONFROMIMDS;\n\n[CREATE]'
------------

The following statement (from line 22243 to 22321) and was skipped" BEGIN*/
 CREATE PROCEDURE         "EMOC3"."DELETEDEVIATIONFROMIMDS"
  (
    homeelcin        VARCHAR2,
    currentelcin     VARCHAR2,
    unitidin         VARCHAR2,
    isortiedatein    VARCHAR2,
    sortiedatein     VARCHAR2,
    schedblknumin    VARCHAR2,
    equipidin        VARCHAR2,
    sortienumberin   VARCHAR2,
    sortiemodifierin VARCHAR2,
    mainteventidin   VARCHAR2,
    devcodein        VARCHAR2,
    devcausecodein   VARCHAR2,
    chargeindin      VARCHAR2 )
AS
  mocvar     NUMBER;
  acidvar    NUMBER;
  schedidvar NUMBER;
  devidvar   NUMBER;
  causevar   NUMBER;
  squadvar   NUMBER;
  /*chargevar NUMBER;*/
  /******************************************************************************
  NAME:       DELETEDEVIATIONFROMIMDS
  PURPOSE:
  REVISIONS:
  Ver        Date        Author           Description
  ---------  ----------  ---------------  ------------------------------------
  1.0        12/15/2006  jwc             1. Created this procedure.
  2.0        08/15/2012  J.Long          1. QC - 367 check causevar against old/new
  NOTES:
  Automatically available Auto Replace Keywords:
  Object Name:     DELETEDEVIATIONFROMIMDS
  Sysdate:         12/15/2006
  Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
  Username:         emoc3)
  Table Name:       deviationdeletetrx)
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
              DELETE
              FROM EMOC3.SCHEDULEDEVIATIONS
              WHERE scheduleid    = schedidvar
              AND deviationcodeid = devidvar
              AND (causecodeid    = causevar
              OR newcausecode     = causevar);
            END IF;
          END IF;
        END IF;
      END IF;
    END IF;
  END IF;
  --EXCEPTION
  --   WHEN NO_DATA_FOUND
  --   THEN
  --      NULL;
  --   WHEN OTHERS
  --   THEN
  -- Consider logging the error and then re-raise
  --      RAISE;
END DELETEDEVIATIONFROMIMDS@
