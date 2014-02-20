--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTMICAPTRX" (
   p_fromelc                    VARCHAR2,
   p_unitid                     VARCHAR2,
   p_equipmentid                VARCHAR2,
   p_jobcontrolnumber           VARCHAR2,
   p_documentnumber             VARCHAR2,
   p_nomenclature               VARCHAR2,
   p_estimateddeliverydate      VARCHAR2,
   p_issuedate                  VARCHAR2,
   p_urgencyjustificationcode   VARCHAR2,
   p_transactioncode            VARCHAR2,
   p_workunitcode               VARCHAR2
)
AS
/******************************************************************************
   NAME:       InsertMicapTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/26/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertMicapTrx
      Sysdate:         12/26/2006
      Date and Time:   12/26/2006, 8:04:58 AM, and 12/26/2006 8:04:58 AM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

   new OracleParameter("p_fromelc",OracleType.VarChar,4,ParameterDirection.Input,
   new OracleParameter("p_unitid",OracleType.VarChar,1,ParameterDirection.Input,
   new OracleParameter("p_equipmentid",OracleType.VarChar,5,ParameterDirection.Input,
   new OracleParameter("p_jobcontrolnumber",OracleType.VarChar,12,ParameterDirection.Input,
   new OracleParameter("p_documentnumber",OracleType.VarChar,50,ParameterDirection.Input,
   new OracleParameter("p_nomenclature",OracleType.VarChar,50,ParameterDirection.Input,
   new OracleParameter("p_estimateddeliverydate",OracleType.VarChar,7,ParameterDirection.Input,
   new OracleParameter("p_issuedate",OracleType.VarChar,7,ParameterDirection.Input,
   new OracleParameter("p_urgencyjustificationcode",OracleType.VarChar,2,ParameterDirection.Input,
   new OracleParameter("p_transactioncode",OracleType.VarChar,1,ParameterDirection.Input,
   new OracleParameter("p_workunitcode",OracleType.VarChar,32,ParameterDirection.Input,

******************************************************************************/
BEGIN
   INSERT INTO micaptrx
               (micaptrxid, fromenterpriselocationcode, fromunitid,
                equipmentid, jobcontrolnumber, documentnumber,
                nomenclature, estimateddeliverydate, issuedate,
                urgencyjustificationcode, workunitcode,
                transactioncode, dateprocessed
               )
        VALUES (seq_micaptrx.NEXTVAL, p_fromelc, p_unitid,
                p_equipmentid, p_jobcontrolnumber, p_documentnumber,
                p_nomenclature, p_estimateddeliverydate, p_issuedate,
                p_urgencyjustificationcode, p_workunitcode,
                p_transactioncode, SYSDATE
               );

   COMMIT;

   IF (LENGTH (p_documentnumber) > 0)
   THEN
      IF (LENGTH (p_jobcontrolnumber) > 0)
      THEN
         IF (p_transactioncode = 'D')
         THEN
            deleteimdscdbmicap (p_equipmentid,
                                p_fromelc,
                                p_unitid,
                                p_jobcontrolnumber,
                                p_documentnumber
                               );
         ELSE
    IF (p_transactioncode = 'T')
   THEN
    transferimdscdbmicap(p_equipmentid,
                     p_fromelc,
                               p_unitid,
                               p_jobcontrolnumber,
                               p_documentnumber,
                               p_nomenclature,
                               p_estimateddeliverydate,
                               p_issuedate,
                               p_urgencyjustificationcode,
                               p_workunitcode
                              );
   ELSE
             addimdscdbmicap (p_equipmentid,
                     p_fromelc,
                               p_unitid,
                               p_jobcontrolnumber,
                               p_documentnumber,
                               p_nomenclature,
                               p_estimateddeliverydate,
                               p_issuedate,
                               p_urgencyjustificationcode,
                               p_workunitcode
                              );
         END IF;
      END IF;
   END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertmicaptrx;
 
 
 
 
 
 
 
 
@
