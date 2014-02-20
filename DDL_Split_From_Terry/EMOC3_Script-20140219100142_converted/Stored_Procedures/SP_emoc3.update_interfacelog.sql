--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."UPDATE_INTERFACELOG" (
INTERFACELOGIDIN in NUMBER,
XML_IN in varchar2 )
as
          l_clob  CLOB;
  begin

          select xmlout into l_clob from interfacelog where interfacelogid = INTERFACELOGIDIN for update;

          dbms_lob.writeappend( l_clob, length(XML_IN), XML_IN);
  end;
 
 
 
 
 
 
 
 
@
