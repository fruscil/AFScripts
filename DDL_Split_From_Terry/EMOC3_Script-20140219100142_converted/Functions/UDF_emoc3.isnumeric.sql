--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."ISNUMERIC" ( i_value_to_check varchar2) return NUMBER is
v_dummy NUMBER;
begin
v_dummy := to_number( i_value_to_check);
return v_dummy; -- it's number
exception
when others then
return NULL; -- it's invalid
end isNumeric;

 
 
 
 
 
 
 
 
@
