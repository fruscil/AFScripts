--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_INTERFACECONTROL" (interfacenamein    interfacecontrol.interfacename%TYPE,
                                                 lastupdatebyin     interfacecontrol.lastupdateby%TYPE,
                                                 interfacecontrolid OUT interfacecontrol.interfacecontrolid%TYPE) AS
BEGIN
  SELECT seq_icontrol.NEXTVAL INTO interfacecontrolid FROM DUAL;

  INSERT INTO interfacecontrol
    (interfacecontrolid, interfacename, lastupdateby)
  VALUES
    (interfacecontrolid, interfacenamein, lastupdatebyin);
END add_interfacecontrol;
 
 
 
 
 
 
 
 
@
