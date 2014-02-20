--<ScriptOptions statementTerminator="@"/>


CREATE TRIGGER "EMOC3"."CURRENTSTATUS" 
	AFTER INSERT OR UPDATE OF "CURRENTSTATUS" ON "EMOC3"."INTERFACECONTROL"
	REFERENCING NEW AS NEW OLD AS OLD
	FOR EACH ROW
begin
/*******************************************************************************************************/
/* Trigger Name: EMOC2.currentstatus
   Purpose: This trigger adds a row to the Interfacehistory table after a change in the currentstatus
   occurs.
   Author: Philip Brantley
   Revision History:  Version 1.0 - created 6-Aug-2003*/
/*******************************************************************************************************/


   insert into emoc3.interfacehistory
   (statuschangetime, statuschangeby, currentstatus, interfacecontrolid, currentenabled)
    values (sysdate, 0, :new.currentstatus, :new.interfacecontrolid, :new.interfaceenabled);

end;

@
