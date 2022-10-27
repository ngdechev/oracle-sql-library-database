-- Търсене / Заемане на книги по: автор, ключови думи от наименованието, жанр.
 
SELECT Kniga.Ime AS zaglavieKniga, Kniga.Janr, Avtor.Ime AS imeAvtor, Kniga.Zaemane_na_kniga,
 
Kniga.Availability FROM Kniga INNER JOIN Avtor ON kniga.Avtor_Avtor_id = Avtor.Avtor_id
 
WHERE Kniga.Ime LIKE '%Snqg%' OR Kniga.Janr LIKE '%Piesa%' OR Avtor.Ime LIKE '%Valeri Petrov%';
 
-- Справки за:
 
-- заети книги от читател
 
SELECT Kniga.kniga_id, Kniga.Ime AS Kniga_Ime, Kniga.Godina, Kniga.Janr, Kniga.Zaemane_na_kniga AS Chitatel
 
FROM Kniga
 
INNER JOIN Chitatel ON Kniga.Zaemane_na_kniga = Chitatel.Ime;
 
-- невърнати книги, подредени по дата
 
SELECT * FROM Kniga WHERE Availability = 'N' ORDER BY Godina;
