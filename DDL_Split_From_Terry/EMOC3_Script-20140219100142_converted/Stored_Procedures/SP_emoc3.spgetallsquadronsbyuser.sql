--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETALLSQUADRONSBYUSER" (
P_CURSOR OUT Emoc_Types.EMOC_CURSOR,
USERIDIN USERS.USERID%TYPE,
WINGIDIN SQUADRONS.WINGID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT squ.squadronid, squ.squadronname, per.userid,
       squsortorder.sortorder

FROM SQUADRONS squ,
       PERMISSIONS per,
       SQUADRON_SORT_ORDER squsortorder

WHERE (  ( squ.wingid = WINGIDIN)
	   AND (squ.squadronid = per.squadronid(+))
        AND (per.squadronid = squsortorder.squadronid(+))
        AND (per.userid = squsortorder.userid(+))
        AND (per.userid = USERIDIN)
		AND (squ.squadronname != 'TRANSIENT')    )

ORDER BY squsortorder.sortorder;

END Spgetallsquadronsbyuser;

 
 
 
 
 
 
 
 
@
