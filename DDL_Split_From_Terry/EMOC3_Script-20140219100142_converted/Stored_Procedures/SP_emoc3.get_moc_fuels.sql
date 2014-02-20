--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_FUELS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   fuelstatusid, fuelstatus, fueldescription, landing,
               fuelstatuslabel, allowsortieupdate, NVL(defaultfuel, 0) AS defaultfuel,
      colorid,fuel.mocid,
               (SELECT colorname
                  FROM colors
                 WHERE colors.colorid = fuel.colorid) AS colorname,
               (SELECT colorvalue
                  FROM colors
                 WHERE colors.colorid = fuel.colorid) AS colorvalue,
                (SELECT fontcolor
                  FROM colors
                 WHERE colors.colorid = fuel.colorid) AS fontcolor
          FROM fuel
         WHERE fuel.mocid = mocidin
      ORDER BY fuelstatus ASC;
END get_moc_fuels;
 
 
 
 
 
 
 
 
@
