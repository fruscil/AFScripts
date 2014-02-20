--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_LINK" (
   linktitlein               links.linktitle%TYPE,
   linkurlin                 links.linkurl%TYPE,
   linkdescriptionin         links.linkdescription%TYPE,
   enteredbyin               links.enteredby%TYPE,
   linkorderin               links.linkorder%TYPE,
   linkid              OUT   links.linkid%TYPE
)
AS
BEGIN
   SELECT seq_links.NEXTVAL
     INTO linkid
     FROM DUAL;

   INSERT INTO links
               (linkid, linktitle, linkurl, linkdescription,
                enteredby, linkorder
               )
        VALUES (linkid, linktitlein, linkurlin, linkdescriptionin,
                enteredbyin, linkorderin
               );
END add_link;

 
 
 
 
 
 
 
 
@
