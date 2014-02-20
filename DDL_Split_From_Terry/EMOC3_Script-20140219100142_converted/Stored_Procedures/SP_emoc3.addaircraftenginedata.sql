--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADDAIRCRAFTENGINEDATA" (
   aircraftidin   NUMBER,
   mdsid          NUMBER
)
AS
   engines    NUMBER;
   newrowid   NUMBER;
   loops      NUMBER;
   tmpvar     NUMBER;
/******************************************************************************
   NAME:       addaircraftenginedata
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/30/2006   r mcbride       1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     addaircraftenginedata
      Sysdate:         12/30/2006
      Date and Time:   12/30/2006, 8:28:59 AM, and 12/30/2006 8:28:59 AM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
BEGIN
   SELECT numberofengines
     INTO engines
     FROM aircraftmds
    WHERE aircraftmdsid = mdsid;

   IF engines > 0
   THEN
      BEGIN
         loops := 0;

         WHILE loops < engines
         LOOP
            SELECT COUNT (*)
              INTO tmpvar
              FROM aircraftenginedata
             WHERE aircraftid = aircraftidin AND enginenumber = loops + 1;

            IF (tmpvar = 0)
            THEN
               SELECT NVL (MAX (aircraftenginedata.enginedataid), 0)
                 INTO newrowid
                 FROM aircraftenginedata;

               INSERT INTO aircraftenginedata
                           (enginedataid, aircraftid, enginenumber
                           )
                    VALUES (newrowid + 1, aircraftidin, loops + 1
                           );
            END IF;

            loops := loops + 1;
         END LOOP;

         COMMIT;
      END;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END addaircraftenginedata;
 
 
 
 
 
 
 
 
@
