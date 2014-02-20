--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_UTILIZATIONCODES" AS

  /* Add Aircraft Utilization Code */

  PROCEDURE AddAircraftUtilCode(aucin          utilizationcodes.utilizationcode%TYPE,

                                aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                pecin          utilizationcodes.programelementcode%TYPE,

                                mdsin          utilizationcodes.missiondesignseries%TYPE,

                                camsinitin     INTEGER,

                                utilcodeid     OUT utilizationcodes.utilcodeid%TYPE);

  /* Add Aircraft Utilization Code By Moc Id */

  PROCEDURE AddAircraftUtilCodeByMocId(aucin          utilizationcodes.utilizationcode%TYPE,

                                       aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                       pecin          utilizationcodes.programelementcode%TYPE,

                                       mdsin          utilizationcodes.missiondesignseries%TYPE,

                                       camsinitin     INTEGER,

                                       mocidin        utilizationcodes.mocid%TYPE,

                                       utilcodeid     OUT utilizationcodes.utilcodeid%TYPE);

  /* Check if a record exist */

  FUNCTION CheckIfRecordExist(p_utilizationcode     VARCHAR2,

                              p_utilcodeid          NUMBER,

                              p_missiondesignseries VARCHAR2,

                              p_moocid              NUMBER) RETURN NUMBER;
         
/* Check if a record exist */

  FUNCTION CheckForDuplicate(p_utilizationcode     VARCHAR2,

                             p_missiondesignseries VARCHAR2,

                              p_moocid              NUMBER) RETURN NUMBER;

  /* Delete Utilization Code by Id */

  PROCEDURE DeleteUtilCodeById(p_utilcodeid utilizationcodes.utilcodeid%TYPE);

  /* Get Row Count By Moc Id */

  FUNCTION GetRowCountByMocId(p_mocid NUMBER) RETURN NUMBER;

  /* Get Schedule Row Count By Utilization Code Id */

  FUNCTION GetSchRowCountByUtilCodeId(p_utilcodeid NUMBER) RETURN NUMBER;

  /* Get Row Count */

  FUNCTION GetRowCount RETURN NUMBER;

  /* Update Aircraft Utilization Code By Utilization Code Id */

  PROCEDURE UpdateACUtilCodeById(aucin          utilizationcodes.utilizationcode%TYPE,

                                 aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                 pecin          utilizationcodes.programelementcode%TYPE,

                                 mdsin          utilizationcodes.missiondesignseries%TYPE,

                                 utilcodeidin   utilizationcodes.utilcodeid%TYPE);

END Emoc_UtilizationCodes;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 48284
	Relative Current Chunk Line Number: 48284
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '  COMMIT;\n\n  END UpdateACUtilCodeById;\n\nEND Emoc_UtilizationCodes;\n\n[CREATE]'
------------

