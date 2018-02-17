-- Shows a sum of all types of lifts and tracks of a single Skiresort
CREATE OR REPLACE VIEW gebiet_info AS
    SELECT * FROM Skigebiet
    NATURAL JOIN alle_piste
    NATURAL JOIN alle_lifte;
