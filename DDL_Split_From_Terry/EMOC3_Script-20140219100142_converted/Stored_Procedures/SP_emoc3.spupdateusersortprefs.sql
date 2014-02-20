--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPUPDATEUSERSORTPREFS" (
USERIDIN USERS.USERID%TYPE,
AIRSORTORDER1IN USERS.AIRCRAFTSORTORDER1%TYPE,
AIRSORTORDER2IN USERS.AIRCRAFTSORTORDER2%TYPE,
AIRSORTORDER3IN USERS.AIRCRAFTSORTORDER3%TYPE
)
AS
BEGIN

UPDATE USERS
SET AIRCRAFTSORTORDER1=AIRSORTORDER1IN,
	AIRCRAFTSORTORDER2=AIRSORTORDER2IN,
	AIRCRAFTSORTORDER3=AIRSORTORDER3IN

WHERE
USERID=USERIDIN;



END SPUPDATEUSERSORTPREFS;

 
 
 
 
 
 
 
 
@
