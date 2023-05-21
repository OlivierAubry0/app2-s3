CREATE OR REPLACE FUNCTION TABLEAU(debut timestamp, fin timestamp, categorie int)
    RETURNS TABLE (
                      id_local varchar(8),
                      id_pavillon varchar(8),
                      heure timestamp,
                      cip char(8),
                      id_reservation int,
                      description varchar(64)
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
    r.description
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

SELECT * FROM TABLEAU('2023-05-21 00:00:00'::timestamp, '2023-05-21 23:45:00'::timestamp, 210);
CREATE OR REPLACE FUNCTION update_logbook()
    RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO logbook (trigger_id, description, trigger_date, reservation_id, cip)
        VALUES (DEFAULT, 'Reservation created', CURRENT_DATE, NEW.reservation_id, NEW.cip);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO logbook (trigger_id, description, trigger_date, reservation_id, cip)
        VALUES (DEFAULT, 'Reservation updated', CURRENT_DATE, NEW.reservation_id, NEW.cip);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS reservation_logbook_trigger ON reservation;

CREATE TRIGGER reservation_logbook_trigger
    AFTER INSERT OR UPDATE ON reservation
    FOR EACH ROW
EXECUTE FUNCTION update_logbook();
