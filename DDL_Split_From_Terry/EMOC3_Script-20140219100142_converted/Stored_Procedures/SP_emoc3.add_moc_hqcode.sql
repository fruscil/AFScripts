--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_HQCODE" (
   hqcodein                hanger_queen_code.hqcode%TYPE,
   hqdescriptionin         hanger_queen_code.hqdescription%TYPE,
   hqlevelin               hanger_queen_code.hqlevel%TYPE,
   hqdefaultin             hanger_queen_code.hqdefault%TYPE,
   mocidin                 hanger_queen_code.mocid%TYPE,
   hqcodeid          OUT   hanger_queen_code.hqcodeid%TYPE
)
AS
   hq_level     INTEGER;
   hqlevelmax   INTEGER;
BEGIN
   IF hqlevelin = -1
   THEN
      hq_level := 0;

      SELECT MAX (hqlevel) + 1
        INTO hq_level
        FROM hanger_queen_code;
   ELSE
      hq_level := hqlevelin;
   END IF;

   IF hq_level > 99
   THEN
      hq_level := 0;
   END IF;

   SELECT seq_hangarqueen.NEXTVAL
     INTO hqcodeid
     FROM DUAL;

   INSERT INTO hanger_queen_code
               (hqcodeid, hqcode, hqdescription, hqlevel, hqdefault,
                mocid
               )
        VALUES (hqcodeid, hqcodein, hqdescriptionin, hq_level, hqdefaultin,
                mocidin
               );
END add_moc_hqcode;

 
 
 
 
 
 
 
 
@
