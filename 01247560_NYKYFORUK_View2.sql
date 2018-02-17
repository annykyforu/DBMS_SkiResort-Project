-- Shows a sum of all types of tracks in a single Skiresort
CREATE OR REPLACE VIEW alle_piste AS
    SELECT Gebiet_ID, Sum(Strecke) as "Piste"
    FROM Piste
    GROUP BY Gebiet_ID;
