DROP FUNCTION IF EXISTS TABLEAU(timestamp without time zone, timestamp without time zone, integer);
CREATE OR REPLACE FUNCTION TABLEAU(debut timestamp, fin timestamp, categorie int)
    RETURNS TABLE (
                      id_local varchar(8),
                      id_pavillon varchar(8),
                      heure timestamp,
                      cip char(8),
                      id_reservation int,
                      description varchar(64),
                      cubicule_id int
                  )
    LANGUAGE SQL
AS $$
WITH horaire AS (
    SELECT
        l.local_id AS id_local,
        l.pavillon_id AS id_pavillon,
        generate_series(debut::timestamp, fin::timestamp, interval '15 minutes') AS heure
    FROM
        local l
            INNER JOIN pavillon p ON l.pavillon_id = p.pavillon_id
    WHERE
            l.fonction_id = categorie
)

SELECT
    h.id_local,
    h.id_pavillon,
    h.heure,
    r.cip,
    r.reservation_id,
    r.description,
    r.cubicule_id
FROM
    horaire h
        LEFT JOIN reservation r ON h.id_local = r.local_id
        AND h.id_pavillon = r.pavillon_id
        AND h.heure >= r.date_debut
        AND h.heure < r.date_fin + interval '1 day'
ORDER BY
    h.heure,
    h.id_local;
$$;

SELECT * FROM TABLEAU('2023-05-21 00:00:00'::timestamp, '2023-05-21 23:45:00'::timestamp, 0110);
