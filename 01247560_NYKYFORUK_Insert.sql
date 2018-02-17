INSERT INTO Ort Values (501, 'AT','Wien');
INSERT INTO Ort Values (502, 'AT','Burgenland');
INSERT INTO Ort Values (503, 'AT','Niederoesterreich');
INSERT INTO Ort Values (504, 'AT','Oberoesterreich');
INSERT INTO Ort Values (505, 'AT','Steiermark');
INSERT INTO Ort Values (506, 'AT','Salzburg');
INSERT INTO Ort Values (507, 'AT','Kaernten');
INSERT INTO Ort Values (508, 'AT','Tirol');
INSERT INTO Ort Values (509, 'AT','Voralberg');

INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Gaislachkogl', 3058);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Tiefenbachkogl', 3250);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Schwarze Schneide', 3340);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Salzburg'), 'Kitzsteinhorn',  3203);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Salzburg'), 'Maiskogel',1730);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Piz Val Gronda', 2812);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Palinkopf', 2864);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Greitspitze', 2872);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 'Idalp',2320);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 'Planai',1906);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 'Hauser Kaibling', 2015);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 'Hochwurzen', 1850);
INSERT INTO Berg (Ort_ID, Name, Hoehe) Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 'Reiteralm', 1860);

INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 501, 'Alphof Soelden Hotel', 'Dorfstrasse 202', 6450, 'Soelden');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 502, 'Hotel Alpenfriede', 'Hochsoeldenstrasse 9', 6450, 'Soelden');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Salzburg'), 503, 'Hotel Kaprunerhof', 'Schulstrasse 21', 5710, 'Kaprun');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Salzburg'), 504, 'Hotel Sonnblick', 'Schlosstrasse 1', 5710, 'Kaprun');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 505, 'Elizabeth Arthotel', 'Fimbabahnweg 4', 6561, 'Ischgl');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 506, 'Trofana Royal', 'Dorfstrasse 95', 6561, 'Ischgl');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 507, 'Falkensteiner Hotel Schladming', 'Europaplatz 613', 8970, 'Schladming');
INSERT INTO Hotel Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 508, 'Hotel Erlebniswelt Stocker', 'Rohrmoosstrasse 215', 8971, 'Rohrmoos');

INSERT INTO Skigebiet Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 501, 'Soelden');
INSERT INTO Skigebiet Values ((SELECT Ort_ID from Ort WHERE Land = 'Salzburg'), 502, 'Kaprun');
INSERT INTO Skigebiet Values ((SELECT Ort_ID from Ort WHERE Land = 'Tirol'), 503, 'Ischgl');
INSERT INTO Skigebiet Values ((SELECT Ort_ID from Ort WHERE Land = 'Steiermark'), 504, 'Schladming');

INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2001, 'Schlepplifte', 8);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2002, 'Sessellifte', 15);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2003, 'Kabinenbahn', 7);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2004, 'Standseilbahn', 1);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2005, 'Schlepplifte', 5);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2006, 'Sessellifte', 5);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2007, 'Kabinenbahn', 5);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2008, 'Pendelbahn', 1);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2009, 'Standseilbahn', 1);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2010, 'Schlepplifte', 13);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2011, 'Sessellifte', 25);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2012, 'Kabinenbahn', 4);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2013, 'Pendelbahn', 3);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2014, 'Schlepplifte', 14);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2015, 'Sessellifte', 22);
INSERT INTO Lift Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2016, 'Kabinenbahn', 8);

INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2001, 'Leicht', 70);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2002, 'Mittel', 45);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2003, 'Schwer', 29);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 2004, 'Freeride', 2);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2005, 'Leicht', 13);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2006, 'Mittel', 25);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2007, 'Schwer', 3);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 2008, 'Freeride', 11);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2009, 'Leicht', 39);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2010, 'Mittel', 150);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2011, 'Schwer', 34);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 2012, 'Freeride', 15);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2013, 'Leicht', 46);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2014, 'Mittel', 68);
INSERT INTO Piste Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 2015, 'Schwer', 8);

