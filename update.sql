-- Редактирам записите в таблицата „Kniga“

UPDATE Kniga
 
SET Ime = 'Pod Igoto'
 
WHERE kniga_id = 1;
 
UPDATE Kniga
 
SET Godina = 1968
 
WHERE Ime = 'Snqg';
 
UPDATE Kniga
 
SET Ime = 'Kosachi', Godina = 1902
 
WHERE kniga_id = 3;
 
-- Редактирам записите в таблицата „Avtor“

UPDATE Avtor
 
SET Ime = "Jordan Jovkov"
 
WHERE Avtor_id = 1001;

-- Редактирам записите в таблицата „Chitatel“

UPDATE Chitatel
 
SET Ime = "Tihomir"
 
WHERE Chitatel_id = 3;
 
UPDATE Chitatel
 
SET Telefon = "0878436754"
 
WHERE Ime = "Petq";

-- Редактирам записите в таблицата „Izdatelstvo“
 
UPDATE Izdatelstvo
 
SET Izdatelstvo_id = 100
 
WHERE Izdatelstvo_id = 101;
 
-- Редактирам записите в таблицата „Slujitel“
 
UPDATE Slujitel
 
SET Ime = "Ivona"
 
WHERE Slujitel_id = 106;
 
UPDATE Slujitel
 
SET Telefon = "0878879641"
 
WHERE Ime = 'Ivona';
 
UPDATE Slujitel
 
SET Telefon = "0878457863", Poziciq = "Konsultant"
 
WHERE Slujitel_id = 102;

-- Редактирам записите в таблицата „Zaemane“
 
UPDATE Zaemane
 
SET Zaemane_Date = '2019-02-15'
 
WHERE Zaemane_id = 4;
 
UPDATE Zaemane
 
SET Srok = '2019-04-04'
 
WHERE Zaemane_Date = '2019-03-01'
 
UPDATE Zaemane
 
SET Zaemane_Date = '2019-02-16', Srok = '2019-03-16'
 
WHERE Zaemane_id= 2;