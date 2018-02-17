CREATE OR REPLACE PROCEDURE qty_geb (p_staat IN VARCHAR, p_geb OUT NUMBER) IS
BEGIN
   SELECT COUNT(s.ort_id) INTO p_geb
   FROM ort o,
        skigebiet s
   WHERE o.staat = p_staat AND
         o.ort_id = s.ort_id
   GROUP BY o.staat
   ORDER BY o.staat;
END qty_geb;
/




SELECT o.staat, COUNT(s.ort_id)
FROM ort o,
     skigebiet s
WHERE o.staat = 'AT' AND
      o.ort_id = s.ort_id
GROUP BY o.staat
ORDER BY o.staat;
