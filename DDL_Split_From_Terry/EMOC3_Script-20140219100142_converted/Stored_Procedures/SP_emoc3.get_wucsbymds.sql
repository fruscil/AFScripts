--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_WUCSBYMDS" (
   p_cursor      OUT   emoc_types.emoc_cursor,
   mdsin               wuc.missiondesignseries%TYPE,
   blknumberin         wuc.blocknumber%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   wucid, wuccode, wucdescription,
               TO_CHAR (wucstartdate, 'MM/DD/YYYY') AS startdate,
               TO_CHAR (wucstopdate, 'MM/DD/YYYY') AS stopdate,
               wuc.missiondesignseries, wuc.blocknumber,
               (wuc.missiondesignseries || ' / ' || wuc.blocknumber
               ) AS mds_block,
               wuc.camsinit
          FROM wuc
         WHERE wuc.missiondesignseries = mdsin
           AND wuc.blocknumber = blknumberin
      ORDER BY wuccode;
END get_wucsbymds;
 
 
 
 
 
 
 
 
@
