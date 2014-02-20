--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_CUSTOMDATA_NUMBER" (
i_value_to_check in varchar2) return NUMBER is
v_dummy NUMBER;
begin

v_dummy := TO_NUMBER(i_value_to_check);

return v_dummy;
exception
when others then
return NULL; -- it's invalid
end GET_CUSTOMDATA_NUMBER ;
 
 
 
 
 
 
 
 
@
