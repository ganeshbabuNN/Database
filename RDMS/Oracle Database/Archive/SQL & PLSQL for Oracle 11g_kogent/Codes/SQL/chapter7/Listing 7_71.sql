SELECT SUM(D1.AMOUNT) FROM DEPOSIT D1,CUSTOMER C1 WHERE D1.CNAME=C1.CNAME AND 	C1.CITY IN  (SELECT C2.CITY FROM CUSTOMER C2 WHERE C2.CNAME = 'SUNIL');