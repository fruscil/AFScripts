--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_COLOR" (
   colorname          colors.colorname%TYPE,
   colorvalue         colors.colorvalue%TYPE,
   fontcolor          colors.fontcolor%TYPE,
   colorid      OUT   colors.colorid%TYPE
)
AS
BEGIN
   SELECT seq_colors.NEXTVAL
     INTO colorid
     FROM DUAL;

   INSERT INTO colors
               (colorid, colorname, colorvalue, fontcolor
               )
        VALUES (colorid, colorname, colorvalue, fontcolor
               );
END add_color;

 
 
 
 
 
 
 
 
@
