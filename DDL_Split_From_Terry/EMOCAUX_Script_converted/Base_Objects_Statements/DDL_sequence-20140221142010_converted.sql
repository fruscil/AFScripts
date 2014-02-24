--<ScriptOptions statementTerminator="@"/>


CREATE SEQUENCE "EMOCAUX"."SEQ_TRANSACTIONLOG"
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE /*requires attention:"DB2 just accept 27 digits" begin*/
 999999999999999999999999999
/*requires attention end*/
START WITH 111216
@
