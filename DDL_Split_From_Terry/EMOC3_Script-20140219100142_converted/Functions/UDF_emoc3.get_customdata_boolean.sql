--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_CUSTOMDATA_BOOLEAN" (
i_value_to_check in varchar2) return STRING is
v_dummy VARCHAR2(1);
begin

	 select decode(i_value_to_check, '1', 'T', 'F')
	 into v_dummy
	 from dual;

return v_dummy;
exception
when others then
return NULL; -- it's invalid
end GET_CUSTOMDATA_BOOLEAN ;
 
 
 
 
 
 
 
 
@
