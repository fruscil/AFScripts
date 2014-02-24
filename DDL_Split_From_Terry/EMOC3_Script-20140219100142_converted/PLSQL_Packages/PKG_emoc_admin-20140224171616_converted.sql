--<ScriptOptions statementTerminator="@"/>

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /C:/Users/fjrWin7/IBM/rationalsdp/workspace/Oracle_to_DB2_02192014/DDL_Split_From_Terry/EMOC3_Script-20140219100142_converted/PLSQL_Packages/PKG_emoc_admin.sql
	Total Line Number: 175
	Relative Current Chunk Line Number: 175
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' emoc_admin;\n \n \n \n \n \n \n \n \n[@]'
------------

The following statement (from line 3 to 166) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE         "EMOC_ADMIN" AS
  TYPE countrycodecursor IS REF CURSOR;
  TYPE locationsextractcursor IS REF CURSOR;
  TYPE organizationsextractcursor IS REF CURSOR;
  TYPE workcentersextractcursor IS REF CURSOR;
  TYPE acutilcodesextractcursor IS REF CURSOR;
  TYPE assignmentcodesextractcursor IS REF CURSOR;
  TYPE causecodesextractcursor IS REF CURSOR;
  TYPE commandcodesextractcursor IS REF CURSOR;
  TYPE deviationcodesextractcursor IS REF CURSOR;
  TYPE geoloccodesextractcursor IS REF CURSOR;
  TYPE landingcodesextractcursor IS REF CURSOR;
  TYPE possessioncodesextractcursor IS REF CURSOR;
  TYPE whendisccodesextractcursor IS REF CURSOR;
  TYPE workunitcodesextractcursor IS REF CURSOR;
  TYPE acmdstypesesextractcursor IS REF CURSOR;
  TYPE basemapcursor IS REF CURSOR;
  TYPE checklistcursor IS REF CURSOR;

  /* Get Country Code By ID */
  PROCEDURE getcountrycodebyid(p_countrycode IN VARCHAR2,
                               p_cursor      OUT countrycodecursor);

  /* Get ALL Country Codes */
  PROCEDURE getallcountrycodes(p_cursor OUT countrycodecursor);

  /* Insert Country Code */
  PROCEDURE insertcountrycode(p_countrycode IN VARCHAR2,
                              p_countryname IN VARCHAR2,
                              pStatus       IN OUT NUMBER);

  /* Delete Country Code */
  PROCEDURE deletecountrycode(p_countrycode IN VARCHAR2);

  /* Update Country Code */
  PROCEDURE updatecountrycode(p_countrycode IN VARCHAR2,
                              p_countryname IN VARCHAR2);

  /* Get Number Of rows for  Country Code */
  PROCEDURE getCountryCodeRowCount(p_cursor OUT countrycodecursor);

  /* Generate Locations Extract By MOC Id */
  PROCEDURE getLocationsExtractByMocID(p_mocid  IN NUMBER,
                                       p_cursor OUT locationsextractcursor);

  /* Generate Organizations Extract By MOC Id */
  PROCEDURE getOrganizationsExtractByMocID(p_mocid  IN NUMBER,
                                           p_cursor OUT organizationsextractcursor);

  /* Generate Work Center Extract By MOC Id */
  PROCEDURE getWorkcentersExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT workcentersextractcursor);

  /* Generate Aircraft Utilization Codes Extract By MOC Id */
  PROCEDURE getAcUtilCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT acutilcodesextractcursor);

  /* Generate Aircraft Utilization Codes Extract By MOC Id */
  PROCEDURE getAssignCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT assignmentcodesextractcursor);

  /* Generate Cause Codes Extract By MOC Id */
  PROCEDURE getCauseCodesExtractByMocID(p_mocid  IN NUMBER,
                                        p_cursor OUT causecodesextractcursor);

  /* Generate Command Codes Extract By MOC Id */
  PROCEDURE getCommandCodesExtractByMocID(p_mocid  IN NUMBER,
                                          p_cursor OUT commandcodesextractcursor);

  /* Generate Deviation Codes Extract By MOC Id */
  PROCEDURE getDevCodesExtractByMocID(p_mocid  IN NUMBER,
                                      p_cursor OUT deviationcodesextractcursor);

  /* Generate GeoLoc Codes Extract By MOC Id */
  PROCEDURE getGeoLocCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT geoloccodesextractcursor);

  /* Generate Landing Codes Extract By MOC Id */
  PROCEDURE getLandingCodesExtractByMocID(p_mocid  IN NUMBER,
                                          p_cursor OUT landingcodesextractcursor);

  /* Generate Possession Codes Extract By MOC Id */
  PROCEDURE getPossCodesExtractByMocID(p_mocid  IN NUMBER,
                                       p_cursor OUT possessioncodesextractcursor);

  /* Generate When Discovered Codes Extract By MOC Id */
  PROCEDURE getWhenDiscCodesExtractByMocID(p_mocid  IN NUMBER,
                                           p_cursor OUT whendisccodesextractcursor);

  /* Generate Work Unit Codes Extract By MOC Id */
  PROCEDURE getWorkUnitCodesExtractByMocID(p_mocid         IN NUMBER,
                                           p_aircraftmdsid IN NUMBER,
                                           p_cursor        OUT workunitcodesextractcursor);

  /* Generate Aircraft MDS Types Extract By MOC Id */
  PROCEDURE getAcMdsTypesExtractByMocID(p_mocid  IN NUMBER,
                                        p_cursor OUT acmdstypesesextractcursor);

  /* Upload Checklist By MOC ID SP */
  PROCEDURE uploadChecklistByMocId(p_cacheTableName IN VARCHAR2,
                                   p_checklist      IN checklist.checklist%TYPE,
                                   p_title          IN checklist.checklisttitle%TYPE,
                                   p_mocid          IN checklist.mocid%TYPE,
                                   p_mimetype       IN checklist.mimetype%TYPE);

  /* Get Checklist By ID SP */
  PROCEDURE getByChecklistId(p_checklistid IN checklist.checklistid%TYPE,
                             p_cursor      OUT checklistcursor);

  /* Get Checklist By MOC ID SP */
  PROCEDURE getChecklistByMocId(p_mocid  IN checklist.mocid%TYPE,
                                p_cursor OUT checklistcursor);

  /* Delete Checklist By Checklist ID */
  PROCEDURE deleteByChecklistId(p_checklistid IN checklist.checklistid%TYPE);

  /* Delete Checklist By MOC ID */
  PROCEDURE deleteChecklistByMocId(p_mocid IN checklist.mocid%TYPE);

  /* Add User As MOC Admin By Full Name */
  PROCEDURE AddUserAsMocAdminByFullName(mocidin       moc.mocid%TYPE,
                                        pFullName     users.fullname%TYPE,
                                        pEmailAddress users.email%TYPE,
                                        pUserId       OUT users.userid%TYPE,
                                        mocadminidout OUT mocadmins.mocadminid%TYPE);

  /* Add User As MOC Admin By Email Address */
  PROCEDURE AddUserAsMocAdminByEmail(mocidin       moc.mocid%TYPE,
                                     pEmailAddress users.email%TYPE,
                                     pFullName     users.fullname%TYPE,
                                     pUserId       OUT users.userid%TYPE,
                                     mocadminidout OUT mocadmins.mocadminid%TYPE);

  ---------------
  -- FUNCTIONS --
  ---------------

  /* Get Country Codes Row Count */
  FUNCTION GetCountryCodesRowCount(pCountryCode VARCHAR2) RETURN NUMBER;

  /* Get User ID By FullName */
  FUNCTION GetUserIdByFullName(pFullName VARCHAR2, pEmailAddress VARCHAR2)
    RETURN NUMBER;

  /* Get User ID By Email Address */
  FUNCTION GetUserIdByEmailAddress(pEmailAddress VARCHAR2,
                                   pFullName     VARCHAR2) RETURN NUMBER;

  /* Upload Base Map By MOC ID SP */
  PROCEDURE UploadBaseMapByMocId(p_basemap  IN basemaps.mapobject%TYPE,
                                 p_mocid    IN basemaps.mocid%TYPE,
                                 p_mimetype IN basemaps.mimetype%TYPE);

  /* Get Base Map Row Count */
  FUNCTION GetBaseMapRowCount(p_modid basemaps.mocid%TYPE) RETURN NUMBER;

  /* Delete Base Map By MOC Id */
  PROCEDURE DeleteBaseMapByMocId(p_mocid basemaps.mocid%TYPE);

  /* Get Base Map By MOC Id */
  PROCEDURE GetBaseMapByMocId(p_mocid  basemaps.mocid%TYPE,
                              p_cursor OUT basemapcursor);

