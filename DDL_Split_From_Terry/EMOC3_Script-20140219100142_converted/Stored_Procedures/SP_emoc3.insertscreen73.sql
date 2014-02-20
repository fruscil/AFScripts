--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."INSERTSCREEN73" 
AS
   CURSOR curctrl
   IS
      SELECT interfacecontrolid, mocid
        FROM interfacecontrol
       WHERE interfacename = 'CAMS';

   ctrlrec   curctrl%ROWTYPE;
   recid     NUMBER;
   tmpvar    NUMBER;
BEGIN
   OPEN curctrl;

   FETCH curctrl
    INTO ctrlrec;

   WHILE curctrl%FOUND
   LOOP
      SELECT COUNT (*)
        INTO tmpvar
        FROM interfaceitems
       WHERE interfacecontrolid = ctrlrec.interfacecontrolid
         AND mocid = ctrlrec.mocid
         AND tric = 'EAR';

      IF (tmpvar = 0)
      THEN
         SELECT MAX (interfaceitemid)
           INTO recid
           FROM interfaceitems;

         INSERT INTO emoc3.interfaceitems
                     (interfaceitemid, interfacecontrolid, itemname,
                      itemenabled, lastupdate, lastupdatedby, tric,
                      itemdescription,
                      mocid
                     )
              VALUES (recid + 1, ctrlrec.interfacecontrolid, '73',
                      1, SYSDATE, 0, 'EAR',
                      'Schedule Maintenance (No Job Standard Assigned)',
                      ctrlrec.mocid
                     );
      END IF;

      FETCH curctrl
       INTO ctrlrec;
   END LOOP;

   CLOSE curctrl;

   COMMIT;
END insertscreen73;
 
 
 
 
 
 
 
 
@
