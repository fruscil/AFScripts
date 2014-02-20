--<ScriptOptions statementTerminator="@"/>


/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 34658
	Relative Current Chunk Line Number: 34658
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' --     NULL;\n  -- WHEN OTHERS\n  --  THEN\n  -- Consider logging the error and then re-raise\n  --    RAISE;\nEND INSERTOPEREVTRPLACEMNTFROMIMDS;\n\n[CREATE]'
------------

The following statement (from line 34394 to 34656) and was skipped" BEGIN*/
 CREATE PROCEDURE         "EMOC3"."INSERTOPEREVTRPLACEMNTFROMIMDS"
  (
    homeelcin         VARCHAR2,
    currentelcin      VARCHAR2,
    unitidin          VARCHAR2,
    isortiedatein     VARCHAR2,
    sortiedatein      VARCHAR2,
    sortienumberin    VARCHAR2,
    undoreplacementin VARCHAR2,
    equipidin         VARCHAR2,
    devcodein         VARCHAR2,
    devcausecodein    VARCHAR2,
    chargeindin       VARCHAR2,
    newequipidin      VARCHAR2,
    mainteventid      VARCHAR2,
    devremarksin      VARCHAR2 )
AS
  tmpvar           NUMBER;
  mocvar           NUMBER;
  acidvar          NUMBER;
  squadvar         NUMBER;
  schedidvar       NUMBER;
  newschedidvar    NUMBER;
  newacidvar       NUMBER;
  REMARKSIDIN      NUMBER;
  UPDREMARK        NUMBER;
  newsquadvar      NUMBER;
  ERROR_DEV        NUMBER;
  ERROR_CAUSE      NUMBER;
  ERROR_SQ         NUMBER;
  ERROR_SORTIEDATE CHAR(7);
  ERROR_SORTIENUM  NUMBER;
  SWAP             NUMBER;
  NEWREMARK        NUMBER;
  PLACEHOLDER      NUMBER;
  devidvar         NUMBER;
  causevar         NUMBER;
  devidcnt         NUMBER;
  causecnt         NUMBER;
  STATUSCODEVAR    NUMBER;
  /******************************************************************************
  NAME:       INSERTOPEREVTRPLACEMNTFROMIMDS
  PURPOSE:
  REVISIONS:
  Ver        Date        Author           Description
  ---------  ----------  ---------------  ------------------------------------
  1.0        12/15/2006  jwc             1. Created this procedure.
  2.0        7/16/2012   J.Long          4. QC 336/363/499/521 - Undo TS issues
  NOTES:
  Automatically available Auto Replace Keywords:
  Object Name:     INSERTOPEREVTRPLACEMNTFROMIMDS
  Sysdate:         12/15/2006
  Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
  Username:         emoc3)
  Table Name:       operationaleventreplacementtrx)
  ******************************************************************************/
