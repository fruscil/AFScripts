--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_RANK" (
   rankidin         ranks.rankid%TYPE,
   RANK       OUT   ranks.rankcode%TYPE
)
AS
BEGIN
   SELECT rankcode
     INTO RANK
     FROM ranks
    WHERE ranks.rankid = rankidin;
END get_rank;

 
 
 
 
 
 
 
 
@
