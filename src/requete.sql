CREATE OR REPLACE FUNCTION update_logbook() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        -- Check for reservation conflicts
        IF EXISTS (
            SELECT 1
            FROM reservation
            WHERE local_id = NEW.local_id
              AND ((cubicule_id = NEW.cubicule_id) OR (cubicule_id IS NULL AND NEW.cubicule_id IS NULL))
              AND pavillon_id = NEW.pavillon_id
              AND date_debut < NEW.date_fin
              AND date_fin > NEW.date_debut
              AND reservation_id <> NEW.reservation_id
        ) THEN
            RAISE EXCEPTION 'Reservation conflict: The selected time interval overlaps with an existing reservation.';
        END IF;

        IF ( NEW.date_fin <= NEW.date_debut )
        THEN RAISE EXCEPTION 'Reservation conflict: The end time is not after start time.';
        END IF;

        -- Insert the reservation into the logbook
        INSERT INTO logbook (trigger_id, description, trigger_date, local_id, pavillon_id, cubicule_id, cip)
        VALUES (DEFAULT, 'Reservation created', CURRENT_DATE, NEW.local_id, NEW.pavillon_id, NEW.cubicule_id, NEW.cip);

        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        -- Check for reservation conflicts
        IF EXISTS (
            SELECT 1
            FROM reservation
            WHERE local_id = NEW.local_id
              AND pavillon_id = NEW.pavillon_id
              AND date_debut < NEW.date_fin
              AND date_fin > NEW.date_debut
              AND reservation_id <> NEW.reservation_id
        ) THEN
            RAISE EXCEPTION 'Reservation conflict: The selected time interval overlaps with an existing reservation.';
        END IF;

        -- Update the reservation in the logbook
        UPDATE logbook
        SET description = 'Reservation updated', trigger_date = CURRENT_DATE
        WHERE local_id = NEW.local_id
        AND pavillon_id = NEW.pavillon_id
        AND cubicule_id = NEW.cubicule_id;
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS reservation_logbook_trigger ON reservation;

CREATE TRIGGER reservation_logbook_trigger
    AFTER INSERT OR UPDATE ON reservation
    FOR EACH ROW
EXECUTE FUNCTION update_logbook();

CREATE OR REPLACE FUNCTION procedure_reservation_delete()
    RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO logbook(trigger_id,description, trigger_date,local_id,pavillon_id,cubicule_id, cip)
    VALUES(DEFAULT,'Reservation annule', CURRENT_DATE, OLD.local_id, OLD.pavillon_id, OLD.cubicule_id, OLD.cip);
    RETURN old;
END;

$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS trigger_reservation_delete ON reservation;
CREATE TRIGGER trigger_reservation_delete
    BEFORE DELETE
    ON reservation
    FOR EACH ROW EXECUTE PROCEDURE procedure_reservation_delete();

