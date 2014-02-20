--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."TBMCS_INTERFACE_METRICS_MOC" (
   startdate                     DATE,
   enddate                       DATE,
   p_cursor_all_avg        OUT   emoc_types.emoc_cursor,
   p_cursor_daily_avg      OUT   emoc_types.emoc_cursor,
   p_cursor_total_count    OUT   emoc_types.emoc_cursor,
   p_cursor_total_failed   OUT   emoc_types.emoc_cursor,
   p_cursor_long           OUT   emoc_types.emoc_cursor,
   p_cursor_failed         OUT   emoc_types.emoc_cursor,
   p_cursor_custom         OUT   emoc_types.emoc_cursor,
   mocidin                       tbmcsinterfacelog.mocid%TYPE
)
AS
BEGIN

--This procedure used to query TBMCSINTERFACELOG table and report on transaction metrics
--86400 is used b/c this is the number of seconds in a day

   --average transaction Duration
   OPEN p_cursor_all_avg FOR
      SELECT    TO_CHAR (AVG (tbmcsresponserecv - tbmcsmsgsent) * 86400,
                         999.99
                        )
             || ' seconds' "Avg Duration/All Trans."
        FROM tbmcsinterfacelog
       WHERE tbmcsmsgsent BETWEEN startdate AND (enddate + 1)
         AND mocid = mocidin;

--daily average transaction Duration
   OPEN p_cursor_daily_avg FOR
      SELECT      TO_CHAR (AVG (tbmcsresponserecv - tbmcsmsgsent) * 86400,
                           999.99
                          )
               || ' seconds' "Avg Duration",
               COUNT (interfacelogid) "# Trans.",
               TO_CHAR (tbmcsmsgsent, 'MM/DD/YYYY') "Date"
          FROM tbmcsinterfacelog
         WHERE tbmcsmsgsent BETWEEN (enddate - 7) AND (enddate + 1)
           AND mocid = mocidin
      GROUP BY TO_CHAR (tbmcsmsgsent, 'MM/DD/YYYY');

--total # transactions
   OPEN p_cursor_total_count FOR
      SELECT COUNT (interfacelogid) "Total # Trans."
        FROM tbmcsinterfacelog
       WHERE tbmcsmsgsent BETWEEN startdate AND (enddate + 1)
         AND mocid = mocidin;

--total # failed
   OPEN p_cursor_total_failed FOR
      SELECT COUNT (interfacelogid) "# of Trans."
        FROM tbmcsinterfacelog
       WHERE tbmcsmsgsent BETWEEN startdate AND (enddate + 1)
         AND (       (    tbmcsresponserecv IS NOT NULL
                      AND tbmcsresponse NOT LIKE
                             'EMOC to TBMCS Transaction%completed successfully%'
                     )
                 AND mocid = mocidin
              OR tbmcsresponse IS NULL
             );

--long running transactions
   OPEN p_cursor_long FOR
      SELECT *
        FROM (SELECT   interfacelogid "ID", tbmcsmsgsent "Time Sent",
                          TO_CHAR (  MAX (tbmcsresponserecv - tbmcsmsgsent)
                                   * 86400,
                                   999
                                  )
                       || ' seconds' "Duration",
                       updatemethod "Trans. Type"
                  FROM tbmcsinterfacelog
                 WHERE tbmcsmsgsent BETWEEN SYSDATE - 7 AND (SYSDATE + 1)
                   AND mocid = mocidin
              GROUP BY interfacelogid, tbmcsmsgsent, updatemethod
              ORDER BY MAX (tbmcsresponserecv - tbmcsmsgsent) DESC)
       WHERE ROWNUM <= 7;

--grouping of failed by type
   OPEN p_cursor_failed FOR
      SELECT   COUNT (interfacelogid) "# of Trans.",
               updatemethod "Trans. Type"
          FROM tbmcsinterfacelog
         WHERE tbmcsmsgsent BETWEEN startdate AND (enddate + 1)
           AND (       (    tbmcsresponserecv IS NOT NULL
                        AND tbmcsresponse NOT LIKE
                               'EMOC to TBMCS Transaction%completed successfully%'
                       )
                   AND mocid = mocidin
                OR tbmcsresponse IS NULL
               )
      GROUP BY updatemethod;

--use temp dummy select. users can replace with their own custom sql for report
   OPEN p_cursor_custom FOR
      SELECT TO_CHAR (SYSDATE, 'MM/DD/YYYY') "Todays Date:"
        FROM DUAL;
END tbmcs_interface_metrics_moc;
 
 
 
 
 
 
 
 
@
