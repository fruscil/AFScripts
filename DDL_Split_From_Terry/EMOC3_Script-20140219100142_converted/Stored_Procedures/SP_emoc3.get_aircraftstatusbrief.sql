--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFTSTATUSBRIEF" (
   mocidin          aircraft.mocid%TYPE,
   p_cursor   OUT   emoc_types.emoc_cursor
)
/******************************************************************************
   NAME:       GET_AIRCRAFTSTATUSBRIEF
   PURPOSE:
   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        7/11/03      A.Mitchell       1. Created this procedure.
   1.1        7/20/09      J.C.             2. Modified to correct problem
                                               where aircraft were not being
                                               displayed properly. (QC398)
******************************************************************************/
AS

BEGIN
   OPEN p_cursor FOR
      SELECT ac.aircraftid AS aircraftid, am.aircraftmds AS aircraftmds,
             sq.shortname AS squadron, sq.squadronid AS squadronid,
             ps.possessioncode AS possession,
             ac.shorttailnumber AS tailnumber, cc.conditioncode AS status,
             TO_CHAR (ac.lastflowntime, 'DD_MON_YY') AS lastflydate,
             TO_CHAR (ac.lastflowntime, 'DDD') AS juliandate,
             TRUNC (SYSDATE - ac.lastflowntime) AS daysdown,
                        --daysdown, --calculated from last flown date - today
             ac.locationcode AS LOCATION, ac.STATUSWUCLCN AS wuc,
             TO_CHAR (ac.statuscodelastupdated,
                      'DD_MON_YY HH24:MI'
                     ) AS statustime,
             ac.etic AS etic, ac.statusnarrative AS primaryremark,
             rm.remarks AS secondaryremark, mc.nomenclature AS noun,
             mc.documentnumber AS docnumber, wu.writeuptime AS micapdate,
             NULL AS joap
        FROM aircraft ac LEFT JOIN aircraftmds am ON ac.aircraftmdsid =
                                                             am.aircraftmdsid
             LEFT JOIN squadrons sq ON ac.squadronid = sq.squadronid
             LEFT JOIN possessions ps ON ac.possessionid = ps.possessionid
             LEFT JOIN conditioncodes cc ON ac.conditioncodeid =
                                                                cc.condcodeid
             LEFT JOIN remarks rm ON ac.remarksid = rm.remarksid
             LEFT JOIN writeups wu ON ac.aircraftid = wu.aircraftid
    	     LEFT JOIN micap mc ON wu.jcn = mc.jobcontrolnumber
       WHERE (wu.writeupid = (SELECT MIN (writeupid)
                                   FROM writeups
                                  WHERE ac.aircraftid = aircraftid
          AND (pacer = 1 OR pacer IS NULL OR pacer = 0)
          AND (corrected = 0 OR corrected = 1))
           OR wu.writeupid IS NULL
             )
         AND (mc.micapid = (SELECT MIN (micapid)
                                 FROM micap
                                WHERE jobcontrolnumber = wu.jcn
        			AND deletedflag = 0)
              OR mc.micapid IS NULL
             )
         AND ac.mocid = mocidin;
END get_aircraftstatusbrief;

 
@
