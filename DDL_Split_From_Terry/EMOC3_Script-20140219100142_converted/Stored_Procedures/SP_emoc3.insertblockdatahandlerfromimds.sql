--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTBLOCKDATAHANDLERFROMIMDS" (
   schedblknumin       VARCHAR2,
   devidvar                      NUMBER,
   causevar                      NUMBER,
   newcuase                      NUMBER,
   sortiedatein         VARCHAR2,
   sortiemodifierin      VARCHAR2,
   actionvar         NUMBER,
   chargevar       VARCHAR2,
   startdate           DATE,
   stopdate           DATE,
   mainteventidin                VARCHAR2,
   remarksid                     NUMBER,
   opeventtypeeventin            VARCHAR2,
   mocvar       NUMBER

)
AS
   tmpvar   NUMBER;
   CURSOR mycur
   IS
      SELECT scheduleid, sortienum
        FROM SCHEDULE
       WHERE SQUADRONID IN (SELECT squadronid FROM squadrons WHERE mocid = mocvar)
     AND SORTIEDATE = sortiedatein
  AND BLOCKNUMBER = schedblknumin;

   myrec   mycur%ROWTYPE;

   /******************************************************************************
   NAME:       INSERTBLOCKDATAHANDLERFROMIMDS
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTBLOCKDATAHANDLERFROMIMDS
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventupdatetrx)

******************************************************************************/
BEGIN
   SELECT seq_scheduledeviations.NEXTVAL
     INTO tmpvar
     FROM DUAL;

  OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
  INSERT INTO EMOC3.SCHEDULEDEVIATIONS (
       SCHEDULEDEVIATIONID, SCHEDULEID, DEVIATIONCODEID,
   CAUSECODEID, NEWCAUSECODE, SORTIENUM, SORTIEDATE,
   SORTIEMOD, ACTIONOPTIONS, CHARGEABLE, STARTDATETIME,
      STOPDATETIME, MAINTENANCEEVENTID, DEVIATIONSREMARKS,
      INTERFACELOGID)
  VALUES (tmpvar, myrec.scheduleid, devidvar, causevar, NULL,
     myrec.sortienum, sortiedatein, sortiemodifierin, actionvar,
    chargevar, startdate, stopdate, mainteventidin, remarksid, NULL);
 FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;


--EXCEPTION
--   WHEN NO_DATA_FOUND
 --  THEN
 --     NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTBLOCKDATAHANDLERFROMIMDS;
 
 
 
 
 
 
 
 
@
