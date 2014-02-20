--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_WING" (
   wingnamein       wings.wingname%TYPE,
   unitidin         wings.unitid%TYPE,
   commandcodein    wings.commandcode%TYPE,
   elcin            wings.elc%TYPE,
   defaultwingin    INTEGER,
   lastupdatebyin   INTEGER,
   wingidin         wings.wingid%TYPE
)
AS
   counter1     INTEGER;
   defaultval   INTEGER;
BEGIN
   defaultval := defaultwingin;

   IF defaultval = 0
   THEN
      SELECT COUNT (*)
        INTO counter1
        FROM wings
       WHERE defaultwing = 1 AND wingid != wingidin;

      IF counter1 = 0
      THEN
         defaultval := 1;
      END IF;
   END IF;

   UPDATE wings
      SET wingname = wingnamein,
          unitid = unitidin,
          commandcode = commandcodein,
          elc = elcin,
          defaultwing = defaultval,
          lastupdate = SYSDATE
    WHERE wingid = wingidin;
END upd_wing;

 
 
 
 
 
 
 
 
@
