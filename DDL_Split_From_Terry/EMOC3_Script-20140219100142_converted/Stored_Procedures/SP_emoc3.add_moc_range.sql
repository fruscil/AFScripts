--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_RANGE" (
   RANGE                    VARCHAR2,
   rangedescription         ranges.rangedescription%TYPE,
   mocidin                  ranges.mocid%TYPE,
   rangeid            OUT   ranges.rangeid%TYPE
)
AS
BEGIN
   SELECT seq_ranges.NEXTVAL
     INTO rangeid
     FROM DUAL;

   INSERT INTO ranges
               (rangeid, RANGE, rangedescription, mocid
               )
        VALUES (rangeid, RANGE, rangedescription, mocidin
               );
END add_moc_range;

 
 
 
 
 
 
 
 
@
