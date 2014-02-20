--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOCUSER" (
   mocidin               moc.mocid%TYPE,
   useridin              users.userid%TYPE,
   mocuseridout   OUT    mocusers.mocuserid%TYPE
)
AS
   recid   INTEGER := 0;
BEGIN
   SELECT Count(*)
     INTO recid
     FROM mocusers
    WHERE mocid = mocidin AND userid = useridin;

   IF (recid = 0)
   THEN
      SELECT seq_mocusers.NEXTVAL
        INTO mocuseridout
        FROM DUAL;

      INSERT INTO mocusers
                  (mocuserid, mocid, userid
                  )
           VALUES (mocuseridout, mocidin, useridin
                  );
   ELSE
      mocuseridout := recid;
   END IF;
END add_mocuser;

 
 
 
 
 
 
 
 
@
