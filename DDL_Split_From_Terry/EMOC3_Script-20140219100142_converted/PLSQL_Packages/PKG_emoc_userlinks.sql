--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_USERLINKS" AS
  TYPE userlinkscursor IS REF CURSOR;

  /* Get UserImages By User ID */
  PROCEDURE getbyuserid(p_userid IN userlinks.enteredby%TYPE,
                        p_cursor OUT userlinkscursor);

  PROCEDURE add_user_link(linktitlein       userlinks.linktitle%TYPE,
                          linkurlin         userlinks.linkurl%TYPE,
                          linkdescriptionin userlinks.linkdescription%TYPE,
                          enteredbyin       userlinks.enteredby%TYPE,
                          linkorderin       userlinks.linkorder%TYPE,
                          linkid            OUT userlinks.linkid%TYPE);

  PROCEDURE get_user_links(p_cursor OUT emoc_types.emoc_cursor,
                           userid   userlinks.enteredby%TYPE);

  PROCEDURE update_user_link(linktitlein       userlinks.linktitle%TYPE,
                             linkurlin         userlinks.linkurl%TYPE,
                             linkdescriptionin userlinks.linkdescription%TYPE,
                             linkorderin       userlinks.linkorder%TYPE,
                             linkidin          userlinks.linkid%TYPE);

  FUNCTION get_user_links_count_by_userid(p_userid NUMBER) RETURN NUMBER;

  PROCEDURE delete_user_Link_by_linkid(p_linkid userlinks.linkid%TYPE);
END emoc_userlinks;
 
 
 
 
 
 
 
 
@

/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 47988
	Relative Current Chunk Line Number: 47988
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character 'linkid = p_linkid;\n  END delete_user_Link_by_linkid;\nEND emoc_userlinks;\n\n[CREATE]'
------------

The following statement (from line 47908 to 47986) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_USERLINKS" AS
  /* Get UserImages By User ID */
  PROCEDURE getbyuserid(p_userid IN userlinks.enteredby%TYPE,
                        p_cursor OUT userlinkscursor) IS
  BEGIN
    OPEN p_cursor FOR
      SELECT t.linkid, t.linkurl, t.linktitle
        FROM userlinks t
       WHERE t.enteredby = p_userid;
  END getbyuserid;

  PROCEDURE add_user_link(linktitlein       userlinks.linktitle%TYPE,
                          linkurlin         userlinks.linkurl%TYPE,
                          linkdescriptionin userlinks.linkdescription%TYPE,
                          enteredbyin       userlinks.enteredby%TYPE,
                          linkorderin       userlinks.linkorder%TYPE,
                          linkid            OUT userlinks.linkid%TYPE) AS
  BEGIN
    SELECT seq_userlinks.NEXTVAL INTO linkid FROM DUAL;

    INSERT INTO userlinks
      (linkid, linktitle, linkurl, linkdescription, enteredby, linkorder)
    VALUES
      (linkid,
       linktitlein,
       linkurlin,
       linkdescriptionin,
       enteredbyin,
       linkorderin);
  END add_user_link;

  PROCEDURE get_user_links(p_cursor OUT emoc_types.emoc_cursor,
                           userid   userlinks.enteredby%TYPE) AS
  BEGIN
    -- RETURN THE CURSOR FOR THE RECORDSET
    OPEN p_cursor FOR
      SELECT linkid,
             linktitle,
             linkurl,
             linkdescription,
             enteredon,
             enteredby,
             lastupdated,
             linkorder
        FROM userlinks
       WHERE enteredby = userid
       ORDER BY linkorder, linkurl ASC;
  END get_user_links;

  PROCEDURE update_user_link(linktitlein       userlinks.linktitle%TYPE,
                             linkurlin         userlinks.linkurl%TYPE,
                             linkdescriptionin userlinks.linkdescription%TYPE,
                             linkorderin       userlinks.linkorder%TYPE,
                             linkidin          userlinks.linkid%TYPE) AS
  BEGIN
    UPDATE userlinks
       SET linktitle       = linktitlein,
           linkurl         = linkurlin,
           linkdescription = linkdescriptionin,
           linkorder       = linkorderin,
           lastupdated     = SYSDATE
     WHERE linkid = linkidin;
  END update_user_link;

  FUNCTION get_user_links_count_by_userid(p_userid NUMBER) RETURN NUMBER AS
    vRecordCount NUMBER;
  BEGIN
    SELECT COUNT(*)
      INTO vRecordCount
      FROM userlinks
     WHERE enteredby = p_userid;
    RETURN vRecordCount;
  END get_user_links_count_by_userid;

  PROCEDURE delete_user_Link_by_linkid(p_linkid userlinks.linkid%TYPE) AS
  BEGIN
    DELETE userlinks WHERE linkid = p_linkid;
  END delete_user_Link_by_linkid;
END emoc_userlinks@
