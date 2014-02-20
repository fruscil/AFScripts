--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."COPY_MESSAGES" (mocidin moc.mocid%TYPE)
AS
   CURSOR mycur
   IS
      SELECT messagetype, messagetitle, MESSAGE, lastupdate, lastupdateby
        FROM messages
       WHERE mocid = 0;

   myrec   mycur%ROWTYPE;
BEGIN
   OPEN mycur;

   FETCH mycur
    INTO myrec;

   WHILE mycur%FOUND
   LOOP
      INSERT INTO messages
                  (messageid, messagetype,
                   messagetitle, MESSAGE, lastupdate,
                   lastupdateby, mocid
                  )
           VALUES (seq_messages.NEXTVAL, myrec.messagetype,
                   myrec.messagetitle, myrec.MESSAGE, myrec.lastupdate,
                   myrec.lastupdateby, mocidin
                  );

      FETCH mycur
       INTO myrec;
   END LOOP;

   CLOSE mycur;
   COMMIT ;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END copy_messages;

 
 
 
 
 
 
 
 
@