INSERT INTO Rettung Values (501, 'Bergrettung Oesterreich Zentrale', '140', NULL);
INSERT INTO Rettung Values (502, 'Bergrettung Soelden', '140', 501);
INSERT INTO Rettung Values (503, 'OEBRD Kaprun', '0654720324', 501);
INSERT INTO Rettung Values (504, 'Bergrettung Ischgl', '054445286', 501);
INSERT INTO Rettung Values (505, 'Bergrettung Schladming', '140', 501);

INSERT INTO Einsatz Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 502);
INSERT INTO Einsatz Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 503);
INSERT INTO Einsatz Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 504);
INSERT INTO Einsatz Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 505);

INSERT INTO Skischule (Gebiet_ID, Name, Strasse, PLZ, Ort) Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Soelden'), 'Privatschischule Alpinrocker', 'Rechenaustrasse 1', 6450, 'Soelden');
INSERT INTO Skischule (Gebiet_ID, Name, Strasse, PLZ, Ort) Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Kaprun'), 'Ski Dome Oberschneider GmbH', 'Nikolaus-Gassner-Strasse 21', 5710, 'Kaprun');
INSERT INTO Skischule (Gebiet_ID, Name, Strasse, PLZ, Ort) Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Ischgl'), 'Skischule Ischgl KG', 'Silvrettaplatz 2', 6561, 'Ischgl');
INSERT INTO Skischule (Gebiet_ID, Name, Strasse, PLZ, Ort) Values ((SELECT Gebiet_ID from Skigebiet WHERE Bezeichnung = 'Schladming'), 'Alpinschule Dachstein', 'Ramsau 233', 8972, 'Ramsau am Dachstein');

INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Privatschischule Alpinrocker'), 7854025551, 'Dorothea', 'Sohn', 'Teilzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Privatschischule Alpinrocker'), 4435058392, 'Malte', 'Waldeck', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Privatschischule Alpinrocker'), 3123617682, 'Gerd', 'Pfannenmueller', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Ski Dome Oberschneider GmbH'), 8710765100, 'Christine', 'Zorn', 'Teilzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Ski Dome Oberschneider GmbH'), 5276992200, 'Joshua', 'Pelzer', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Ski Dome Oberschneider GmbH'), 6252365024, 'Detlef', 'Dittmer', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Skischule Ischgl KG'), 6151014757, 'Constantin', 'Pauls', 'Teilzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Skischule Ischgl KG'), 9061774466, 'Manfred', 'Kröber', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Skischule Ischgl KG'), 6283738369, 'Leonie', 'Presslein', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Alpinschule Dachstein'), 1847886569, 'Inge', 'Wilutzky', 'Teilzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Alpinschule Dachstein'), 6886515736, 'Alex', 'Holzwarth', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Alpinschule Dachstein'), 9982636569, 'Alex', 'Stender', 'Vollzeit');
INSERT INTO MitarbeiterIn Values ((SELECT Skischule_ID from Skischule WHERE Name = 'Alpinschule Dachstein'), 5678116372, 'Otto', 'Steen', 'Vollzeit');

INSERT INTO Lehrer Values (4435058392, 4001, 'Snowboard');
INSERT INTO Lehrer Values (3123617682, 4002, 'Landesskilehrer');
INSERT INTO Lehrer Values (5276992200, 4003, 'Snowboard');
INSERT INTO Lehrer Values (6252365024, 4004, 'Landesskilehrer');
INSERT INTO Lehrer Values (9061774466, 4005, 'Snowboard');
INSERT INTO Lehrer Values (6283738369, 4006, 'Landesskilehrer');
INSERT INTO Lehrer Values (6886515736, 4007, 'Snowboard');
INSERT INTO Lehrer Values (9982636569, 4008, 'Landesskilehrer');
INSERT INTO Lehrer Values (5678116372, 4009, 'Landesskilehrer');

INSERT INTO Buerokraft Values (7854025551, 4001);
INSERT INTO Buerokraft Values (8710765100, 4002);
INSERT INTO Buerokraft Values (6151014757, 4003);
INSERT INTO Buerokraft Values (1847886569, 4004);
