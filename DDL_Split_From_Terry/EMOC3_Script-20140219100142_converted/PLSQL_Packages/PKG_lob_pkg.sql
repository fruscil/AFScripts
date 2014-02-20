--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "LOB_PKG" 
as
   procedure lob_ins( p_id in NUMBER, p_text in varchar2 );
   procedure add_more( p_text in varchar2 );
end;
 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
CREATE OR REPLACE PACKAGE BODY         "LOB_PKG" as

g_clob CLOB;


procedure lob_ins(p_id IN NUMBER, p_text IN varchar2 )
as
begin
     insert into tbmcsinterfacelog (interfacelogid, messagebody) values (p_id, empty_clob() ) returning messagebody into g_clob;
     dbms_lob.write( g_clob,length(p_text), 1,p_text);
end;

procedure add_more( p_text in varchar2 )
as
begin
    dbms_lob.writeappend( g_clob, length(p_text), p_text );
end;

end;

@
