--<ScriptOptions statementTerminator="@"/>

CREATE PROCEDURE         "EMOC3"."UPDATE_SCHEDULEDOW_JOB" (
SCHEDULEDOWIN	 EMOCCONFIG.SCHEDULEDOW%TYPE,
SCHEDULETIMEIN	 EMOCCONFIG.SCHEDULETIME%TYPE
)
as
TEXTDOW VARCHAR(15);
TEXTTIME CHAR(4);
NEXTDATE DATE;
begin
--oracle date does not recognize 2400 as midnight, only 0000
if SCHEDULETIMEIN = '2400' then
  begin
    TEXTTIME := '0000';
  end;
else
  begin
    TEXTTIME := SCHEDULETIMEIN;
  end;
end if;

--Used to update job that imports flying schedule from CAMS
CASE SCHEDULEDOWIN
  WHEN 1 THEN
    TEXTDOW := 'Monday';
  WHEN 2 THEN
    TEXTDOW := 'Tuesday';
  WHEN 3 THEN
    TEXTDOW := 'Wednesday';
  WHEN 4 THEN
    TEXTDOW := 'Thursday';
  WHEN 5 THEN
    TEXTDOW := 'Friday';
  WHEN 6 THEN
    TEXTDOW := 'Saturday';
  WHEN 7 THEN
    TEXTDOW := 'Sunday';
  ELSE
    TEXTDOW := 'Friday';
END CASE;

  --gets the next date occurance of the specified day
  SELECT NEXT_DAY(SYSDATE,TEXTDOW)
  INTO NEXTDATE
  FROM DUAL;

  --add time selected
  SELECT TO_DATE(NEXTDATE || ' ' || TEXTTIME, 'DD-MON-YYYY HH24:MI:SS')
  INTO NEXTDATE
  FROM DUAL;

--update the job (799 used as a random number)
  DBMS_JOB.CHANGE(799,NULL,NEXTDATE,NULL);

end UPDATE_SCHEDULEDOW_JOB;

 
 
 
 
 
 
 
 
@
