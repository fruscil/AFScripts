--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_WX" (
   weathercode                wx.weathercode%TYPE,
   weatherdescription         wx.weatherdescription%TYPE,
   defaultweathercode         wx.defaultweathercode%TYPE,
   mocidin                    wx.mocid%TYPE,
   wxcodeid             OUT   wx.wxcodeid%TYPE
)
AS
BEGIN
   SELECT seq_wx.NEXTVAL
     INTO wxcodeid
     FROM DUAL;

   INSERT INTO wx
               (wxcodeid, weathercode, weatherdescription,
                defaultweathercode, mocid
               )
        VALUES (wxcodeid, weathercode, weatherdescription,
                defaultweathercode, mocidin
               );
END add_moc_wx;

 
 
 
 
 
 
 
 
@
