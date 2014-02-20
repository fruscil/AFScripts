--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_MOC" (
   moctitlein       moc.moctitle%TYPE,
   isactivein       INTEGER,
   lastupdatebyin   INTEGER,
   mocidin          INTEGER
)
AS
BEGIN
   UPDATE moc
      SET moctitle = moctitlein,
          isactive = isactivein,
          lastupdated = SYSDATE
    WHERE mocid = mocidin;
END upd_moc;

 
 
 
 
 
 
 
 
@