END emoc_admin;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /C:/Users/fjrWin7/IBM/rationalsdp/workspace/Oracle_to_DB2_02192014/DDL_Split_From_Terry/EMOC3_Script-20140219100142_converted/PLSQL_Packages/PKG_emoc_admin.sql
	Total Line Number: 547
	Relative Current Chunk Line Number: 547
	Column Number: 4
------------
 
-------------
Error Message
	Message: no viable alternative at character '     (mocadminidout, mocidin, vUserId);\n    [ELSE]'
------------

The following statement (from line 193 to 632) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_ADMIN" AS
  /* Get Country Code By ID */
  PROCEDURE getcountrycodebyid(p_countrycode IN VARCHAR2,
                               p_cursor      OUT countrycodecursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT countrycode, countryname, defaultcountry
        FROM countrycodes
       WHERE countrycode = p_countrycode;
  END getcountrycodebyid;

  /* Get All Country Codes */
  PROCEDURE getallcountrycodes(p_cursor OUT countrycodecursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT countrycode, countryname, defaultcountry FROM countrycodes;
  END getallcountrycodes;

  /* Insert Country Code */
  PROCEDURE insertcountrycode(p_countrycode IN VARCHAR2,
                              p_countryname IN VARCHAR2,
                              pStatus       IN OUT NUMBER) IS
    vRecordCount NUMBER;
  BEGIN
    vRecordCount := EMOC_ADMIN.GetCountryCodesRowCount(p_countryCode);

    IF (vRecordCount <= 0) THEN
      INSERT INTO countrycodes
      VALUES
        (UPPER(p_countrycode), p_countryname, 0);
    ELSE
      pStatus := -30; /* Error -30 indicates record exist */
    END IF;
  END insertcountrycode;

  /* Delete Country Code */
  PROCEDURE deletecountrycode(p_countrycode IN VARCHAR2) IS
  BEGIN
    DELETE FROM countrycodes WHERE countrycode = p_countrycode;
  END deletecountrycode;

  /* Update Country Code */
  PROCEDURE updatecountrycode(p_countrycode IN VARCHAR2,
                              p_countryname IN VARCHAR2) IS
  BEGIN
    UPDATE countrycodes
       SET countrycode = UPPER(p_countrycode), countryname = p_countryname
     WHERE countrycode = p_countrycode;
  END updatecountrycode;

  /* Get Number Of rows for  Country Code */
  PROCEDURE getCountryCodeRowCount(p_cursor OUT countrycodecursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT COUNT(*) FROM countrycodes;
  END getCountryCodeRowCount;

  /* Generate Locations Extract By MOC Id */
  PROCEDURE getLocationsExtractByMocID(p_mocid  IN NUMBER,
                                       p_cursor OUT locationsextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT locationcode,
             locationname,
             maximumoccupancy,
             defaultlocation,
             elc
        FROM locations
       WHERE mocid = p_mocid
       ORDER BY locationcode;
  END getLocationsExtractByMocID;

  /* Generate Organizations Extract By MOC Id */
  PROCEDURE getOrganizationsExtractByMocID(p_mocid  IN NUMBER,
                                           p_cursor OUT organizationsextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT orgname, orgid, unit_id, station_location_code
        FROM organizations
       WHERE mocid = p_mocid
       ORDER BY orgname;
  END getOrganizationsExtractByMocID;

  /* Generate Workcenters Extract By MOC Id */
  PROCEDURE getWorkcentersExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT workcentersextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT trim(workcentercode) AS work_center_id,
             trim(workcentername) AS work_center_name,
             (SELECT unit_id
                FROM wings
               WHERE wings.wingid = workcenters.wingid) AS unit_id,
             trim(porgid) AS organization_id
        FROM workcenters
       WHERE mocid = p_mocid
       ORDER BY workcentercode;
  END getWorkcentersExtractByMocID;

  /* Generate Aircraft Utilization Codes Extract By MOC Id */
  PROCEDURE getAcUtilCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT acutilcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT utilizationcode, aucnarrative, programelementcode
        FROM utilizationcodes
       WHERE mocid = p_mocid
       ORDER BY utilizationcode;
  END getAcUtilCodesExtractByMocID;

  /* Generate Aircraft Utilization Codes Extract By MOC Id */
  PROCEDURE getAssignCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT assignmentcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT assignmentcode, assignmentdescription, defaultassignment
        FROM assignmentcodes
       WHERE mocid = p_mocid
       ORDER BY assignmentcode;
  END getAssignCodesExtractByMocID;

  /* Generate Cause Codes Extract By MOC Id */
  PROCEDURE getCauseCodesExtractByMocID(p_mocid  IN NUMBER,
                                        p_cursor OUT causecodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT causecode, description, causecodetype, defaultcausecode
        FROM causecodes
       WHERE mocid = p_mocid
       ORDER BY causecode;
  END getCauseCodesExtractByMocID;

  /* Generate Command Codes Extract By MOC Id */
  PROCEDURE getCommandCodesExtractByMocID(p_mocid  IN NUMBER,
                                          p_cursor OUT commandcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT comid, comcode, majcomnarrative AS comnarr, majcom
        FROM majcoms
       WHERE mocid = p_mocid
       ORDER BY comid;
  END getCommandCodesExtractByMocID;

  /* Generate Deviation Codes Extract By MOC Id */
  PROCEDURE getDevCodesExtractByMocID(p_mocid  IN NUMBER,
                                      p_cursor OUT deviationcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT deviationcode,
             deviationdescription,
             defaultdeviationcode,
             deviationcodes.colorid,
             colors.colorname,
             colors.colorvalue
        FROM deviationcodes, colors
       WHERE deviationcodes.mocid = p_mocid
         AND deviationcodes.colorid = colors.colorid
       ORDER BY deviationcode;
  END getDevCodesExtractByMocID;

  /* Generate GeoLoc Codes Extract By MOC Id */
  PROCEDURE getGeoLocCodesExtractByMocID(p_mocid  IN NUMBER,
                                         p_cursor OUT geoloccodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT stationloc AS geoloc,
             stalocnarrative AS narrative,
             TO_CHAR(STARTDATE, 'MM/DD/YYYY') AS STARTDATE,
             TO_CHAR(STOPDATE, 'MM/DD/YYYY') AS STOPDATE
        FROM stationloccodes
       WHERE mocid = p_mocid
       ORDER BY stationloc;
  END getGeoLocCodesExtractByMocID;

  /* Generate Landing Codes Extract By MOC Id */
  PROCEDURE getLandingCodesExtractByMocID(p_mocid  IN NUMBER,
                                          p_cursor OUT landingcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT landingcode,
             landingcodedescription AS description,
             writeupneeded
        FROM landingcodes
       WHERE mocid = p_mocid
       ORDER BY landingcode;
  END getLandingCodesExtractByMocID;

  /* Generate Possession Codes Extract By MOC Id */
  PROCEDURE getPossCodesExtractByMocID(p_mocid  IN NUMBER,
                                       p_cursor OUT possessioncodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT possessioncode, possessiondescription, defaultpossession
        FROM possessions
       WHERE mocid = p_mocid
       ORDER BY possessioncode;
  END getPossCodesExtractByMocID;

  /* Generate When Discovered Codes Extract By MOC Id */
  PROCEDURE getWhenDiscCodesExtractByMocID(p_mocid  IN NUMBER,
                                           p_cursor OUT whendisccodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT wdc,
             wdcnarrative,
             TO_CHAR(STARTDATE, 'MM/DD/YYYY') AS STARTDATE,
             TO_CHAR(STOPDATE, 'MM/DD/YYYY') AS STOPDATE
        FROM whendiscoveredcodes
       WHERE mocid = p_mocid
       ORDER BY wdc;
  END getWhenDiscCodesExtractByMocID;

  /* Generate Work Unit Codes Extract By MOC Id */
  PROCEDURE getWorkUnitCodesExtractByMocID(p_mocid         IN NUMBER,
                                           p_aircraftmdsid IN NUMBER,
                                           p_cursor        OUT workunitcodesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT wuccode AS WUC_LCN,
             wucdescription AS NARRATIVE,
             TO_CHAR(WUCSTARTDATE, 'MM/DD/YYYY') AS START_DATE,
             TO_CHAR(WUCSTOPDATE, 'MM/DD/YYYY') AS STOP_DATE,
             aircraftmds AS MISSION_DESIGN_SERIES,
             a.blocknumber AS MDS_BLOCK_NUMBER
        FROM WUC a, aircraftmds
       ORDER BY aircraftmds, a.blocknumber, wuccode;
  END getWorkUnitCodesExtractByMocID;

  /* Generate Aircraft MDS Types Extract By MOC Id */
  PROCEDURE getAcMdsTypesExtractByMocID(p_mocid  IN NUMBER,
                                        p_cursor OUT acmdstypesesextractcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT acftmdstypecd, acftmdstypenm
        FROM acftmdstypes
       WHERE mocid = p_mocid
       ORDER BY acftmdstypenm;
  END getAcMdsTypesExtractByMocID;

  /* Upload Checklist By MOC ID SP */
  PROCEDURE uploadChecklistByMocId(p_cacheTableName IN VARCHAR2,
                                   p_checklist      IN checklist.checklist%TYPE,
                                   p_title          IN checklist.checklisttitle%TYPE,
                                   p_mocid          IN checklist.mocid%TYPE,
                                   p_mimetype       IN checklist.mimetype%TYPE) IS
  BEGIN
    INSERT INTO checklist
      (checklist, checklisttitle, mocid, mimetype)
    VALUES
      (p_checklist, p_title, p_mocid, p_mimetype);

    -- update the change id
    emoc_cache.updateChangeNotification(p_cachetablename => p_cacheTableName,
                                        p_mocid          => p_mocid);

  END uploadChecklistByMocId;

  /* Get Checklist By ID SP */
  PROCEDURE getByChecklistId(p_checklistid IN checklist.checklistid%TYPE,
                             p_cursor      OUT checklistcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.checklistid,
             t.checklist,
             t.checklisttitle,
             TO_CHAR(t.dateuploaded, 'dd-MON-yyyy') AS dateuploaded,
             t.mocid,
             t.mimetype
        FROM checklist t
       WHERE t.checklistid = p_checklistid;
  END getByChecklistId;

  /* Get Checklist By MOC ID SP */
  PROCEDURE getChecklistByMocId(p_mocid  IN checklist.mocid%TYPE,
                                p_cursor OUT checklistcursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.checklistid,
             t.checklist,
             t.checklisttitle,
             TO_CHAR(t.dateuploaded, 'dd-MON-yyyy') AS dateuploaded,
             t.mocid,
             t.mimetype
        FROM checklist t
       WHERE t.mocid = p_mocid
       ORDER BY t.checklisttitle;
  END getChecklistByMocId;

  /* Delete Checklist By Checklist ID */
  PROCEDURE deleteByChecklistId(p_checklistid IN checklist.checklistid%TYPE) IS
  BEGIN
    DELETE FROM checklist t WHERE t.checklistid = p_checklistid;
  END deleteByChecklistId;

  /* Delete Checklist By MOC ID */
  PROCEDURE deleteChecklistByMocId(p_mocid IN checklist.mocid%TYPE) IS
  BEGIN
    DELETE FROM checklist t WHERE t.mocid = p_mocid;
  END deleteChecklistByMocId;

  /* Add User As MOC Admin By Full Name */
  PROCEDURE AddUserAsMocAdminByFullName(mocidin       moc.mocid%TYPE,
                                        pFullName     users.fullname%TYPE,
                                        pEmailAddress users.email%TYPE,
                                        pUserId       OUT users.userid%TYPE,
                                        mocadminidout OUT mocadmins.mocadminid%TYPE) IS
    recid   INTEGER := 0;
    vUserId NUMBER;
  BEGIN
    vUserId := EMOC_ADMIN.GetUserIdByFullName(pFullName, pEmailAddress);

    SELECT COUNT(*)
      INTO recid
      FROM mocadmins
     WHERE mocid = mocidin
       AND userid = vUserId;

    IF (recid = 0) THEN
      SELECT seq_mocadmin.NEXTVAL INTO mocadminidout FROM DUAL;

      INSERT INTO mocadmins
        (mocadminid, mocid, userid)
      VALUES
        (mocadminidout, mocidin, vUserId);
    ELSE
      mocadminidout := recid;
    END IF;
    pUserId := vUserId;
  END;

  /* Add User As MOC Admin By Email Address */
  PROCEDURE AddUserAsMocAdminByEmail(mocidin       moc.mocid%TYPE,
                                     pEmailAddress users.email%TYPE,
                                     pFullName     users.fullname%TYPE,
                                     pUserId       OUT users.userid%TYPE,
                                     mocadminidout OUT mocadmins.mocadminid%TYPE) IS
    recid   INTEGER := 0;
    vUserId NUMBER;
  BEGIN
    vUserId := EMOC_ADMIN.GetUserIdByEmailAddress(pEmailAddress, pFullName);

    SELECT COUNT(*)
      INTO recid
      FROM mocadmins
     WHERE mocid = mocidin
       AND userid = vUserId;

      INSERT INTO mocadmins
    IF (recid = 0) THEN
      SELECT seq_mocadmin.NEXTVAL INTO mocadminidout FROM DUAL;

        (mocadminid, mocid, userid)
      VALUES
        (mocadminidout, mocidin, vUserId);
    ELSE
      mocadminidout := recid;
    END IF;
    pUserId := vUserId;
  END;

  ---------------
  -- FUNCTIONS --
  ---------------

  /* Get Country Codes Row Count */
  FUNCTION GetCountryCodesRowCount(pCountryCode VARCHAR2) RETURN NUMBER AS
    vRecordCount NUMBER;
  BEGIN
    SELECT COUNT(*)
      INTO vRecordCount
      FROM countrycodes a
     WHERE a.countrycode = pCountryCode;

    RETURN vRecordCount;
  END;

  /* Get User ID By FullName */
  FUNCTION GetUserIdByFullName(pFullName VARCHAR2, pEmailAddress VARCHAR2)
    RETURN NUMBER AS
    vUserId NUMBER;
  BEGIN
    SELECT t.userid
      INTO vUserId
      FROM users t
     WHERE t.fullname = pFullName
       AND t.email = pEmailAddress;
    RETURN vUserId;
  END;

  /* Get User ID By Email Address */
  FUNCTION GetUserIdByEmailAddress(pEmailAddress VARCHAR2,
                                   pFullName     VARCHAR2) RETURN NUMBER AS
    vUserId NUMBER;
  BEGIN
    SELECT t.userid
      INTO vUserId
      FROM users t
     WHERE t.email = pEmailAddress
       AND t.fullname = pFullName;
    RETURN vUserId;
  END;

  /* Upload BaseMap By MOC ID SP */
  PROCEDURE UploadBaseMapByMocId(p_basemap  IN basemaps.mapobject%TYPE,
                                 p_mocid    IN basemaps.mocid%TYPE,
                                 p_mimetype IN basemaps.mimetype%TYPE) IS
  BEGIN
    INSERT INTO basemaps
      (mapobject, mocid, mimetype)
    VALUES
      (p_basemap, p_mocid, p_mimetype);

  END UploadBaseMapByMocId;

  /* Get Base Map Row Count */
  FUNCTION GetBaseMapRowCount(p_modid basemaps.mocid%TYPE) RETURN NUMBER AS
    vRecordCount NUMBER;
  BEGIN
    SELECT COUNT(*)
      INTO vRecordCount
      FROM basemaps t
     WHERE t.mocid = p_modid;
    RETURN vRecordCount;
  END GetBaseMapRowCount;

  /* Delete Base Map By MOC Id */
  PROCEDURE DeleteBaseMapByMocId(p_mocid basemaps.mocid%TYPE) AS
  BEGIN
    DELETE basemaps t WHERE t.mocid = p_mocid;
  END DeleteBaseMapByMocId;

  /* Get Base Map By MOC Id */
  PROCEDURE GetBaseMapByMocId(p_mocid  basemaps.mocid%TYPE,
                              p_cursor OUT basemapcursor) AS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.mapobject FROM basemaps t WHERE t.mocid = p_mocid;
  END GetBaseMapByMocId;

END emoc_admin@
/*DCW-ERROR GRAMMAR END*/
