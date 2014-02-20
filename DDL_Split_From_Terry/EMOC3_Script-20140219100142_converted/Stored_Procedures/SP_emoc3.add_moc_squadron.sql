--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_SQUADRON" (
   squadronnamein            squadrons.squadronname%TYPE,
   shortnamein               squadrons.shortname%TYPE,
   wingidin                  squadrons.wingid%TYPE,
   coloridin                 squadrons.colorid%TYPE,
   organizationsidin         squadrons.organizationsid%TYPE,
   camsinitflag              INTEGER,
   mocidin                   squadrons.mocid%TYPE,
   squadronid          OUT   squadrons.squadronid%TYPE
)
AS
BEGIN
   SELECT seq_squadrons.NEXTVAL
     INTO squadronid
     FROM DUAL;

   INSERT INTO squadrons
               (squadronid, squadronname, shortname, wingid, colorid,
                organizationsid, mocid
               )
        VALUES (squadronid, squadronnamein, shortnamein, wingidin, coloridin,
                organizationsidin, mocidin
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE squadrons
         SET camsinit = SYSDATE
       WHERE squadronid = squadronid;
   END IF;
END add_moc_squadron;

 
 
 
 
 
 
 
 
@
