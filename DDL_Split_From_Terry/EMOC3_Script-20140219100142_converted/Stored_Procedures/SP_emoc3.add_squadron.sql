--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_SQUADRON" (
   squadronnamein            squadrons.squadronname%TYPE,
   shortnamein               squadrons.shortname%TYPE,
   wingidin                  squadrons.wingid%TYPE,
   coloridin                 squadrons.colorid%TYPE,
   organizationsidin         squadrons.organizationsid%TYPE,
   camsinitflag              INTEGER,
   squadronid          OUT   squadrons.squadronid%TYPE
)
AS
BEGIN
   SELECT seq_squadrons.NEXTVAL
     INTO squadronid
     FROM DUAL;

   INSERT INTO squadrons
               (squadronid, squadronname, shortname, wingid, colorid,
                organizationsid
               )
        VALUES (squadronid, squadronnamein, shortnamein, wingidin, coloridin,
                organizationsidin
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE squadrons
         SET camsinit = SYSDATE
       WHERE squadronid = squadronid;
   END IF;
END add_squadron;

 
 
 
 
 
 
 
 
@
