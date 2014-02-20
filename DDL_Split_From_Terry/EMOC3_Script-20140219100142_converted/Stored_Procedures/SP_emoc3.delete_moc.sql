--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DELETE_MOC" (mocidin moc.mocid%TYPE) AS
  CURSOR wingcur IS
    SELECT wingid FROM wings WHERE mocid = mocidin;

  wingrec wingcur%ROWTYPE;
BEGIN
  OPEN wingcur;

  FETCH wingcur
    INTO wingrec;

  WHILE wingcur%FOUND LOOP
    delete_wing(wingrec.wingid);
  
    FETCH wingcur
      INTO wingrec;
  END LOOP;

  CLOSE wingcur;

  delete_moc_aircraftmds(mocidin);

  DELETE areas WHERE mocid = mocidin;

  COMMIT;

  DELETE acftmdstypes WHERE mocid = mocidin;

  COMMIT;

  DELETE assignmentcodes WHERE mocid = mocidin;

  COMMIT;

  DELETE causecodes WHERE mocid = mocidin;

  COMMIT;

  DELETE colorrules WHERE mocid = mocidin;

  COMMIT;

  DELETE conditionstatus WHERE mocid = mocidin;

  COMMIT;

  DELETE deviationcodes WHERE mocid = mocidin;

  COMMIT;

  DELETE fuel WHERE mocid = mocidin;

  COMMIT;

  DELETE colors WHERE mocid = mocidin;

  COMMIT;

  DELETE symbols WHERE mocid = mocidin;

  COMMIT;

  DELETE conditioncodes WHERE mocid = mocidin;

  COMMIT;

  DELETE crewchiefs WHERE mocid = mocidin;

  COMMIT;

  DELETE pilot WHERE mocid = mocidin;

  COMMIT;

  DELETE ranks WHERE mocid = mocidin;

  COMMIT;
  delete_moc_customdata(mocidin);
  delete_moc_statusimage(mocidin);

  DELETE emocconfig WHERE mocid = mocidin;

  COMMIT;

  DELETE eventlog WHERE mocid = mocidin;

  COMMIT;

  DELETE firesymbols WHERE mocid = mocidin;

  COMMIT;
  /* DELETE GENERATIONFLOW */
  delete_moc_genflow(mocidin);

  DELETE hanger_queen_code WHERE mocid = mocidin;

  COMMIT;

  DELETE hotspots WHERE mocid = mocidin;

  COMMIT;

  DELETE joap WHERE mocid = mocidin;

  COMMIT;

  DELETE landingcodes WHERE mocid = mocidin;

  COMMIT;

  DELETE links WHERE mocid = mocidin;

  COMMIT;

  DELETE locations WHERE mocid = mocidin;

  COMMIT;

  DELETE majcoms WHERE mocid = mocidin;

  COMMIT;

  DELETE messages WHERE mocid = mocidin;

  COMMIT;

  DELETE missions WHERE mocid = mocidin;

  COMMIT;

  DELETE organizations WHERE mocid = mocidin;

  COMMIT;

  DELETE possessions WHERE mocid = mocidin;

  COMMIT;

  DELETE ranges WHERE mocid = mocidin;

  COMMIT;

  /* DELETE REPORTS  */
  DELETE Reportcriteria where mocid = mocidin;
  COMMIT;

  DELETE Reports where mocid = mocidin;
  COMMIT;

  DELETE semedx WHERE mocid = mocidin;
  COMMIT;

  DELETE statustransitionrule WHERE mocid = mocidin;

  COMMIT;

  DELETE statuscode WHERE mocid = mocidin;

  COMMIT;

  DELETE stationloccodes WHERE mocid = mocidin;

  COMMIT;

  DELETE utilizationcodes WHERE mocid = mocidin;

  COMMIT;

  DELETE weaponsclass WHERE mocid = mocidin;

  COMMIT;

  DELETE whendiscoveredcodes WHERE mocid = mocidin;

  COMMIT;

  DELETE workcenters WHERE mocid = mocidin;

  COMMIT;
  delete_moc_wx(mocidin);
  COMMIT;

  /* DELETE INTERFACECONTROL */
  DELETE interfacelog WHERE mocid = mocidin;

  COMMIT;

  DELETE tbmcsinterfacelog WHERE mocid = mocidin;

  COMMIT;

  DELETE interfaceitems WHERE mocid = mocidin;

  COMMIT;

  DELETE interfacecontrol WHERE mocid = mocidin;

  COMMIT;

  DELETE mocusers WHERE mocid = mocidin;

  COMMIT;

  DELETE mocadmins WHERE mocid = mocidin;

  COMMIT;

  DELETE changenotification WHERE mocid = mocidin;

  COMMIT;
    DELETE basemaps where basemaps.mocid = mocidin;
  COMMIT;

  DELETE checklist WHERE mocid = mocidin;

  COMMIT;
    DELETE Changenotification where mocid = mocidin;
  COMMIT;

  DELETE moc WHERE mocid = mocidin;

  COMMIT;


END delete_moc;
 
 
 
 
 
 
 
 
@
