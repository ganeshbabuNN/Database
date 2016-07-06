SELECT CNAME FROM DEPOSIT,BRANCH  WHERE DEPOSIT.AMOUNT IN (SELECT MAX(D1.AMOUNT) 	
FROM DEPOSIT D1, BRANCH B1
WHERE D1.BNAME='VRCE' AND B1.CITY ='NAGPUR'
AND B1.BNAME= D1.BNAME)AND  BRANCH.BNAME = 'VRCE'
AND BRANCH.CITY ='NAGPUR' AND BRANCH.BNAME= DEPOSIT.BNAME; 
