--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETUSERINTERFACELOGINDATA" (useridin     users.userid%TYPE,
                                                        squadronidin squadrons.squadronid%TYPE,
                                                        p_cursor     OUT emoc_types.emoc_cursor) AS
BEGIN
  OPEN p_cursor FOR
  -- RETURN THE CURSOR FOR THE USER RECORDSET
    SELECT users.userid,
           imdslogins.imdslogin camsuserid,
           emoc_security.decrypt(imdslogins.imdspassword) camspassword,
           imdslogins.imdsaccount camsaccount,
           imdslogins.imdsprojectid camsprojectid,
           imdslogins.imdsterminalid camsterminalid,
           users.portaluserid,
           emoc_security.decrypt(users.portalpassword) portalpassword,
           imdslogins.wingid
      FROM users, squadrons, imdslogins, emocconfig
     WHERE users.userid = useridin
       AND users.userid = imdslogins.userid
       AND squadronid = squadronidin
       AND squadrons.wingid = imdslogins.wingid;
END spgetuserinterfacelogindata;
 
 
 
 
 
 
 
 
@
