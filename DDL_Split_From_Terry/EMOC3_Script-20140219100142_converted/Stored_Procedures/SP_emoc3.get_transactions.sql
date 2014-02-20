--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_TRANSACTIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   eventtime, tablename, tablerecordid, userid AS USER, action,
               remark, transactionlogid
          FROM emocaux.transactionlog
      ORDER BY eventtime DESC;
END get_transactions;

 
 
 
 
 
 
 
 
@
