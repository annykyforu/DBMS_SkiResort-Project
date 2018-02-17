-- Shows a sum of all types of lifts in a single Skiresort
CREATE OR REPLACE VIEW alle_lifte AS
    SELECT Gebiet_ID, Sum(Anzahl) AS "Lifte"
    FROM Lift
    GROUP BY Gebiet_ID;
