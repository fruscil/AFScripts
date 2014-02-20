--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETTRANSSQUADRONBYUSER" (
P_CURSOR OUT Emoc_Types.EMOC_CURSOR,
USERIDIN USERS.USERID%TYPE)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
OPEN P_CURSOR FOR
SELECT squ.squadronid, squ.squadronname, per.userid,
       squsortorder.sortorder

FROM SQUADRONS squ,
       PERMISSIONS per,
       SQUADRON_SORT_ORDER squsortorder

WHERE (  (squ.squadronid = per.squadronid(+))
        AND (per.squadronid = squsortorder.squadronid(+))
        AND (per.userid = squsortorder.userid(+))
        AND (per.userid = USERIDIN)
		AND (squ.squadronname = 'TRANSIENT')    )

ORDER BY squsortorder.sortorder;

END Spgettranssquadronbyuser;

 
 
 
 
 
 
 
 
@
