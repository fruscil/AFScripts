--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."GET_FLYBOARD_JOAP_SEMEDX" (
   color_status   OUT   VARCHAR,
   scheduleidin         schedule.scheduleid%TYPE,
   codetype             NUMBER,
   mocidin    NUMBER
)

AS
   defaultrank   NUMBER;
   colorrankin   NUMBER;
   colorout      VARCHAR (7);
   enginecount   NUMBER;
   statusout     VARCHAR (100);
BEGIN
   IF codetype = 0                                                   --"JOAP"
   THEN
      BEGIN
         --default rank
         SELECT colorrank
           INTO defaultrank
           FROM colorrules cr JOIN joap j ON cr.colorrulesid = j.colorrulesid
          WHERE joapid = (SELECT joapid
                            FROM joap
                           WHERE defaultjoap = 1
         AND   mocid = mocidin);

         --get current rank
         SELECT NVL (MIN (colorrank), defaultrank)
           INTO colorrankin
           FROM schedule s JOIN joapdata jd ON s.scheduleid = jd.scheduleid
                JOIN joap j ON jd.joapid = j.joapid
                JOIN colorrules cr2 ON j.colorrulesid = cr2.colorrulesid
          WHERE jd.scheduleid = scheduleidin;

         --get current color
         SELECT colorvalue
           INTO colorout
           FROM colors c JOIN colorrules cr1 ON c.colorid = cr1.colorid
          WHERE cr1.colorrank = colorrankin AND cr1.codetype = 'JOAP' AND cr1.mocid = mocidin;

         SELECT COUNT (NVL (joapdataid, 0))
           INTO enginecount
           FROM schedule s JOIN joapdata jd ON s.scheduleid = jd.scheduleid
                JOIN joap j ON jd.joapid = j.joapid
                JOIN colorrules cr2 ON j.colorrulesid = cr2.colorrulesid
          WHERE jd.scheduleid = scheduleidin AND cr2.colorrank = colorrankin;

         IF enginecount = 1
         THEN
            BEGIN
               SELECT   joapcode
                   INTO statusout
                   FROM schedule s JOIN joapdata jd ON s.scheduleid =
                                                                 jd.scheduleid
                        JOIN joap j ON jd.joapid = j.joapid
                        JOIN colorrules cr2 ON j.colorrulesid =
                                                              cr2.colorrulesid
                  WHERE jd.scheduleid = scheduleidin
                    AND cr2.colorrank = colorrank
                    AND ROWNUM = 1
               ORDER BY colorrank;
            END;
         END IF;

         IF enginecount > 1
         THEN
            BEGIN
               statusout := enginecount;
            END;
         END IF;
      END;
   END IF;

   IF codetype = 1                                                  --"SEMEDX"
   THEN
      BEGIN
         --default rank
         SELECT colorrank
           INTO defaultrank
           FROM colorrules cr JOIN semedx sx ON cr.colorrulesid =
                                                               sx.colorrulesid
          WHERE semedxid = (SELECT semedxid
                              FROM semedx
                             WHERE defaultval = 1
          AND mocid = mocidin);

         --get current rank
         SELECT NVL (MIN (colorrank), defaultrank)
           INTO colorrankin
           FROM schedule s JOIN semedxdata sd ON s.scheduleid = sd.scheduleid
                JOIN semedx s ON sd.semedxid = s.semedxid
                JOIN colorrules cr2 ON s.colorrulesid = cr2.colorrulesid
          WHERE sd.scheduleid = scheduleidin;

         --get current color
         SELECT colorvalue
           INTO colorout
           FROM colors c JOIN colorrules cr1 ON c.colorid = cr1.colorid
          WHERE cr1.colorrank = colorrankin AND cr1.codetype = 'SEMEDX' AND cr1.mocid = mocidin;

         SELECT COUNT (NVL (semdataid, 0))
           INTO enginecount
           FROM schedule sc JOIN semedxdata sd ON sc.scheduleid =
                                                                 sd.scheduleid
                JOIN semedx s ON sd.semedxid = s.semedxid
                JOIN colorrules cr2 ON s.colorrulesid = cr2.colorrulesid
          WHERE sd.scheduleid = scheduleidin AND cr2.colorrank = colorrankin;

         IF enginecount = 1
         THEN
            BEGIN
               SELECT   semedx
                   INTO statusout
                   FROM schedule sc JOIN semedxdata sd ON sc.scheduleid =
                                                                 sd.scheduleid
                        JOIN semedx s ON sd.semedxid = s.semedxid
                        JOIN colorrules cr2 ON s.colorrulesid =
                                                              cr2.colorrulesid
                  WHERE sd.scheduleid = scheduleidin
                    AND cr2.colorrank = colorrank
                    AND ROWNUM = 1
               ORDER BY colorrank;
            END;
         END IF;

         IF enginecount > 1
         THEN
            BEGIN
               statusout := enginecount;
            END;
         END IF;
      END;
   END IF;

   color_status := colorout || '-' || statusout;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      NULL;
END get_flyboard_joap_semedx;
 
 
 
 
 
 
 
 
@
