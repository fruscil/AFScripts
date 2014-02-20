--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_RANK" (
   rankcode                ranks.rankcode%TYPE,
   rankdescription         ranks.rankdescription%TYPE,
   defaultrank             ranks.defaultrank%TYPE,
   rankid            OUT   ranks.rankid%TYPE
)
AS
BEGIN
   SELECT seq_ranks.NEXTVAL
     INTO rankid
     FROM DUAL;

   INSERT INTO ranks
               (rankid, rankcode, rankdescription, defaultrank
               )
        VALUES (rankid, rankcode, rankdescription, defaultrank
               );
END add_rank;

 
 
 
 
 
 
 
 
@
