--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_RANGE" (
   RANGE                    VARCHAR2,
   rangedescription         ranges.rangedescription%TYPE,
   rangeid            OUT   ranges.rangeid%TYPE
)
AS
BEGIN
   SELECT seq_ranges.NEXTVAL
     INTO rangeid
     FROM DUAL;

   INSERT INTO ranges
               (rangeid, RANGE, rangedescription
               )
        VALUES (rangeid, RANGE, rangedescription
               );
END add_range;

 
 
 
 
 
 
 
 
@
