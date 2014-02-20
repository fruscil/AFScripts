--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WX" (
   weathercode                wx.weathercode%TYPE,
   weatherdescription         wx.weatherdescription%TYPE,
   defaultweathercode         wx.defaultweathercode%TYPE,
   wxcodeid             OUT   wx.wxcodeid%TYPE
)
AS
BEGIN
   SELECT seq_wx.NEXTVAL
     INTO wxcodeid
     FROM DUAL;

   INSERT INTO wx
               (wxcodeid, weathercode, weatherdescription, defaultweathercode
               )
        VALUES (wxcodeid, weathercode, weatherdescription, defaultweathercode
               );
END add_wx;

 
 
 
 
 
 
 
 
@
