--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTUVRCHANGETRX" (
   p_homeelc                  VARCHAR2,
   p_currentelc               VARCHAR2,
   p_unitid                   VARCHAR2,
   p_timezonefactor           VARCHAR2,
   p_timezonehours            VARCHAR2,
   p_gmtfactor                VARCHAR2,
   p_gmthours                 VARCHAR2,
   p_remoteprintindicator     VARCHAR2,
   p_hosttimezonefactor       VARCHAR2,
   p_hosttimezonehours        VARCHAR2,
   p_hostunitdateandtime      VARCHAR2,
   p_transactionordinaldate   VARCHAR2
)
AS
   tmpvar      NUMBER;
   wingidvar   NUMBER;
/******************************************************************************
   NAME:       InsertUVRChangeTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/26/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertUVRChangeTrx
      Sysdate:         12/26/2006
      Date and Time:   12/26/2006, 9:26:15 AM, and 12/26/2006 9:26:15 AM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

  new OracleParameter("p_homeelc",OracleType.VarChar,4,ParameterDirection.Input,
  new OracleParameter("p_currentelc",OracleType.VarChar,4,ParameterDirection.Input,
  new OracleParameter("p_unitid",OracleType.VarChar,1,ParameterDirection.Input,
  new OracleParameter("p_timezonefactor",OracleType.VarChar,1,ParameterDirection.Input,
  new OracleParameter("p_timezonehours",OracleType.VarChar,2,ParameterDirection.Input,
  new OracleParameter("p_gmtfactor",OracleType.VarChar,1,ParameterDirection.Input,
  new OracleParameter("p_gmthours",OracleType.VarChar,2,ParameterDirection.Input,
  new OracleParameter("p_remoteprintindicator",OracleType.VarChar,1,ParameterDirection.Input,
  new OracleParameter("p_hosttimezonefactor",OracleType.VarChar,1,ParameterDirection.Input,
  new OracleParameter("p_hosttimezonehours",OracleType.VarChar,2,ParameterDirection.Input,
  new OracleParameter("p_hostunitdateandtime",OracleType.VarChar,25,ParameterDirection.Input,
  new OracleParameter("p_transactionordinaldate",OracleType.VarChar,25,ParameterDirection.Input,


  UVRCHANGETRXID                 NUMBER(20),
  HOMEENTERPRISELOCTIONCODE      VARCHAR2(4 BYTE),
  CURRENTENTERPRISELOCATIONCODE  VARCHAR2(4 BYTE),
  UNITID                         VARCHAR2(1 BYTE),
  TIMEZONEFACTOR                 VARCHAR2(1 BYTE),
  TIMEZONEHOURS                  VARCHAR2(2 BYTE),
  GMTFACTOR                      VARCHAR2(1 BYTE),
  GMTHOURS                       VARCHAR2(2 BYTE),
  HOSTTIMEZONEFACTOR             VARCHAR2(1 BYTE),
  HOSTTIMEZONEHOURS              VARCHAR2(2 BYTE),
  HOSTUNITDATEANDTIME            VARCHAR2(25 BYTE),
  TRANSACTIONORDINALDATE         VARCHAR2(25 BYTE),
  RECORDDATETIME                 DATE           DEFAULT sysdate,
  APPLICATIONNOTE                NVARCHAR2(2000),
  DATEPROCESSED                  DATE,
  REMOTEPRINTINDICATOR           VARCHAR2(1 BYTE)

******************************************************************************/
BEGIN
   SELECT seq_uvrchangetrx.NEXTVAL
     INTO tmpvar
     FROM DUAL;

   INSERT INTO uvrchangetrx
               (uvrchangetrxid, homeenterpriselocationcode,
                currententerpriselocationcode, unitid, timezonefactor,
                timezonehours, gmtfactor, gmthours,
                hosttimezonefactor, hosttimezonehours,
                hostunitdateandtime, transactionordinaldate, dateprocessed,
                remoteprintindicator
               )
        VALUES (tmpvar, p_homeelc,
                p_currentelc, p_unitid, p_timezonefactor,
                p_timezonehours, p_gmtfactor, p_gmthours,
                p_hosttimezonefactor, p_hosttimezonehours,
                p_hostunitdateandtime, p_transactionordinaldate, SYSDATE,
                p_remoteprintindicator
               );

   COMMIT;

  get_wingid_by_elcunitid(p_currentelc, p_unitid, wingidvar);
   IF (wingidvar IS NOT NULL)
   THEN
      UPDATE wings
         SET timezonefactor = p_timezonefactor,
             timezonehours = p_timezonehours,
             gmtfactor = p_gmtfactor,
             gmthours = p_gmthours,
             remoteprintindicator = p_remoteprintindicator,
    lastupdate = SYSDATE
       WHERE wingid = wingidvar;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertuvrchangetrx;
 
 
 
 
 
 
 
 
@
