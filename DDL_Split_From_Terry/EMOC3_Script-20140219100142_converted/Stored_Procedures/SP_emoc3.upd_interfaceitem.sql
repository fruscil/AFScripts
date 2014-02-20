--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_INTERFACEITEM" (
   interfacecontrolidin   interfaceitems.interfacecontrolid%TYPE,
   interfaceitemidin      interfaceitems.interfaceitemid%TYPE,
   itemenabledin          interfaceitems.itemenabled%TYPE,
   lastupdatebyin         interfaceitems.lastupdatedby%TYPE
)
AS
   prevstatus    VARCHAR2(10);
   prevenabled   INTEGER;
   currstatus    VARCHAR2(10);
BEGIN
   SELECT itemenabled
     INTO prevenabled
     FROM interfaceitems
    WHERE interfaceitemid = interfaceitemidin;

   IF prevenabled = 1
   THEN
      prevstatus := 'ENABLED';
   ELSE
      prevstatus := 'DISABLED';
   END IF;

   IF itemenabledin = 1
   THEN
      currstatus := 'ENABLED';
   ELSE
      currstatus := 'DISABLED';
   END IF;

   IF prevenabled != itemenabledin
   THEN
      INSERT INTO interfaceitemshistory
                  (interfacecontrolid, interfaceitemid, statuschangeby,
                   statuschangetime, currentstatus
                  )
           VALUES (interfacecontrolidin, interfaceitemidin, lastupdatebyin,
                   SYSDATE, currstatus
                  );
   END IF;

   UPDATE interfaceitems
      SET itemenabled = itemenabledin,
          lastupdatedby = lastupdatebyin,
          lastupdate = SYSDATE
    WHERE interfaceitemid = interfaceitemidin;
END upd_interfaceitem;

 
 
 
 
 
 
 
 
@
