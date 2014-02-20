--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."SPGETTRANSSQBYUSERMOC" (
   p_cursor   OUT   emoc_types.emoc_cursor,
   useridin         users.userid%TYPE,
   mocidin          INTEGER
)
AS
BEGIN
-- RETURN THE CURSOR FOR THE RECORDSET
   OPEN p_cursor FOR
      SELECT   squ.squadronid, squ.squadronname, per.userid,
               squsortorder.sortorder
          FROM squadrons squ,
               permissions per,
               squadron_sort_order squsortorder
         WHERE (    (squ.squadronid = per.squadronid(+))
                AND (per.squadronid = squsortorder.squadronid(+))
                AND (per.userid = squsortorder.userid(+))
                AND (per.userid = useridin)
                AND (squ.squadronname = 'TRANSIENT')
                AND (squ.mocid = mocidin)
               )
      ORDER BY squsortorder.sortorder;
END spgettranssqbyusermoc;

 
 
 
 
 
 
 
 
@
