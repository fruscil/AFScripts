--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_SQUADID_BY_OWC" (
   owcin           VARCHAR2,
   mocidin         NUMBER,
   squadid   OUT   NUMBER
)
AS
   porgidvar       VARCHAR2(4);
   workcentervar   VARCHAR2(50);
   tmpvar          NUMBER;
   /******************************************************************************
   NAME:       GET_SQUADID_BY_OWNINGWORKCENTER
   PURPOSE:

   REVISIONS:
   Ver        Date        Author  Description
   ---------  ----------  ------- ------------------------------------------------
   1.0        2/5/2007    RWM     1. Created this procedure.
   1.1        11/12/09    JWC     1. Fix for AC disappearing from MOC. QC 399
   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     GET_SQUADID_BY_OWNINGWORKCENTER
      Sysdate:         2/05/2007
      Date and Time:   2/05/2007
      Username:         emoc3)
      Table Name:       WORKCENTERS, SQUADRONS)

***********************************************************************************/
BEGIN
   SELECT COUNT (*)
     INTO tmpvar
     FROM workcenters
    WHERE workcentercode = owcin;

   IF tmpvar > 0
   THEN
      SELECT porgid, workcentername
        INTO porgidvar, workcentervar
        FROM (SELECT porgid, workcentername
                FROM workcenters
               WHERE workcentercode = owcin AND mocid = mocidin AND ROWNUM < 2);

      SELECT COUNT (*)
        INTO tmpvar
        FROM squadrons
       WHERE mocid = mocidin AND (organization_id = porgidvar
          OR squadronname = workcentervar
          OR shortname = owcin);

      IF tmpvar > 0
      THEN
         SELECT squadronid
           INTO squadid
           FROM (SELECT squadronid
                   FROM squadrons
                  WHERE mocid = mocidin AND (   organization_id = porgidvar
                         OR squadronname = workcentervar
                         OR shortname = owcin
                        )
                    AND ROWNUM < 2);
      ELSE
         squadid := NULL;
      END IF;
   ELSE
      squadid := NULL;
   END IF;
--EXCEPTION
 --  WHEN NO_DATA_FOUND
  -- THEN
  --    NULL;
 --  WHEN OTHERS
 --  THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END get_squadid_by_owc;
 
@
