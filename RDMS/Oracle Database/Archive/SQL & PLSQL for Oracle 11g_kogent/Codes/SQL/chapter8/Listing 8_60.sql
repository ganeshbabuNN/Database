SELECT D.ROLLNO, SUM(A.AMOUNT)
FROM FEESPAID A, COURSE B, BATCH C, ENROLLMENT D
WHERE B.COURSENAME = �JAVA�
AND A.ROLLNO = D.ROLLNO
AND D.BATCHCODE = C.BATCHCODE
AND C.COURSECODE = B.COURSECODE
GROUP BY (D.ROLLNO)
/
