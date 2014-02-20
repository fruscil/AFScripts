--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_DEVIATIONCODES" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   deviationcodes.deviationcodeid, deviationcodes.deviationcode,
               deviationcodes.deviationdescription,
               NVL(deviationcodes.defaultdeviationcode,0) as defaultdeviationcode, deviationcodes.colorid,
               colors.colorname, colors.colorvalue, deviationcodes.mocid
          FROM deviationcodes, colors
         WHERE deviationcodes.colorid = colors.colorid
           AND deviationcodes.mocid = mocidin
      ORDER BY deviationcodes.deviationcode ASC;
END get_moc_deviationcodes;

 
 
 
 
 
 
 
 
@
