--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_FUEL" (
   fuelstatus                fuel.fuelstatus%TYPE,
   fueldescription           fuel.fueldescription%TYPE,
   landing                   fuel.landing%TYPE,
   colorid                   fuel.colorid%TYPE,
   defaultfuel               fuel.defaultfuel%TYPE,
   fuelstatuslabel           fuel.fuelstatuslabel%TYPE,
   allowsortieupdate         fuel.allowsortieupdate%TYPE,
   mocidin                   fuel.mocid%TYPE,
   fuelstatusid        OUT   fuel.fuelstatusid%TYPE
)
AS
BEGIN
   SELECT seq_fuels.NEXTVAL
     INTO fuelstatusid
     FROM DUAL;

   INSERT INTO fuel
               (fuelstatusid, fuelstatus, fueldescription, landing, colorid,
                defaultfuel, fuelstatuslabel, allowsortieupdate, mocid
               )
        VALUES (fuelstatusid, fuelstatus, fueldescription, landing, colorid,
                defaultfuel, fuelstatuslabel, allowsortieupdate, mocidin
               );
END add_moc_fuel;

 
 
 
 
 
 
 
 
@
