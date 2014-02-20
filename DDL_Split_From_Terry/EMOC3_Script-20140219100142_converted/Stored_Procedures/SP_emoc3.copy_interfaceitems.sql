--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_INTERFACEITEMS" (
   mocidout                     interfacecontrol.mocid%TYPE
)
AS
   row_id   INTEGER;

   CURSOR mycur
   IS
      SELECT *
        FROM interfaceitems
       WHERE mocid = 0;

   myrec    mycur%ROWTYPE;
BEGIN
         OPEN mycur;

         FETCH mycur
          INTO myrec;

         WHILE mycur%FOUND
         LOOP
            SELECT NVL (MAX (interfaceitems.interfaceitemid), 0)
              INTO row_id
              FROM interfaceitems;

            INSERT INTO interfaceitems
                        (interfaceitemid, interfacecontrolid, itemname,
                         itemenabled, lastupdatedby, tric,
                         itemdescription, mocid
                        )
                 VALUES (row_id + 1, 0, myrec.itemname,
                         myrec.itemenabled, 0, myrec.tric,
                         myrec.itemdescription, mocidout
                        );

            COMMIT;

            FETCH mycur
             INTO myrec;
         END LOOP;

         CLOSE mycur;
END COPY_INTERFACEITEMS;
 
 
 
 
 
 
 
 
@
