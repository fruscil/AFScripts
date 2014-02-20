--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_CUSTOMDATA" (
   labelin         customdata.customdatalabel%TYPE,
   descriptionin   customdata.customdatadescription%TYPE,
   typein          customdata.customdatatype%TYPE,
   widthin         customdata.customdatawidth%TYPE,
   bgcolorin       customdata.bgcolorvalue%TYPE,
   fontcolorin     customdata.fontcolor%TYPE,
   idin            customdata.customdataid%TYPE
)
AS
BEGIN
   UPDATE customdata
      SET customdatalabel = labelin,
          customdatadescription = descriptionin,
          customdatatype = typein,
          customdatawidth = widthin,
          bgcolorvalue = bgcolorin,
          fontcolor = fontcolorin
    WHERE customdataid = idin;
END upd_customdata;

 
 
 
 
 
 
 
 
@
