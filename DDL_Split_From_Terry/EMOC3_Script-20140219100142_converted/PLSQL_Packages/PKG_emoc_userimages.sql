--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_USERIMAGES" 
AS
   TYPE imagecursor IS REF CURSOR;

   /* Upload Image SP */
   PROCEDURE upload (
      p_image          IN   userimages.image%TYPE,
      p_userid         IN   userimages.userid%TYPE
   );

   /* Delete UserImages By User ID */
   PROCEDURE deletebyuserid (
      p_userid         IN   userimages.userid%TYPE
   );

   /* Delete UserImages By Image ID */
   PROCEDURE deletebyimageid (
      p_imageid        IN   userimages.imageid%TYPE
   );

   /* Get UserImages By User ID */
   PROCEDURE getbyimageid (
      p_imageid        IN   userimages.imageid%TYPE,
      p_cursor         OUT  imagecursor
   );

   /* Get UserImages By User ID */
   PROCEDURE getbyuserid (
      p_userid         IN   userimages.userid%TYPE,
      p_cursor         OUT  imagecursor
   );
END emoc_userimages;



 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
CREATE OR REPLACE PACKAGE BODY         "EMOC_USERIMAGES" 
AS
   /* Upload Image SP */
   PROCEDURE upload (
      p_image          IN   userimages.image%TYPE,
      p_userid         IN   userimages.userid%TYPE
   )
   IS
   BEGIN
      INSERT INTO userimages
                  (image, userid
                  )
           VALUES (p_image, p_userid
                  );
   END upload;

   /* Delete UserImages By User ID */
   PROCEDURE deletebyuserid (
      p_userid        IN   userimages.userid%TYPE
   )
   IS
   BEGIN
      DELETE FROM userimages t WHERE t.userid = p_userid;
   END deletebyuserid;

   /* Delete UserImages By Image ID */
   PROCEDURE deletebyimageid (
     p_imageid       IN   userimages.imageid%TYPE
   )
   IS
   BEGIN
      DELETE FROM userimages t WHERE t.imageid = p_imageid;
   END deletebyimageid;

   /* Get UserImages By User ID */
   PROCEDURE getbyimageid (
      p_imageid      IN   userimages.imageid%TYPE,
      p_cursor       OUT  imagecursor
   )
   IS
   BEGIN
      OPEN p_cursor FOR
         SELECT t.imageid, t.image, t.userid FROM userimages t WHERE t.imageid = p_imageid;
   END getbyimageid;

   /* Get UserImages By User ID */
   PROCEDURE getbyuserid (
      p_userid       IN   userimages.userid%TYPE,
      p_cursor       OUT  imagecursor
   )
   IS
   BEGIN
      OPEN p_cursor FOR
         SELECT t.imageid, t.image, t.userid, to_char(t.dateuploaded, 'dd-MON-yyyy') AS dateuploaded FROM userimages t WHERE t.userid = p_userid;
   END getbyuserid;
END emoc_userimages;



@
