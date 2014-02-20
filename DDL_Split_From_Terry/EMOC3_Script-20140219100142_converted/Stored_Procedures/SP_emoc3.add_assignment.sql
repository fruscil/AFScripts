--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_ASSIGNMENT" (
   assignmentcode                assignmentcodes.assignmentcode%TYPE,
   assignmentdescription         assignmentcodes.assignmentdescription%TYPE,
   defaultassignment             assignmentcodes.defaultassignment%TYPE,
   assignmentid            OUT   assignmentcodes.assignmentcodeid%TYPE
)
AS
BEGIN
   SELECT seq_assignments.NEXTVAL
     INTO assignmentid
     FROM DUAL;

   INSERT INTO assignmentcodes
               (assignmentcodeid, assignmentcode, assignmentdescription,
                defaultassignment
               )
        VALUES (assignmentid, assignmentcode, assignmentdescription,
                defaultassignment
               );
END add_assignment;

 
 
 
 
 
 
 
 
@