The following statement (from line 48023 to 48282) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_UTILIZATIONCODES" AS

  /* Add Aircraft Utilization Code */

  PROCEDURE AddAircraftUtilCode(aucin          utilizationcodes.utilizationcode%TYPE,

                                aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                pecin          utilizationcodes.programelementcode%TYPE,

                                mdsin          utilizationcodes.missiondesignseries%TYPE,

                                camsinitin     INTEGER,

                                utilcodeid     OUT utilizationcodes.utilcodeid%TYPE) AS

  BEGIN

    SELECT seq_utilcodes.NEXTVAL INTO utilcodeid FROM DUAL;



    INSERT INTO utilizationcodes

      (utilcodeid,

       utilizationcode,

       aucnarrative,

       programelementcode,

       missiondesignseries)

    VALUES

      (utilcodeid, aucin, aucnarrativein, pecin, mdsin);

    COMMIT;

    IF (camsinitin = 1) THEN

      UPDATE utilizationcodes

         SET camsinit = SYSDATE

       WHERE utilcodeid = utilcodeid;

    END IF;

  END AddAircraftUtilCode;

  /* Add Aircraft Utilization Code By Moc Id */

  PROCEDURE AddAircraftUtilCodeByMocId(aucin          utilizationcodes.utilizationcode%TYPE,

                                       aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                       pecin          utilizationcodes.programelementcode%TYPE,

                                       mdsin          utilizationcodes.missiondesignseries%TYPE,

                                       camsinitin     INTEGER,

                                       mocidin        utilizationcodes.mocid%TYPE,

                                       utilcodeid     OUT utilizationcodes.utilcodeid%TYPE) AS

  BEGIN

    SELECT seq_utilcodes.NEXTVAL INTO utilcodeid FROM DUAL;

    INSERT INTO utilizationcodes

      (utilcodeid,

       utilizationcode,

       aucnarrative,

       programelementcode,

       mocid,

       missiondesignseries)

    VALUES

      (utilcodeid, aucin, aucnarrativein, pecin, mocidin, mdsin);

    IF (camsinitin = 1) THEN

      UPDATE utilizationcodes

         SET camsinit = SYSDATE

       WHERE utilcodeid = utilcodeid;

    END IF;

  END AddAircraftUtilCodeByMocId;

  /* Check if a record exist */

  FUNCTION CheckIfRecordExist(p_utilizationcode     VARCHAR2,

                              p_utilcodeid          NUMBER,

                              p_missiondesignseries VARCHAR2,

                              p_moocid              NUMBER) RETURN NUMBER AS

    vRecordCount NUMBER;

  BEGIN

    Select count(*)

      INTO vRecordCount

      FROM utilizationCodes t

     where t.utilizationcode = p_utilizationcode

       and t.utilcodeid <> p_utilcodeid

       and t.missiondesignseries = p_missiondesignseries

       and t.mocid = p_moocid;

    return vRecordCount;

  END CheckIfRecordExist;

  
  /* Check if a record exist */

  FUNCTION CheckForDuplicate(p_utilizationcode     VARCHAR2,

                             p_missiondesignseries VARCHAR2,

                              p_moocid              NUMBER) RETURN NUMBER AS

    vRecordCount NUMBER;

  BEGIN

    Select count(*)

      INTO vRecordCount

      FROM utilizationCodes t

     where t.utilizationcode = p_utilizationcode

       and t.missiondesignseries = p_missiondesignseries

       and t.mocid = p_moocid;

    return vRecordCount;

  END CheckForDuplicate;
  
  /* Delete Utilization Code by Id */

  PROCEDURE DeleteUtilCodeById(p_utilcodeid utilizationcodes.utilcodeid%TYPE) AS

  BEGIN

    delete UtilizationCodes t where t.utilcodeid = p_utilcodeid;

  END DeleteUtilCodeById;

  /* Get Row Count By Moc Id */

  FUNCTION GetRowCountByMocId(p_mocid NUMBER) return NUMBER AS

    vRecordCount NUMBER;

  BEGIN

    Select count(*)

      INTO vRecordCount

      from utilizationcodes t

     where t.mocid = p_mocid;

    return vRecordCount;

  END GetRowCountByMocId;

  /* Get Schedule Row Count By Utilization Code Id */

  FUNCTION GetSchRowCountByUtilCodeId(p_utilcodeid NUMBER) return NUMBER AS

    vRecordCount NUMBER;

  BEGIN

    Select count(*)

      INTO vRecordCount

      from schedule t

     where t.utilcodeid = p_utilcodeid;

    return vRecordCount;

  END GetSchRowCountByUtilCodeId;

  /* Get Row Count */

  FUNCTION GetRowCount return NUMBER AS

    vRecordCount NUMBER;

  BEGIN

    Select count(*) INTO vRecordCount from utilizationcodes t;

    return vRecordCount;

  END GetRowCount;

  /* Update Aircraft Utilization Code By Utilization Code Id */

  PROCEDURE UpdateACUtilCodeById(aucin          utilizationcodes.utilizationcode%TYPE,

                                 aucnarrativein utilizationcodes.aucnarrative%TYPE,

                                 pecin          utilizationcodes.programelementcode%TYPE,

                                 mdsin          utilizationcodes.missiondesignseries%TYPE,

                                 utilcodeidin   utilizationcodes.utilcodeid%TYPE) AS

  BEGIN

    UPDATE utilizationcodes

       SET utilizationcode     = aucin,

           aucnarrative        = aucnarrativein,

           programelementcode  = pecin,

           missiondesignseries = mdsin,

           lastupdate          = SYSDATE

     WHERE utilcodeid = utilcodeidin;

    COMMIT;

  END UpdateACUtilCodeById;

END Emoc_UtilizationCodes@
