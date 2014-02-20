--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC" (
   moctitlein             moc.moctitle%TYPE,
   isactivein             INTEGER,
   lastupdatebyin         INTEGER,
   mocidout         OUT   moc.mocid%TYPE
)
AS
   v_defaultmoc   NUMBER(10) := 0;
BEGIN
   SELECT seq_mocs.NEXTVAL
     INTO mocidout
     FROM DUAL;

   INSERT INTO moc
               (mocid, moctitle, isactive, lastupdated
               )
        VALUES (mocidout, moctitlein, isactivein, SYSDATE
               );

   COMMIT;
   copy_emocconfig (mocidout, v_defaultmoc);
   copy_acftmdstypes (mocidout, v_defaultmoc);
   copy_aircraftmds (mocidout);
   copy_messages (mocidout);
   copy_colors (mocidout);
   copy_fuel (mocidout);
   copy_statuscode (mocidout);
   copy_statusicons (mocidout);
   copy_ranks (mocidout);
   copy_firesymbol (mocidout);
   copy_hqcodes (mocidout);
   copy_landingcodes (mocidout);
   copy_weaponsclass (mocidout);
   copy_weapontypes (mocidout);
   copy_wx (mocidout);
   copy_colorrules (mocidout);
   copy_statusrule (mocidout);
   copy_conditionstatus (mocidout);
   copy_conditioncodes (mocidout);
   copy_symbols (mocidout);
   copy_joap (mocidout);
   copy_semedx (mocidout);
   copy_deviationcodes (mocidout);
   copy_possessioncodes (mocidout);
   copy_interfaceitems(mocidout);

END add_moc;
 
 
 
 
 
 
 
 
@
