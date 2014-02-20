--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_LINK" (
   linktitlein               links.linktitle%TYPE,
   linkurlin                 links.linkurl%TYPE,
   linkdescriptionin         links.linkdescription%TYPE,
   enteredbyin               links.enteredby%TYPE,
   linkorderin               links.linkorder%TYPE,
   mocidin                   links.mocid%TYPE,
   linkid              OUT   links.linkid%TYPE
)
AS
BEGIN
   SELECT seq_links.NEXTVAL
     INTO linkid
     FROM DUAL;

   INSERT INTO links
               (linkid, linktitle, linkurl, linkdescription,
                enteredby, linkorder, mocid
               )
        VALUES (linkid, linktitlein, linkurlin, linkdescriptionin,
                enteredbyin, linkorderin, mocidin
               );
END add_moc_link;

 
 
 
 
 
 
 
 
@
