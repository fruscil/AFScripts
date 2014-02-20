--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_WING" (
   wingnamein             wings.wingname%TYPE,
   unitidin               wings.unitid%TYPE,
   commandcodein          wings.commandcode%TYPE,
   elcin                  wings.elc%TYPE,
   defaultwingin          INTEGER,
   lastupdatebyin         INTEGER,
   scheduledowin          wings.scheduledow%TYPE,
   scheduletimein         wings.scheduletime%TYPE,
   wingidout        OUT   wings.wingid%TYPE
)
AS
BEGIN
   SELECT seq_wings.NEXTVAL
     INTO wingidout
     FROM DUAL;

   INSERT INTO wings
               (wingid, wingname, unitid, commandcode, elc,
                lastupdate, lastupdateby, scheduledow, scheduletime
               )
        VALUES (wingidout, wingnamein, unitidin, commandcodein, elcin,
                SYSDATE, lastupdatebyin, scheduledowin, scheduletimein
               );
END add_wing;

 
 
 
 
 
 
 
 
@
