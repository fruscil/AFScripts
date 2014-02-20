--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_POSSESSION" (
   possessioncode                possessions.possessioncode%TYPE,
   possessiondescription         possessions.possessiondescription%TYPE,
   defaultpossession             possessions.defaultpossession%TYPE,
   mocidin                       possessions.mocid%TYPE,
   possessionid            OUT   possessions.possessionid%TYPE
)
AS
BEGIN
   SELECT seq_possessions.NEXTVAL
     INTO possessionid
     FROM DUAL;

   INSERT INTO possessions
               (possessionid, possessioncode, possessiondescription,
                defaultpossession, mocid
               )
        VALUES (possessionid, possessioncode, possessiondescription,
                defaultpossession, mocidin
               );
END add_moc_possession;

 
 
 
 
 
 
 
 
@
