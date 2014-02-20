--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTOPEREVENTDELETETRX" (
   homeelcin                     VARCHAR2,
   currentelcin                  VARCHAR2,
   unitidin                      VARCHAR2,
   equipidin                     VARCHAR2,
   isortiedatein     VARCHAR2,
   sortiedatein         VARCHAR2,
   sortienumberin       VARCHAR2
)
AS
   tmpvar   NUMBER;
   /******************************************************************************
   NAME:       INSERTOPEREVENTDELETETRX
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/15/2006  jwc             1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     INSERTOPEREVENTDELETETRX
      Sysdate:         12/15/2006
      Date and Time:   12/15/2006, 10:16:05 AM, and 12/15/2006 10:16:05 AM
      Username:         emoc3)
      Table Name:       operationaleventdeletetrx)

******************************************************************************/
BEGIN
   SELECT seq_opereventdelete.NEXTVAL
     INTO tmpvar
     FROM DUAL;

     INSERT INTO EMOC3.OPERATIONALEVENTDELETETRX (
       OPERATIONALEVENTDELETETRXID, HOMEENTERPRISELOCATIONCODE,
      CURRENTENTERPRISELOCATIONCODE, UNITID, EQUIPMENTID, SORTIEDATE,
   SORTIENUMBER, DATEPROCESSED)
  VALUES (tmpvar, homeelcin, currentelcin, unitidin, equipidin,
     isortiedatein, sortienumberin, SYSDATE);

  DELETEOPEREVENTDELETEFROMIMDS(homeelcin, currentelcin, unitidin, equipidin,
     isortiedatein, sortiedatein, sortienumberin);

--EXCEPTION
--   WHEN NO_DATA_FOUND
--   THEN
 --     NULL;
 --  WHEN OTHERS
--   THEN
      -- Consider logging the error and then re-raise
 --     RAISE;
END INSERTOPEREVENTDELETETRX;
 
 
 
 
 
 
 
 
@
