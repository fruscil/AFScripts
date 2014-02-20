--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTAUCTRX" (p_fromelc      VARCHAR2,
                                         p_fromunitid   VARCHAR2,
                                         p_auc          VARCHAR2,
                                         p_aucnarrative VARCHAR2,
                                         p_mds          VARCHAR2,
                                         p_pec          VARCHAR2) AS
  tmpvar NUMBER;
  /******************************************************************************
     NAME:       InsertAUCTrx
     PURPOSE:

     REVISIONS:
     Ver        Date        Author           Description
     ---------  ----------  ---------------  ------------------------------------
     1.0        12/24/2006  r mcbride        1. Created this procedure.

     NOTES:

     Automatically available Auto Replace Keywords:
        Object Name:     InsertAUCTrx
        Sysdate:         12/24/2006
        Date and Time:   12/24/2006, 10:38:46 AM, and 12/24/2006 10:38:46 AM
        Username:         (set in TOAD Options, Procedure Editor)
        Table Name:       (set in the "New PL/SQL Object" dialog)

  ******************************************************************************/
BEGIN
  INSERT INTO utilizationcodetrx
    (utilizationcodetrxid,
     fromenterpriselocationcode,
     fromunitid,
     aircraftutilizationcode,
     aucnarrative,
     missiondesignseries,
     programelementcode,
     dateprocessed)
  VALUES
    (seq_utilizationcodetrx.NEXTVAL,
     p_fromelc,
     p_fromunitid,
     p_auc,
     p_aucnarrative,
     p_mds,
     p_pec,
     SYSDATE);

  COMMIT;

  IF (LENGTH(p_auc) > 0) THEN
    SELECT COUNT(*)
      INTO tmpvar
      FROM utilizationcodes
     WHERE utilizationcode = p_auc;

    IF (tmpvar = 0) THEN
      INSERT INTO utilizationcodes
        (utilcodeid,
         utilizationcode,
         aucnarrative,
         programelementcode,
         camsinit,
         mocid,
         missiondesignseries)
      VALUES
        (seq_utilcodes.NEXTVAL,
         p_auc,
         p_aucnarrative,
         p_pec,
         SYSDATE,
         0,
         p_mds);

      COMMIT;
    ELSE
      SELECT utilcodeid
        INTO tmpvar
        FROM (SELECT utilcodeid
                FROM utilizationcodes
               WHERE utilizationcode = p_auc
                 AND missiondesignseries = p_mds
                 AND ROWNUM <= 1);

      IF tmpvar IS NOT NULL THEN
        emoc_utilizationcodes.UpdateACUtilCodeById(p_auc,
                                                   p_aucnarrative,
                                                   p_pec,
                                                   p_mds,
                                                   tmpvar);
      END IF;
    END IF;
  END IF;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    NULL;
  WHEN OTHERS THEN
    -- Consider logging the error and then re-raise
    RAISE;
END insertauctrx;
 
 
 
 
 
 
 
 
@
