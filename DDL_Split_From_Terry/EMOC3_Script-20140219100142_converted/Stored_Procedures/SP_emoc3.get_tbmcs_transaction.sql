--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_TBMCS_TRANSACTION" (
   interfacelogidin         tbmcsinterfacelog.interfacelogid%TYPE,
   p_cursor           OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT interfacelogid, tbmcsresponserecv, messageid, camsvalidated,
             userid, tbmcsmsgsent, tbmcsresponse, updatemethod, messagebody,
             updateobject
        FROM tbmcsinterfacelog
       WHERE interfacelogid = interfacelogidin;
END get_tbmcs_transaction;

 
 
 
 
 
 
 
 
@
