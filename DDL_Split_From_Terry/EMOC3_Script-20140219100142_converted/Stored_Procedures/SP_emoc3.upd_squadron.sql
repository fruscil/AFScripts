--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_SQUADRON" (
   squadronnamein      squadrons.squadronname%TYPE,
   shortnamein         squadrons.shortname%TYPE,
   wingidin            squadrons.wingid%TYPE,
   coloridin           squadrons.colorid%TYPE,
   organizationsidin   squadrons.organizationsid%TYPE,
   squadronidin        squadrons.squadronid%TYPE
)
AS
BEGIN
   UPDATE squadrons
      SET squadronname = squadronnamein,
          shortname = shortnamein,
          wingid = wingidin,
          colorid = coloridin,
          organizationsid = organizationsidin
    WHERE squadronid = squadronidin;
END upd_squadron;

 
 
 
 
 
 
 
 
@
