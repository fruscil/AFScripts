--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_ASSIGNMENT" (
   assignmentcode                assignmentcodes.assignmentcode%TYPE,
   assignmentdescription         assignmentcodes.assignmentdescription%TYPE,
   defaultassignment             assignmentcodes.defaultassignment%TYPE,
   mocidin                       assignmentcodes.mocid%TYPE,
   assignmentid            OUT   assignmentcodes.assignmentcodeid%TYPE
)
AS
BEGIN
   SELECT seq_assignments.NEXTVAL
     INTO assignmentid
     FROM DUAL;

   INSERT INTO assignmentcodes
               (assignmentcodeid, assignmentcode, assignmentdescription,
                defaultassignment, mocid
               )
        VALUES (assignmentid, assignmentcode, assignmentdescription,
                defaultassignment, mocidin
               );
END add_moc_assignment;

 
 
 
 
 
 
 
 
@
