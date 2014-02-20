--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_GENFLOW_DATA" (
   genflow          generationflow.generationflowname%TYPE,
   report     OUT   emoc_types.emoc_cursor,
   steps      OUT   emoc_types.emoc_cursor,
   aircraft   OUT   emoc_types.emoc_cursor,
   progress   OUT   emoc_types.emoc_cursor,
   countrs    OUT   emoc_types.emoc_cursor
)

AS
BEGIN
   OPEN report FOR
      SELECT generationflowstarttime, generationflowitemoffset
        FROM generationflow
       WHERE generationflowname = genflow;

   OPEN steps FOR
      SELECT   stepnumber, stepname, steplength
          FROM generationflowsteps
         WHERE generationflowname = genflow
      ORDER BY stepnumber;

   OPEN aircraft FOR
      SELECT   item, itemnumber
          FROM generationflowitems
         WHERE generationflowname = genflow
      ORDER BY itemnumber;

   OPEN progress FOR
      SELECT   itemnumber, stepnumber, started, completed
          FROM generationflowprogress
         WHERE generationflowname = genflow
      ORDER BY itemnumber, stepnumber;

   OPEN countrs FOR
      SELECT COUNT (stepnumber)
        FROM generationflowsteps
       WHERE generationflowname = genflow;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_genflow_data;

 
 
 
 
 
 
 
 
@
