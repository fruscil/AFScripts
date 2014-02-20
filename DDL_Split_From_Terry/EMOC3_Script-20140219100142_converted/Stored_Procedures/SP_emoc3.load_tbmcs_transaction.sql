--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."LOAD_TBMCS_TRANSACTION" (
   tbmcsresponserecvin         tbmcsinterfacelog.tbmcsresponserecv%TYPE,
   messageidin                 tbmcsinterfacelog.messageid%TYPE,
   camsvalidatedin             tbmcsinterfacelog.camsvalidated%TYPE,
   useridin                    tbmcsinterfacelog.userid%TYPE,
   tbmcsmsgsentin              tbmcsinterfacelog.tbmcsmsgsent%TYPE,
   tbmcsresponsein             tbmcsinterfacelog.tbmcsresponse%TYPE,
   updatemethodin              tbmcsinterfacelog.updatemethod%TYPE,
   updateobjectin              tbmcsinterfacelog.updateobject%TYPE,
   interfacelogidout     OUT   tbmcsinterfacelog.interfacelogid%TYPE,
   mocidin                     tbmcsinterfacelog.mocid%TYPE
)
/******************************************************************************
   NAME:       LOAD_TBMCS_TRANSACTION
   PURPOSE:    Inserts a transaction record

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        3/16/04      J.Chaplin       1. Created this procedure.

   PARAMETERS:
   INPUT:
   *UPDATEFIELD,
   *TBMCSRESPONSERECV,
   *MESSAGEID
   *CAMSVALIDATED
   *USERID
   *TBMCSMSGSENT
   *TBMCSRESPONSE
   *UPDATEMETHOD
   *UPDATEOBJECT
   *MESSAGEBODY
   CALLED BY:
   CALLS:
   EXAMPLE USE:
   ASSUMPTIONS:
   LIMITATIONS:
   ALGORITHM:
   NOTES:

******************************************************************************/
AS
   newlogid   NUMBER;
BEGIN
--Increment
   SELECT seq_tbmcsinterfacelog.NEXTVAL
     INTO newlogid
     FROM DUAL;

   INSERT INTO tbmcsinterfacelog
               (interfacelogid, messageid, camsvalidated, userid,
                tbmcsmsgsent, tbmcsresponse, updatemethod,
                updateobject, mocid, messagebody 
               )
        VALUES (newlogid, messageidin, camsvalidatedin, useridin,
                tbmcsmsgsentin, tbmcsresponsein, updatemethodin,
                updateobjectin, mocidin,
                                --PLACEHOLDER FOR CLOB FIELD. WITHOUT A VALUE, NO CLOB LOCATION IS ENTERED,
                                --AND THE LOAD_TBMCS_MESSAGEBODY procedure WONT WORK
                ' '
               );

   COMMIT;
   interfacelogidout := newlogid;
END load_tbmcs_transaction;
 
 
 
 
 
 
 
 
@
