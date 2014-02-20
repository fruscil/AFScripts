--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 13045
	Relative Current Chunk Line Number: 13045
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '   AND writeups.pacer = 1;\nEND spupdatemaintenancestatus3;\n\n[CREATE]'
------------

The following statement (from line 12874 to 13043) and was skipped" BEGIN*/
 CREATE PROCEDURE                 "EMOC3"."SPUPDATEMAINTENANCESTATUS3" (
   aircraftidin                 aircraft.aircraftid%TYPE,
   crewchiefidin                aircraft.crewchiefid%TYPE,
   fcfin                        aircraft.fcf%TYPE,
   ocfin                        aircraft.ocf%TYPE,
   qviin                        aircraft.qvi%TYPE,
   serialnumberin               aircraft.serialnumber%TYPE,
   lastphasedatein              VARCHAR,
   phaseunitsin                 aircraft.phaseunits%TYPE,
   firstofficialin              aircraft.firstofficial%TYPE,
   secondofficialin             aircraft.secondofficial%TYPE,
   possessioncodeidin           aircraft.possessionid%TYPE,
   possessioncodedtin           VARCHAR,
   eticin                       aircraft.etic%TYPE,
   priorityin                   aircraft.priority%TYPE,
   squadronidin                 aircraft.squadronid%TYPE,
   conditioncodeidin            aircraft.conditioncodeid%TYPE,
   hangarqueenstatusidin        aircraft.hangerqueenstatus%TYPE,
   crewchieflastupdatedin       VARCHAR,
   teststatuslastupdatedin      VARCHAR,
   serialnumberlastupdatedin    VARCHAR,
   phasedatelastupdatedin       VARCHAR,
   impoundslastupdatedin        VARCHAR,
   posscodelastupdatedin        VARCHAR,
   squadronlastupdatedin        VARCHAR,
   conditioncodelastupdatedin   VARCHAR,
   eticlastupdatedin            VARCHAR,
   hqstatuslastupdatedin        VARCHAR,
   prioritylastupdatedin        VARCHAR,
   localconfigidin              aircraft.localconfigid%TYPE,
   multiconfigidin              aircraft.multiconfigid%TYPE,
   localoptionin                aircraft.localoption%TYPE,
   wucidin                      aircraft.aircraftwucid%TYPE,
   remarksin                    remarks.remarks%TYPE,
   aircraftmdsidin              aircraft.aircraftmdsid%TYPE,
   statusstartdatein            aircraft.statusstartdate%TYPE,
   statusstarttimein            aircraft.statusstarttime%TYPE,
   statusnarrativein            aircraft.statusnarrative%TYPE,
   arm_dearmin                  aircraft.arm_dearm%TYPE,
   statuswuclcnin               aircraft.statuswuclcn%TYPE,
   openstatuseventjcnin         aircraft.openstatuseventjcn%TYPE
)
AS
   condcode   INTEGER;
   remid      INTEGER;
   row_id     INTEGER;
BEGIN
--delete etics from writeups when conditioncode changes
   SELECT conditioncodeid
     INTO condcode
     FROM aircraft
    WHERE aircraftid = aircraftidin;

--deal with remarks
--determine if remarks id exists
   SELECT aircraft.remarksid
     INTO remid
     FROM aircraft
    WHERE aircraftid = aircraftidin;

--if remarks id exists and user is updating remarks field with value
   IF (remid IS NOT NULL AND remarksin IS NOT NULL)
   THEN
      UPDATE remarks
         SET remarks = remarksin,
             remarksdate = SYSDATE
       WHERE remarks.remarksid = remid;

      UPDATE aircraft
         SET remarkslastupdated = SYSDATE
       WHERE aircraftid = aircraftidin;
   END IF;

--if remarks id exists and user is updating remarks field with null
   IF (remid IS NOT NULL AND remarksin IS NULL)
   THEN
      UPDATE aircraft
         SET remarksid = NULL
       WHERE aircraftid = aircraftidin;

      UPDATE aircraft
         SET remarkslastupdated = SYSDATE
       WHERE aircraftid = aircraftidin;

      DELETE FROM remarks
            WHERE remarksid = remid;
   END IF;

--if remarks id is null and user is updating remarks field with value
   IF (remid IS NULL AND remarksin IS NOT NULL)
   THEN
--2.0.6 A. Mitchell - Modified to use ADD_REMARKS SP (for Sequence)
      SELECT seq_remarks.NEXTVAL
        INTO row_id
        FROM DUAL;

      add_remarks (row_id, remarksin);

/*SELECT NVL(MAX(REMARKS.REMARKSID), 0)
INTO ROW_ID
FROM REMARKS;

INSERT INTO REMARKS(REMARKSID, REMARKS, REMARKSDATE)
VALUES (ROW_ID + 1, REMARKSIN, SYSDATE);
*/
-- end 2.0.6 modification
      UPDATE aircraft
         SET remarksid = row_id                     --+ 1 (2.0.6 modification)
       WHERE aircraftid = aircraftidin;
   END IF;

   UPDATE aircraft
      SET crewchiefid = crewchiefidin,
          fcf = fcfin,
          ocf = ocfin,
          qvi = qviin,
          serialnumber = serialnumberin,
          phasedate = TO_DATE (lastphasedatein, 'MM/DD/YYYY HH24:MI:SS'),
          phaseunits = phaseunitsin,
          firstofficial = firstofficialin,
          secondofficial = secondofficialin,
          possessionid = possessioncodeidin,
          possdatetime = TO_DATE (possessioncodedtin, 'MM/DD/YYYY HH24:MI:SS'),
          etic = eticin,
          priority = priorityin,
          squadronid = squadronidin,
          conditioncodeid = conditioncodeidin,
          hangerqueenstatus = hangarqueenstatusidin,
          crewchieflastupdated =
                     TO_DATE (crewchieflastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          teststatuslastupdated =
                    TO_DATE (teststatuslastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          serialnumberlastupdated =
                  TO_DATE (serialnumberlastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          phasedatelastupdated =
                     TO_DATE (phasedatelastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          impoundslastupdated =
                      TO_DATE (impoundslastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          possessioncodelastupdated =
                      TO_DATE (posscodelastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          squadronlastupdated =
                      TO_DATE (squadronlastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          conditioncodelastupdated =
                 TO_DATE (conditioncodelastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          eticlastupdated =
                          TO_DATE (eticlastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          hqstatuslastupdated =
                      TO_DATE (hqstatuslastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          prioritylastupdated =
                      TO_DATE (prioritylastupdatedin, 'MM/DD/YYYY HH24:MI:SS'),
          localconfigid = localconfigidin,
          multiconfigid = multiconfigidin,
          localoption = localoptionin,
          aircraftwucid = wucidin,
          aircraftmdsid = aircraftmdsidin,
          statusstartdate = statusstartdatein,
          statusstarttime = statusstarttimein,
          statusnarrative = statusnarrativein,
          arm_dearm = arm_dearmin,
          statuswuclcn = statuswuclcnin,
          openstatuseventjcn = openstatuseventjcnin
    WHERE aircraftid = aircraftidin;

--set etic in pacer writeup
   UPDATE writeups
      SET etic = eticin
    WHERE writeups.aircraftid = aircraftidin
      AND writeups.correctedtime IS NULL
      AND writeups.pacer = 1;
END spupdatemaintenancestatus3@
