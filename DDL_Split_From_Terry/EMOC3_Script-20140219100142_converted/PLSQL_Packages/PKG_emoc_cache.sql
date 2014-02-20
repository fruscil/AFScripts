--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_CACHE" IS
  -- REF CURSOR type for returning result sets from procedures
  TYPE ref_cur IS REF CURSOR;

  /* Get the change id by Moc Id */
  PROCEDURE getchangeid(p_tablename IN changenotification.cachedtablename%TYPE,
                        p_mocid     IN changenotification.mocid%TYPE,
                        p_cursor    OUT ref_cur);

  /* Get all change notifications */
  PROCEDURE getallchangenotifications(p_cursor OUT ref_cur);

  -- Update Change Notification By Moc Id
  PROCEDURE updatechangenotification(p_cachetablename IN changenotification.cachedtablename%TYPE,
                                     p_mocid          IN changenotification.mocid%TYPE);

  /* Get the global change id by table name */
  PROCEDURE getgblchangeid(p_tablename IN changenotification.cachedtablename%TYPE,
                           p_cursor    OUT ref_cur);

  /* Get all global change notifications */
  PROCEDURE getallgblchangenotifications(p_cursor OUT ref_cur);

  -- Update Global Change Notification By Table Name
  PROCEDURE updategblchangenotification(p_cachetablename IN changenotification.cachedtablename%TYPE);
END emoc_cache;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 47759
	Relative Current Chunk Line Number: 47759
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character '  END IF;\n  END updategblchangenotification;\nEND emoc_cache;\n\n[CREATE]'
------------

The following statement (from line 47673 to 47757) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_CACHE" AS
  /* Get the change id */
  PROCEDURE getchangeid(p_tablename IN changenotification.cachedtablename%TYPE,
                        p_mocid     IN changenotification.mocid%TYPE,
                        p_cursor    OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT changeid
        FROM changenotification
       WHERE cachedtablename = p_tablename
         AND mocid = p_mocid;
  END getchangeid;

  /* Get all change notofications */
  PROCEDURE getallchangenotifications(p_cursor OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.changeid, t.cachedtablename, mocid
        FROM changenotification t;
  END getallchangenotifications;

  /* Update the changeid when an insert or update takes place */
  PROCEDURE updatechangenotification(p_cachetablename IN changenotification.cachedtablename%TYPE,
                                     p_mocid          IN changenotification.mocid%TYPE) IS
    mocvalue INTEGER := 0;
  BEGIN
    -- query the db to see if a record exist for a given moc
    SELECT COUNT(*)
      INTO mocvalue
      FROM changenotification
     WHERE mocid = p_mocid
       AND cachedtablename = p_cachetablename;

    IF mocvalue > 0 THEN
      UPDATE changenotification t
         SET t.changeid = SYSDATE
       WHERE t.mocid = p_mocid
         AND t.cachedtablename = p_cachetablename;
    ELSE
      INSERT INTO changenotification
        (changeid, cachedtablename, mocid)
      VALUES
        (SYSDATE, p_cachetablename, p_mocid);
    END IF;
  END updatechangenotification;

  /* Get the global change id by table name */
  PROCEDURE getgblchangeid(p_tablename IN changenotification.cachedtablename%TYPE,
                           p_cursor    OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT changeid
        FROM globalchangenotification t
       WHERE t.cachedtablename = p_tablename;
  END getgblchangeid;

  /* Get all global change notofications */
  PROCEDURE getallgblchangenotifications(p_cursor OUT ref_cur) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.changeid, t.cachedtablename FROM globalchangenotification t;
  END getallgblchangenotifications;

  /* Update the global changeid when an insert or update takes place */
  PROCEDURE updategblchangenotification(p_cachetablename IN changenotification.cachedtablename%TYPE) IS
    v_TableName VARCHAR2(50);
  BEGIN
    -- query the db to see if a record exist for a given table
    SELECT t.cachedtablename
      INTO v_TableName
      FROM globalchangenotification t
     WHERE t.cachedtablename = p_cachetablename;

    IF v_TableName IS NOT NULL THEN
      UPDATE globalchangenotification t
         SET t.changeid = SYSDATE
       WHERE t.cachedtablename = p_cachetablename;
    ELSE
      INSERT INTO globalchangenotification
        (changeid, cachedtablename)
      VALUES
        (SYSDATE, p_cachetablename);
    END IF;
  END updategblchangenotification;
END emoc_cache@
