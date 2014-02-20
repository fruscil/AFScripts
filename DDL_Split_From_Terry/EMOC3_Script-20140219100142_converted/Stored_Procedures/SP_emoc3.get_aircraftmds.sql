--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFTMDS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   aircraftmdsid, aircraftmds, numberofstations, numberofengines,
               timebetweenphase, defaultaircrafttype AS defaultmds,
               phaseunit, blocknumber,
               (RTRIM (aircraftmds) || ' / ' || LTRIM (blocknumber)
               ) AS mds_block,
               acftmdstypecd,
               (SELECT acftmdstypenm
                  FROM acftmdstypes
                 WHERE acftmdstypecd =
                                   aircraftmds.acftmdstypecd)
                                                            AS acftmdstypenm
          FROM aircraftmds
      ORDER BY aircraftmds;
END get_aircraftmds;

 
 
 
 
 
 
 
 
@
