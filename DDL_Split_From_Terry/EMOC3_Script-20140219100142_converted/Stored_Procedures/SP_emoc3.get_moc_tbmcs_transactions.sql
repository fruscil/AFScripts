--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_MOC_TBMCS_TRANSACTIONS" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   mocidin          NUMBER
)
AS
BEGIN
   OPEN p_cursor FOR
      SELECT   *
          FROM tbmcsinterfacelog
         WHERE mocid = mocidin
      ORDER BY tbmcsmsgsent DESC;
END get_moc_tbmcs_transactions;

 
 
 
 
 
 
 
 
@
