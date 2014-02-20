--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_INTERFACECONTROL" (interfacenamein    interfacecontrol.interfacename%TYPE,
                                                     lastupdatebyin     interfacecontrol.lastupdateby%TYPE,
              interfaceuseridin           interfacecontrol.interfaceuserid%TYPE,
                 interfacepasswordin         interfacecontrol.interfacepassword%TYPE,
                                                     interfacecontrolid OUT interfacecontrol.interfacecontrolid%TYPE,
                                                     mocidin            interfacecontrol.mocid%TYPE) AS

BEGIN
  SELECT seq_icontrol.NEXTVAL INTO interfacecontrolid FROM DUAL;

  INSERT INTO interfacecontrol
    (interfacecontrolid, interfacename, lastupdateby, mocid,interfaceuserid)
  VALUES
    (seq_icontrol.NEXTVAL, interfacenamein, lastupdatebyin, mocidin,interfaceuseridin);


END add_moc_interfacecontrol;
 
 
 
 
 
 
 
 
@
