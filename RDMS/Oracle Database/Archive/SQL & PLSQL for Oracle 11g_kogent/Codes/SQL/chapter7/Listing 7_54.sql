SELECT C1.CITY FROM CUSTOMER C1 WHERE C1.CNAME IN (SELECT D1.CNAME FROM DEPOSIT	D1 WHERE D1.BNAME = �VRCE�);