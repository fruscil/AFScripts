--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETPACINGWRITEUPMICAPS" (
   p_cursor       OUT   emoc_types.emoc_cursor,
   aircraftidin         micap.aircraftid%TYPE,
   equipidin            micap.equipmentid%TYPE,
   elcin                micap.enterpriselocationcode%TYPE,
   unitidin             micap.unitid%TYPE,
   jcnin                micap.jobcontrolnumber%TYPE
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   *
          FROM micap
         WHERE micap.jobcontrolnumber = jcnin
           AND (   (    micap.equipmentid = equipidin
                    AND micap.enterpriselocationcode = elcin
                    AND micap.unitid = unitidin
                   )
                OR (micap.aircraftid = aircraftidin)
               )
      ORDER BY micap.documentnumber;
END spgetpacingwriteupmicaps;
 
 
 
 
 
 
 
 
@
