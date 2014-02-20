--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_AIRCRAFTCUSTOMDATA" (
   aircraftidin         aircraftcustomdata.aircraftid%TYPE,
   mdsid                aircraftmds.aircraftmdsid%TYPE,
   p_cursor       OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT DISTINCT customdata.customdataid, customdatalabel,
                      customdatadescription, customdatatype, customdatawidth,
                      bgcolorvalue, fontcolor,
                      (SELECT colors.colorname
                         FROM colors
                        WHERE colors.colorvalue =
                                         customdata.bgcolorvalue
                          AND customdata.mocid = colors.mocid) AS colorname,
                      (SELECT datavalue
                         FROM aircraftcustomdata
                        WHERE aircraftid = aircraftidin
                          AND customdataid = customdata.customdataid)
                                                                AS datavalue
                 FROM customdata LEFT JOIN customdatamds ON customdata.customdataid =
                                                              customdatamds.customdataid
                      LEFT JOIN aircraftcustomdata ON aircraftcustomdata.customdataid =
                                                        customdata.customdataid
                WHERE customdatamds.aircraftmdsid = mdsid
             ORDER BY customdatalabel;
END get_aircraftcustomdata;
 
 
 
 
 
 
 
 
@
