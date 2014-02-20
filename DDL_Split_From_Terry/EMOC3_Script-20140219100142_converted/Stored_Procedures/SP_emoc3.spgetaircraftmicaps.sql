--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETAIRCRAFTMICAPS" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         micap.aircraftid%TYPE,
   elc                  micap.enterpriselocationcode%TYPE,
   unitidin             micap.unitid%TYPE,
   equipid              micap.equipmentid%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT DISTINCT micap.micapid, micap.jobcontrolnumber,
                      micap.documentnumber, micap.nomenclature AS part,
                      micap.estimateddeliverydate AS eta,
                      issuedate,
                      urgencyjustificationcode AS ujc, workunitcode,
                      usercomment, NVL (deletedflag, 0) AS deletedflag,
                      TO_CHAR (micap.deleteddate,
                               'MM/DD/YYYY HH24:MI:SS'
                              ) "DELETEDDATE",
                      TO_CHAR (micap.camsinit,
                               'MM/DD/YYYY HH24:MI:SS'
                              ) "CAMSINIT"
                 FROM micap
                WHERE (   (    micap.enterpriselocationcode = elc
                           AND micap.unitid = unitidin
                           AND micap.equipmentid = equipid
                          )
                       OR (micap.aircraftid = aircraftidin)
                      )
             ORDER BY micap.documentnumber;
END spgetaircraftmicaps;
 
 
 
 
 
 
 
 
@
