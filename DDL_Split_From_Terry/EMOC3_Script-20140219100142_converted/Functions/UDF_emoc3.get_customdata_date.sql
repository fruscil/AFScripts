--<ScriptOptions statementTerminator="@"/>


CREATE FUNCTION         "EMOC3"."GET_CUSTOMDATA_DATE" (
i_value_to_check in varchar2) return DATE is
v_dummy DATE;
begin

	v_dummy := TO_DATE(i_value_to_check, 'MM/DD/YYYY HH:MM:SS AM');

return v_dummy;
exception
when others then
return NULL; -- it's invalid
end GET_CUSTOMDATA_DATE ;
 
 
 
 
 
 
 
 
@
