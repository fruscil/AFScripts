--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."DT_SETPROPERTYBYID" ( PARAM_ID   IN NUMBER, PARAM_PROPERTY IN VARCHAR2, PARAM_VALUE  IN VARCHAR2, PARAM_LVALUE  IN BLOB ) AS BEGIN DECLARE X /*requires attention:"Precision  is limited to 31" begin*/ NUMBER(31) /*requires attention end*/;
/* *** DCW Evaluation Issue "OracleToDB2DatatypeConversion".Corresponding line no in the source file:23971 *** */ BEGIN SELECT COUNT(*) INTO X FROM MICROSOFTDTPROPERTIES WHERE OBJECTID=PARAM_ID AND PROPERTY=PARAM_PROPERTY; IF X = 0 THEN INSERT INTO MICROSOFTDTPROPERTIES (ID, PROPERTY, OBJECTID, VALUE, LVALUE, VERSION) VALUES (MICROSOFTSEQDTPROPERTIES.NEXTVAL, PARAM_PROPERTY, PARAM_ID, PARAM_VALUE, PARAM_LVALUE, 0); ELSE UPDATE MICROSOFTDTPROPERTIES SET VALUE=PARAM_VALUE, LVALUE=PARAM_LVALUE, VERSION=VERSION+1 WHERE OBJECTID=PARAM_ID AND PROPERTY=PARAM_PROPERTY; END IF; END; END DT_SETPROPERTYBYID;
 
 
 
 
 
 
 
 
@