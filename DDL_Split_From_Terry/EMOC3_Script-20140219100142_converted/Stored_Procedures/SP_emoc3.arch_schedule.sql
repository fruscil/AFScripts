--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ARCH_SCHEDULE" (archdate DATE)
AS
BEGIN
--Archive record if older than cutoff date.
   INSERT INTO emocaux.schedule
      SELECT   scheduleid, go, scheduledtakeoff, scheduledlanding,
               actualtakeoff, actuallanding, spare, adjtakeoff, adjlanding,
               areaarrivetime, arealeavetime, landingcode, RANGE,
               deviationcode, causecode, weathercode, mission, area,
               aircraftid, pilotname, sortienum, sortiemod, sortiedate,
               blocknumber, published_flag, schedday, callsign, transient,
               durationscheduled, durationactual, configcode,
               rem1.remarksid scheduleremarks, rem2.remarksid maintremarks,
               sortie_joap, sortie_semedx, squadronname, utilizationcode,
               schedulesource, interfacelogid, SYSDATE AS archivedate
          FROM schedule LEFT JOIN landingcodes ON landingcodes.landingcodeid =
                                                                schedule.landingcodeid
               LEFT JOIN ranges ON ranges.rangeid =
                                                       schedule.rangeid
               LEFT JOIN deviationcodes ON deviationcodes.deviationcodeid =
                                                   schedule.deviationcodeid
               LEFT JOIN causecodes ON causecodes.causecodeid =
                                                   schedule.causecodeid
               LEFT JOIN wx ON wx.wxcodeid =
                                                      schedule.wxcodeid
               LEFT JOIN missions ON missions.missionid =
                                                     schedule.missionid
               LEFT JOIN areas ON areas.areaid =
                                                        schedule.areaid
               LEFT JOIN pilot ON pilot.pilotid =
                                                       schedule.pilotid
               LEFT JOIN utilizationcodes ON utilizationcodes.utilcodeid =
                                                     schedule.utilcodeid
               LEFT JOIN remarks rem1 ON rem1.remarksid =
                                                 schedule.scheduleremarks
               LEFT JOIN remarks rem2 ON rem2.remarksid =
                                                  schedule.maintremarks
               JOIN squadrons ON squadrons.squadronid =
                                                    schedule.squadronid
         WHERE schedule.schedday < archdate
      ORDER BY schedule.scheduleid;

--Then delete
   DELETE      schedule
         WHERE schedday < archdate;

--Commit only if both successful
   COMMIT;
END;
 
 
 
 
 
 
 
 
@
