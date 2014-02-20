--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_TBMCS_TRANSACTIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT   *
          FROM tbmcsinterfacelog
      ORDER BY tbmcsmsgsent DESC;
END get_tbmcs_transactions;

 
 
 
 
 
 
 
 
@
