--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_POSSESSION" (
   possessioncode                possessions.possessioncode%TYPE,
   possessiondescription         possessions.possessiondescription%TYPE,
   defaultpossession             possessions.defaultpossession%TYPE,
   possessionid            OUT   possessions.possessionid%TYPE
)
AS
BEGIN
   SELECT seq_possessions.NEXTVAL
     INTO possessionid
     FROM DUAL;

   INSERT INTO possessions
               (possessionid, possessioncode, possessiondescription,
                defaultpossession
               )
        VALUES (possessionid, possessioncode, possessiondescription,
                defaultpossession
               );
END add_possession;

 
 
 
 
 
 
 
 
@
