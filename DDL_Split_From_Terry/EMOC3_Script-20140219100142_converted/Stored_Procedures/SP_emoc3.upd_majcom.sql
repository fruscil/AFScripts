--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MAJCOM" (
   majcomin            majcoms.majcom%TYPE,
   majcomnarrativein   majcoms.majcomnarrative%TYPE,
   comidin             majcoms.comid%TYPE,
   comcodein           majcoms.comcode%TYPE,
   majcomidin          majcoms.majcomid%TYPE,
   lastupdatebyin      INTEGER
)
AS
BEGIN
   UPDATE majcoms
      SET majcom = majcomin,
          majcomnarrative = majcomnarrativein,
          comid = comidin,
          comcode = comcodein,
          lastupdate = SYSDATE,
          lastupdateby = lastupdatebyin
    WHERE majcomid = majcomidin;
END upd_majcom;

 
 
 
 
 
 
 
 
@
