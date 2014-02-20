--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_COLUMNS_BY_VIEW" (
VIEWNAME  		  	  VARCHAR,
P_CURSOR  		  OUT EMOC_TYPES.EMOC_CURSOR
)
AS
BEGIN

open p_cursor for
select column_name, data_type, data_length, data_precision, data_scale, nullable
from ALL_TAB_COLUMNS
where table_name = VIEWNAME;

END GET_COLUMNS_BY_VIEW;

 
 
 
 
 
 
 
 
@
