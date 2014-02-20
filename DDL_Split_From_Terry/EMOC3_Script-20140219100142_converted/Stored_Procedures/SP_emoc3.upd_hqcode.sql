--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_HQCODE" (
   hqcodein          hanger_queen_code.hqcode%TYPE,
   hqdescriptionin   hanger_queen_code.hqdescription%TYPE,
   hqlevelin         hanger_queen_code.hqlevel%TYPE,
   hqdefaultin       hanger_queen_code.hqdefault%TYPE,
   hqcodeidin        hanger_queen_code.hqcodeid%TYPE
)
AS
BEGIN
   UPDATE hanger_queen_code
      SET hqcode = hqcodein,
          hqdescription = hqdescriptionin,
          hqlevel = hqlevelin,
          hqdefault = hqdefaultin
    WHERE hqcodeid = hqcodeidin;
END upd_hqcode;

 
 
 
 
 
 
 
 
@
