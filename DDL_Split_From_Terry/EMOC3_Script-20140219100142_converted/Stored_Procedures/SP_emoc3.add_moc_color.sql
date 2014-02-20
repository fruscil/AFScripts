--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."ADD_MOC_COLOR" (
   colorname          colors.colorname%TYPE,
   colorvalue         colors.colorvalue%TYPE,
   fontcolor          colors.fontcolor%TYPE,
   mocidin            colors.mocid%TYPE,
   colorid      OUT   colors.colorid%TYPE
)
AS
BEGIN
   SELECT seq_colors.NEXTVAL
     INTO colorid
     FROM DUAL;

   INSERT INTO colors
               (colorid, colorname, colorvalue, fontcolor, mocid
               )
        VALUES (colorid, colorname, colorvalue, fontcolor, mocidin
               );
END add_moc_color;

 
 
 
 
 
 
 
 
@
