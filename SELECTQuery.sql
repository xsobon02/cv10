-- vypis studentov
SELECT a.ID,FirstName AS Firstname, SurName AS Surname, SubShort AS Subject FROM Students a LEFT JOIN RegSubjects b ON a.ID = b.ID GROUP BY a.ID,b.ID,FirstName, SurName, SubShort
-- vypis priezvisk a pocet studentov s rovnakym priezviskom
SELECT SurName AS Surname, COUNT(ID) as Quantity FROM Students GROUP BY SurName
-- vypis predmetov ktore maju zapisane menej ako 3 studenti
SELECT SubShort AS Subject FROM RegSubjects GROUP BY SubShort HAVING COUNT(ID) < 3
-- vypis najlepsieho,najhorsieho a priemerneho hodnotenia predmetov, vypis poctu hodnotenych studentov
SELECT SubShort AS Subject, MAX(Points) AS Best, MIN(Points) AS Worst, AVG(Points) AS Average, COUNT(ID) AS Quantity FROM Evaluations GROUP BY SubShort

