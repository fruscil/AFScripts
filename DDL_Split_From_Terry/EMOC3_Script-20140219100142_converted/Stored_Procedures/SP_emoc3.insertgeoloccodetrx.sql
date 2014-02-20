--<ScriptOptions statementTerminator="@"/>


CREATE PROCEDURE         "EMOC3"."INSERTGEOLOCCODETRX" (
   p_fromelc           VARCHAR2,
   p_fromunitid        VARCHAR2,
   p_geoloccode        VARCHAR2,
   p_narrative         VARCHAR2,
   p_startdate         VARCHAR2,
   p_stopdate          VARCHAR2,
   p_transactioncode   VARCHAR2
)
AS
/******************************************************************************
   NAME:       InsertgeoloccodeTrx
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/24/2006  r mcbride        1. Created this procedure.

   NOTES:

   Automatically available Auto Replace Keywords:
      Object Name:     InsertgeoloccodeTrx
      Sysdate:         12/24/2006
      Date and Time:   12/24/2006, 10:38:46 AM, and 12/24/2006 10:38:46 AM
      Username:         (set in TOAD Options, Procedure Editor)
      Table Name:       (set in the "New PL/SQL Object" dialog)

******************************************************************************/
   geolocid   NUMBER;
   stopdt     DATE;
   tmpvar     NUMBER;
BEGIN
   geolocid := NULL;
   stopdt := NULL;

   INSERT INTO geoloccodetrx
               (geoloccodetrxid, fromenterpriselocationcode, fromunitid,
                geoloccode, geoloccodenarrative, startdate, stopdate,
                transactioncode, dateprocessed
               )
        VALUES (seq_geoloccodetrx.NEXTVAL, p_fromelc, p_fromunitid,
                p_geoloccode, p_narrative, p_startdate, p_stopdate,
                p_transactioncode, SYSDATE
               );

   COMMIT;

   IF (p_geoloccode IS NOT NULL)
   THEN
      IF (p_stopdate IS NOT NULL)
      THEN
         stopdt := TO_DATE (p_stopdate, 'YYYY-MM-DD');
      END IF;

      SELECT COUNT (*)
        INTO tmpvar
        FROM stationloccodes
       WHERE stationloccodes.stationloc = RTRIM (p_geoloccode);

      IF (tmpvar > 0)
      THEN
         SELECT stationloccodes.staloccodeid
           INTO geolocid
           FROM emoc3.stationloccodes
          WHERE stationloccodes.stationloc = RTRIM (p_geoloccode);

         IF (p_transactioncode = 'D')
         THEN
            UPDATE aircraft
               SET staloccodeid = NULL,
                   geoloccode = NULL
             WHERE staloccodeid = geolocid;

            DELETE FROM stationloccodes
                  WHERE staloccodeid = geolocid;
         ELSE
            upd_statloc (p_geoloccode,
                         p_narrative,
                         geolocid,
                         TO_DATE (p_startdate, 'YYYY-MM-DD'),
                         stopdt
                        );
         END IF;

         COMMIT;
      ELSE
         IF (p_transactioncode = 'A')
         THEN
            IF (p_geoloccode IS NOT NULL)
            THEN
               INSERT INTO stationloccodes
                           (staloccodeid, stationloc,
                            stalocnarrative, camsinit, mocid,
                            startdate, stopdate
                           )
                    VALUES (seq_stationlocs.NEXTVAL, p_geoloccode,
                            p_narrative, SYSDATE, 0,
                            TO_DATE (p_startdate, 'YYYY-MM-DD'), stopdt
                           );

               COMMIT;
            END IF;
         END IF;
      END IF;
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      NULL;
   WHEN OTHERS
   THEN
      -- Consider logging the error and then re-raise
      RAISE;
END insertgeoloccodetrx;
 
 
 
 
 
 
 
 
@