BEGIN
  /*GET MOCID for gathering code ids*/
  GET_MOCID_BY_ELCUNITID(currentelcin,unitidin,mocvar);
  IF mocvar IS NOT NULL THEN
    /*Get Aircraftid to make sure correct schedule line*/
    GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,equipidin,acidvar);
    IF acidvar IS NOT NULL THEN
      /*Get Aircraftid to make sure correct schedule line*/
      GET_AIRCRAFTID_BY_MOCEQUIPID(mocvar,newequipidin,newacidvar);
      IF newacidvar IS NOT NULL THEN
        /*Get Squadronid */
        GET_SQUADID_BY_AIRCRAFTID(acidvar,squadvar);
        IF squadvar IS NOT NULL THEN
          /*Get Squadronid */
          GET_SQUADID_BY_AIRCRAFTID(newacidvar,newsquadvar);
          IF newsquadvar IS NOT NULL THEN
            /*GetScheduleid to apply deviation to*/
            IF undoreplacementin = 'Y' THEN
              GET_SCHEDID_BY_SQUADSORTIEACID(newsquadvar,sortiedatein,sortienumberin,newacidvar,schedidvar);
              GET_SCHEDID_BY_SQUADSORTIEACID(squadvar,sortiedatein,sortienumberin,acidvar,newschedidvar);
            ELSE
              GET_SCHEDID_BY_SQUADSORTIEACID(squadvar,sortiedatein,sortienumberin,acidvar,schedidvar);
            END IF;
            IF schedidvar IS NOT NULL THEN
              /*Get Deviationid*/
              --IF undoreplacementin = 'Y' THEN
              IF devcodein IS NOT NULL THEN
                SELECT COUNT(*)
                INTO devidcnt
                FROM DEVIATIONCODES
                WHERE mocid       = mocvar
                AND deviationcode = devcodein;
                IF devidcnt       > 0 THEN
                  GET_DEVID_BY_MOCDEVCODE(mocvar,devcodein,devidvar);
                ELSE
                  devidvar := NULL;
                END IF;
              ELSE
                devidvar := NULL;
              END IF;
              /*GET CauseCodeid*/
              IF devcausecodein IS NOT NULL THEN
                SELECT COUNT(*)
                INTO causecnt
                FROM CAUSECODES
                WHERE mocid   = mocvar
                AND causecode = devcausecodein;
                IF causecnt   > 0 THEN
                  GET_CAUSEID_BY_MOCCAUSECODE(mocvar,devcausecodein,causevar);
                ELSE
                  causevar := NULL;
                END IF;
              ELSE
                causevar := NULL;
              END IF;
              --INCREMENT
              --GET REMARK, IF ONE EXISTS
              SELECT SCHEDULEREMARKS
              INTO REMARKSIDIN
              FROM SCHEDULE
              WHERE SCHEDULEID         = schedidvar;
              IF (LENGTH(devremarksin) > 0 OR devremarksin IS NOT NULL) AND undoreplacementin = 'N' THEN
                IF (REMARKSIDIN       IS NOT NULL)THEN
                  UPDATE REMARKS
                  SET REMARKS     = devremarksin,
                    REMARKSDATE   = SYSDATE
                  WHERE REMARKSID = REMARKSIDIN;
                ELSE
                  SELECT SEQ_REMARKS.NEXTVAL INTO REMARKSIDIN FROM DUAL;

                  Add_Remarks (REMARKSIDIN, devremarksin);
                  UPDATE SCHEDULE
                  SET SCHEDULEREMARKS = REMARKSIDIN
                  WHERE SCHEDULEID    = schedidvar;
                END IF;
              END IF;
              --END IF;
              IF undoreplacementin = 'Y' THEN
                --GET THESE TO RESET DEV+CAUSE CODES ON ORIGINAL RECORD
                SELECT DEVIATIONCODEID,
                  CAUSECODEID,
                  SQUADRONID,
                  SORTIEDATE,
                  SORTIENUM,
                  SWAPPEDLINE
                INTO ERROR_DEV,
                  ERROR_CAUSE,
                  ERROR_SQ,
                  ERROR_SORTIEDATE,
                  ERROR_SORTIENUM,
                  SWAP
                FROM SCHEDULE
                WHERE SCHEDULEID = schedidvar;
                SELECT SCHEDULEREMARKS INTO UPDREMARK FROM SCHEDULE WHERE SCHEDULEID = SWAP;
                IF (UPDREMARK IS NULL AND (LENGTH(devremarksin) > 0 OR devremarksin IS NOT NULL)) THEN
                  SELECT SEQ_REMARKS.NEXTVAL INTO NEWREMARK FROM DUAL;

                  Add_Remarks (NEWREMARK, devremarksin);
                  UPDATE SCHEDULE SET SCHEDULEREMARKS = NEWREMARK WHERE SCHEDULEID = schedidvar;
                ELSE
                  UPDATE SCHEDULE SET SCHEDULEREMARKS = UPDREMARK WHERE SCHEDULEID = SWAP;
                  --UPDATE REMARKS
                  --SET REMARKS = SCHEDULEREMARKSIN
                  --WHERE REMARKSID = UPDREMARK;
                END IF;
                UPDATE SCHEDULE
                SET DEVIATIONCODEID = ERROR_DEV,
                  CAUSECODEID       = ERROR_CAUSE
                WHERE SQUADRONID    = squadvar
                AND SORTIEDATE      = ERROR_SORTIEDATE
                AND SORTIENUM       = ERROR_SORTIENUM
                AND SCHEDULEID      = SWAP;
                --1/28/05 To satisfy OnTime FeatureId #99
                --(When doing a Maintenance Interchange using a Spare
                --the Crew Ready information is not being carried forward to the line it is being placed in)
                DELETE SCHEDULESTATUS
                WHERE SCHEDULEID = schedidvar;
                --8/27/2012 Find Default Statusboard Icon for Aircraft
                SELECT SC.STATUSCODEID
                INTO STATUSCODEVAR
                FROM STATUSCODE SC
                JOIN AIRCRAFT AC
                ON SC.MOCID              = AC.MOCID
                WHERE AC.AIRCRAFTID      = newacidvar
                AND SC.DEFAULTSTATUSCODE = 1;
                --8/27/2012 Set Default Statusboard Icon for Aircraft
                UPDATE AIRCRAFT
                SET STATUSCODEID = STATUSCODEVAR
                WHERE AIRCRAFTID = newacidvar;
				--9/12/2012 Set SQPRESELECT to NULL per QC 335
				UPDATE AIRCRAFT
				SET SQPRESELECT = NULL
				WHERE AIRCRAFTID = acidvar;
                --DELETE THE SWAPPED RECORD
                Delete_Sortie_Line(schedidvar, PLACEHOLDER); --3/11/04
              ELSE
                SELECT seq_schedule.NEXTVAL INTO tmpvar FROM DUAL;
                INSERT INTO EMOC3.SCHEDULE
                SELECT tmpvar SCHEDULEID,
                  GO,
                  SCHEDULEDTAKEOFF,
                  SCHEDULEDLANDING,
                  ACTUALTAKEOFF,
                  ACTUALLANDING,
                  SPARE,
                  ADJTAKEOFF,
                  ADJLANDING,
                  AREAARRIVETIME,
                  AREALEAVETIME,
                  LANDINGCODEID,
                  RANGEID,
                  DEVIATIONCODEID,
                  CAUSECODEID,
                  WXCODEID,
                  MISSIONID,
                  AREAID,
                  AIRCRAFTID,
                  PILOTID,
                  SORTIENUM,
                  SORTIEMOD,
                  SORTIEDATE,
                  BLOCKNUMBER,
                  PUBLISHED_FLAG,
                  SCHEDDAY,
                  CALLSIGN,
                  TRANSIENT,
                  DURATIONSCHEDULED,
                  DURATIONACTUAL,
                  CONFIGCODE,
                  NULL,
                  NULL,
                  SORTIE_JOAP,
                  SORTIE_SEMEDX,
                  SQUADRONID,
                  UTILCODEID,
                  CAMSINIT,
                  SCHEDULESOURCE,
                  INTERFACELOGID,
                  TYPE_EVENT,
                  SWAPPEDLINE
                FROM SCHEDULE
                WHERE SCHEDULEID = schedidvar;
                UPDATE SCHEDULE
                SET AIRCRAFTID   = newacidvar,
                  SWAPPEDLINE    = schedidvar,
                  SQUADRONID     = newsquadvar
                WHERE SCHEDULEID = tmpvar;
                UPDATE SCHEDULE
                SET DEVIATIONCODEID = devidvar,
                  CAUSECODEID       = causevar
                WHERE SCHEDULEID    = schedidvar;
              END IF;
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
  -- WHEN OTHERS
  --  THEN
  -- Consider logging the error and then re-raise
  --    RAISE;
END INSERTOPEREVTRPLACEMNTFROMIMDS@
