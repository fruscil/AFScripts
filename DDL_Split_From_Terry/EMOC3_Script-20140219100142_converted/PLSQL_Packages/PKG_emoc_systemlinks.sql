--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_SYSTEMLINKS" 
AS
   TYPE systemlinkscursor IS REF CURSOR;

   /* Get UserImages By User ID */
   PROCEDURE getbymocid (
      p_cursor         OUT  systemlinkscursor,
      mocidin          IN   links.mocid%TYPE
   );
END emoc_systemlinks;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
/*DCW-ERROR GRAMMAR:"An unrecognizable item was found

------------
Error Header
	Source Name: /E:/mitre/project/aflcmc/EMOC/Migration/EMOC3_Script.sql
	Total Line Number: 47848
	Relative Current Chunk Line Number: 47848
	Column Number: 0
------------
 
-------------
Error Message
	Message: no viable alternative at character ' linkurl ASC;\n   END getbymocid;\nEND emoc_systemlinks;\n\n[CREATE]'
------------

The following statement (from line 47830 to 47846) and was skipped" BEGIN*/
 CREATE OR REPLACE PACKAGE BODY         "EMOC_SYSTEMLINKS" 
AS
   /* Get UserImages By User ID */
   PROCEDURE getbymocid (
      p_cursor       OUT  systemlinkscursor,
      mocidin        IN   links.mocid%TYPE
   )
   IS
   BEGIN
      OPEN p_cursor FOR
               SELECT   linkid, linktitle, linkurl, linkdescription, enteredon,
               enteredby, lastupdated, linkorder, mocid
          FROM links
         WHERE links.mocid = mocidin
      ORDER BY linkorder, linkurl ASC;
   END getbymocid;
END emoc_systemlinks@
