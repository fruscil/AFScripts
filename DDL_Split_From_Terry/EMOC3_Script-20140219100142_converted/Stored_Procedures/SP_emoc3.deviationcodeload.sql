--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DEVIATIONCODELOAD" (
   p_homeelc                  VARCHAR2,
   p_unitid                   VARCHAR2,
   p_deviationcode            VARCHAR2,
   p_deviationcodenarrative   VARCHAR2
)
IS
   tmpvar       NUMBER;
   mocidvar     NUMBER;
   wingidvar    NUMBER;
   coloridvar   NUMBER;
 /******************************************************************************
   NAME:       DeviationCodeLoad
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/18/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     DeviationCodeLoad
      Sysdate:         12/18/2006
      Date and Time:   12/18/2006, 3:57:14 PM, and 12/18/2006 3:57:14 PM
      Username:         (EMOC3)
      Table Name:       (DeviationcodeTrx)

******************************************************************************/
BEGIN
   INSERT INTO deviationcodetrx
               (deviationcodetrxid, homeenterpriselocationcode, unitid,
                deviationcode, deviationcodenarrative
               )
        VALUES (seq_deviationcodetrx.NEXTVAL, p_homeelc, p_unitid,
                p_deviationcode, p_deviationcodenarrative
               );

   COMMIT;

   SELECT wings.mocid, wingid
     INTO mocidvar, wingidvar
     FROM wings
    WHERE wings.elc = p_homeelc AND wings.unitid = p_unitid;

   SELECT MIN (colorid)
     INTO coloridvar
     FROM colors
    WHERE mocid = mocidvar;

   IF (mocidvar IS NOT NULL)
   THEN
      SELECT COUNT (*)
        INTO tmpvar
        FROM deviationcodes
       WHERE deviationcodes.mocid = mocidvar
         AND deviationcodes.deviationcode = p_deviationcode;

      IF (tmpvar = 0)
      THEN
         INSERT INTO deviationcodes
                     (deviationcodeid, deviationcode,
                      deviationdescription, defaultdeviationcode, camsinit,
                      mocid, colorid
                     )
              VALUES (seq_deviationcodes.NEXTVAL, p_deviationcode,
                      p_deviationcodenarrative, 0, SYSDATE,
                      mocidvar, coloridvar
                     );

         COMMIT;
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END deviationcodeload;
 
 
 
 
 
 
 
 
@
