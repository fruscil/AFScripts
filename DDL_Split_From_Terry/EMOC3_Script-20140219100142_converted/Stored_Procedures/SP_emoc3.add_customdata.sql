--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_CUSTOMDATA" (
   labelin               customdata.customdatalabel%TYPE,
   descriptionin         customdata.customdatadescription%TYPE,
   typein                customdata.customdatatype%TYPE,
   widthin               customdata.customdatawidth%TYPE,
   bgcolorin             customdata.bgcolorvalue%TYPE,
   fontcolorin           customdata.fontcolor%TYPE,
   idout           OUT   customdata.customdataid%TYPE
)
AS
BEGIN
   SELECT seq_customdata.NEXTVAL
     INTO idout
     FROM DUAL;

   INSERT INTO customdata
               (customdataid, customdatalabel, customdatadescription,
                customdatatype, customdatawidth, bgcolorvalue, fontcolor
               )
        VALUES (idout, labelin, descriptionin,
                typein, widthin, bgcolorin, fontcolorin
               );
END add_customdata;

 
 
 
 
 
 
 
 
@
