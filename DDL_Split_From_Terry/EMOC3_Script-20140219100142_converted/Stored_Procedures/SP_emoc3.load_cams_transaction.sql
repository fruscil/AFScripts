--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOAD_CAMS_TRANSACTION" (
   interfacenamein           interfacecontrol.interfacename%TYPE,
   transactiontypein         interfacelog.transactiontype%TYPE,
   useridin                  interfacelog.userid%TYPE,
   xmlin                     interfacelog.xmlin%TYPE,
   updateobjectin            interfacelog.updateobject%TYPE,
   interfacelogidout   OUT   interfacelog.interfacelogid%TYPE,
   mocidin                   interfacelog.mocid%TYPE
)
/******************************************************************************
   NAME:       LOAD_CAMS_TRANSACTION
   PURPOSE:    Inserts a transaction record

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        8/12/03      A.Mitchell       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *INTERFACENAME,
   *TRANSACTIONTYPE,
   *USERID,
   *XMLIN
   OUTPUT:
   *INTERFACELOGID
   RETURNED VALUE:
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
   interfacecontrolid   NUMBER;
   ifacelogid           NUMBER;
BEGIN
   ---SELECT interfacecontrolid
    -- INTO interfacecontrolid
     --FROM interfacecontrol
   -- WHERE interfacename = interfacenamein AND mocid = mocidin;

   SELECT seq_interfacelog.NEXTVAL
     INTO ifacelogid
     FROM DUAL;

   INSERT INTO interfacelog
               (interfacelogid, interfacecontrolid, mocid, transactiontype,
                timeofinsert, userid, xmlin, updateobject, xmlout
               )
        VALUES (ifacelogid, 0, mocidin, transactiontypein,
                SYSDATE, useridin, xmlin, updateobjectin,
                                                          --PLACEHOLDER FOR CLOB FIELD. WITHOUT A VALUE, NO CLOB LOCATION IS ENTERED,
                                                          --AND THE UPDATE_INTERFACELOG procedure WONT WORK
                ' '
               );

   COMMIT;
   interfacelogidout := ifacelogid;
END load_cams_transaction;
 
 
 
 
 
 
 
 
@
