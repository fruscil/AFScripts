--<ScriptOptions statementTerminator="@"/>


CREATE OR REPLACE PACKAGE         "EMOC_SECURITY" AS

  FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW;
  FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2;

END emoc_security;



 
 
 
 
 
 
 
 
@
/*DCW-ERROR GRAMMAR END*/
CREATE OR REPLACE PACKAGE BODY         "EMOC_SECURITY" AS
  g_key     BLOB  := UTL_RAW.cast_to_raw('12345678');
/* *** DCW Evaluation Issue "PACKAGE[UTL_RAW]".Corresponding line no in the source file:47760 *** */
  g_pad_chr VARCHAR2(1) := '~';

  PROCEDURE padstring (p_text  IN OUT  VARCHAR2);

  FUNCTION encrypt (p_text  IN  VARCHAR2) RETURN RAW IS
    l_text       /*requires attention:"Size truncated. Maximum varchar2 size 32672" begin*/ VARCHAR2(32672)  /*requires attention end*/:= p_text;
    l_encrypted  BLOB;
  BEGIN
    padstring(l_text);
    DBMS_OBFUSCATION_TOOLKIT.desencrypt(input          => UTL_RAW.cast_to_raw(l_text),
                                        key            => g_key,
                                        encrypted_data => l_encrypted);
/* *** DCW Evaluation Issue "PACKAGE[DBMS_OBFUSCATION_TOOLKIT]".Corresponding line no in the source file:47770 *** */
/* *** DCW Evaluation Issue "PACKAGE[UTL_RAW]".Corresponding line no in the source file:47770 *** */
    RETURN l_encrypted;
  END;

  FUNCTION decrypt (p_raw  IN  RAW) RETURN VARCHAR2 IS
    l_decrypted  /*requires attention:"Size truncated. Maximum varchar2 size 32672" begin*/ VARCHAR2(32672) /*requires attention end*/;
  BEGIN

    if (p_raw is null) then
      return '';
    end if;

    DBMS_OBFUSCATION_TOOLKIT.desdecrypt(input => p_raw,
                                        key   => g_key,
                                        decrypted_data => l_decrypted);
/* *** DCW Evaluation Issue "PACKAGE[DBMS_OBFUSCATION_TOOLKIT]".Corresponding line no in the source file:47784 *** */

    RETURN RTrim(UTL_RAW.cast_to_varchar2(l_decrypted), g_pad_chr);
/* *** DCW Evaluation Issue "PACKAGE[UTL_RAW]".Corresponding line no in the source file:47788 *** */
  END;

  PROCEDURE padstring (p_text  IN OUT  VARCHAR2) IS
    l_units  NUMBER;
  BEGIN
    IF LENGTH(p_text) MOD 8 > 0 THEN
      l_units := TRUNC(LENGTH(p_text)/8) + 1;
      p_text  := RPAD(p_text, l_units * 8, g_pad_chr);
    END IF;
  END;

END emoc_security;



@
