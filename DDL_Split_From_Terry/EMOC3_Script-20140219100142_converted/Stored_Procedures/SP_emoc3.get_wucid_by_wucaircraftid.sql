--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WUCID_BY_WUCAIRCRAFTID" (
   wucin            VARCHAR2,
   acid             NUMBER,
   wucidout   OUT   NUMBER
)
AS
   tmpvar     NUMBER;
   mdsvar     VARCHAR2(15);
   blkvar     VARCHAR2(3);
   mdsidvar   NUMBER;
/******************************************************************************
   NAME:       GET_WUCID_BY_WUCAIRCRAFTID
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        1/18/2007   rwm              1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_WUCID_BY_WUCAIRCRAFTID
      Sysdate:         1/18/2007
      Date and Time:   1/18/2007
      Username:         emoc3)
      Table Name:       wuc)

******************************************************************************/
BEGIN
   SELECT aircraftmdsid
     INTO mdsidvar
     FROM aircraft
    WHERE aircraftid = acid;

   SELECT aircraftmds, blocknumber
     INTO mdsvar, blkvar
     FROM aircraftmds
    WHERE aircraftmdsid = mdsidvar;

   SELECT COUNT (*)
     INTO tmpvar
     FROM wuc
    WHERE wuccode = wucin
      AND missiondesignseries = mdsvar
      AND blocknumber = blkvar;

   IF tmpvar > 0
   THEN
      SELECT wucid
        INTO wucidout
        FROM (SELECT wucid
                FROM wuc
               WHERE wuccode = wucin
                 AND missiondesignseries = mdsvar
                 AND blocknumber = blkvar
                 AND ROWNUM <= 1);
   ELSE
      wucidout := NULL;
   END IF;
--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END get_wucid_by_wucaircraftid;
 
 
 
 
 
 
 
 
@
