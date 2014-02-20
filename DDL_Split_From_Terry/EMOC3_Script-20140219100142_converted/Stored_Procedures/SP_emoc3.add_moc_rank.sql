--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_RANK" (
   rankcode                ranks.rankcode%TYPE,
   rankdescription         ranks.rankdescription%TYPE,
   defaultrank             ranks.defaultrank%TYPE,
   mocidin                 ranks.mocid%TYPE,
   rankid            OUT   ranks.rankid%TYPE
)
AS
BEGIN
   SELECT seq_ranks.NEXTVAL
     INTO rankid
     FROM DUAL;

   INSERT INTO ranks
               (rankid, rankcode, rankdescription, defaultrank, mocid
               )
        VALUES (rankid, rankcode, rankdescription, defaultrank, mocidin
               );
END add_moc_rank;

 
 
 
 
 
 
 
 
@
