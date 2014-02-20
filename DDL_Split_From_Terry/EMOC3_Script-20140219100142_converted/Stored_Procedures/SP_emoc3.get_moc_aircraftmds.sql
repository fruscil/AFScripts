--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_AIRCRAFTMDS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   aircraftmdsid, aircraftmds,
        NVL (numberofstations, 0) AS numberofstations,
               NVL (numberofengines, 0) AS numberofengines,
      NVL (timebetweenphase, 0) AS timebetweenphase,
               NVL (defaultaircrafttype, 0) AS defaultmds,
      phaseunit,
               blocknumber,
               (RTRIM (aircraftmds) || ' / ' || LTRIM (blocknumber)
               ) AS mds_block,
               acftmdstypecd,
               (SELECT acftmdstypenm
                  FROM acftmdstypes
                 WHERE acftmdstypecd =
                                   aircraftmds.acftmdstypecd
                   AND mocid = mocidin) AS acftmdstypenm
          FROM aircraftmds
         WHERE mocid = mocidin
      ORDER BY aircraftmds;
END get_moc_aircraftmds;
 
 
 
 
 
 
 
 
@
