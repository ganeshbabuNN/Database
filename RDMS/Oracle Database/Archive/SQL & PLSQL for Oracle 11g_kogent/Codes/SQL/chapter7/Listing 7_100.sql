SELECT B1.CITY FROM BRANCH B1 GROUP BY  B1.CITY
HAVING COUNT(B1.CITY) =(SELECT MAX(COUNT(*)) FROM
BRANCH GROUP BY CITY); 
