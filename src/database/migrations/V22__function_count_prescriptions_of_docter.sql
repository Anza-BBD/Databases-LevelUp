CREATE OR REPLACE FUNCTION GetPrescriptionCount(doctor_id bigint)
RETURNS int AS $$
DECLARE
    prescription_count int;
BEGIN
    SELECT COUNT(*) INTO prescription_count
    FROM Prescriptions
    WHERE DoctorID = doctor_id;

    RETURN COALESCE(prescription_count, 0);
END;
$$ LANGUAGE plpgsql;
