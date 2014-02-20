--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTUSERALERT" (
   useridin     useralert.userid%TYPE,
   sentbyin     useralert.sentby%TYPE,
   alertmsgin   useralert.alertmsg%TYPE,
   priorityin   useralert.priority%TYPE
)
AS
   new_id   INTEGER;
BEGIN
   SELECT seq_useralert.NEXTVAL
     INTO new_id
     FROM DUAL;

   INSERT INTO useralert
               (alertid, userid, sentby, alertmsg, priority
               )
        VALUES (new_id, useridin, sentbyin, alertmsgin, priorityin
               );
END insertuseralert;

 
 
 
 
 
 
 
 
@
