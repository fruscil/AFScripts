--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_MAJCOM" (
   majcomin                  majcoms.majcom%TYPE,
   majcomnarrativein         majcoms.majcomnarrative%TYPE,
   comidin                   majcoms.comid%TYPE,
   comcodein                 majcoms.comcode%TYPE,
   camsinitflag              INTEGER,
   lastupdatebyin            INTEGER,
   mocidin                   majcoms.mocid%TYPE,
   majcomid            OUT   majcoms.majcomid%TYPE
)
AS
BEGIN
   SELECT seq_majcoms.NEXTVAL
     INTO majcomid
     FROM DUAL;

   INSERT INTO majcoms
               (majcomid, majcom, majcomnarrative, comid, comcode,
                lastupdateby, lastupdate, mocid
               )
        VALUES (majcomid, majcomin, majcomnarrativein, comidin, comcodein,
                lastupdatebyin, SYSDATE, mocidin
               );

   IF (camsinitflag = 1)
   THEN
      UPDATE majcoms
         SET camsinit = SYSDATE
       WHERE majcomid = majcomid;
   END IF;
END add_moc_majcom;

 
 
 
 
 
 
 
 
@
