--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPD_LINK" (
   linktitlein         links.linktitle%TYPE,
   linkurlin           links.linkurl%TYPE,
   linkdescriptionin   links.linkdescription%TYPE,
   linkorderin         links.linkorder%TYPE,
   linkidin            links.linkid%TYPE
)
AS
BEGIN
   UPDATE links
      SET linktitle = linktitlein,
          linkurl = linkurlin,
          linkdescription = linkdescriptionin,
          linkorder = linkorderin,
          lastupdated = SYSDATE
    WHERE linkid = linkidin;
END upd_link;

 
 
 
 
 
 
 
 
@
