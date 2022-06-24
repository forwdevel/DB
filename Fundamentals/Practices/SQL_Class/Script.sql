SELECT * FROM PROFESSOR;
SELECT * FROM STUDENT;
SELECT * FROM TAKES;
SELECT * FROM EMP;

SELECT name, dept_name 
FROM DEPARTMENT, STUDENT 
WHERE department.DEPT_ID = student.DEPT_ID;

SELECT * 
FROM DEPARTMENT, STUDENT 
WHERE department.DEPT_ID = student.DEPT_ID;

-- 주석 처리
SELECT address FROM student;

SELECT DISTINCT address FROM STUDENT;

SELECT name, 2012-year_emp FROM PROFESSOR ;


SELECT s.NAME,s.STU_ID,d.DEPT_NAME 
FROM STUDENT s, DEPARTMENT d
WHERE s.DEPT_ID =d.DEPT_ID;

SELECT *
FROM student, DEPARTMENT
WHERE student.DEPT_ID = department.DEPT_ID;

SELECT student.STU_ID 
FROM STUDENT ,DEPARTMENT 
WHERE student.DEPT_ID = department.DEPT_ID 
	AND student.YEAR = 3 
	AND department.DEPT_NAME ='컴퓨터공학과';
	
SELECT name, stu_id
FROM STUDENT s 
WHERE YEAR = 3 OR YEAR = 4;	

SELECT name, stu_id
FROM STUDENT s 
WHERE YEAR = 3 OR YEAR = 4
ORDER BY name, STU_ID;

SELECT s2.name
FROM STUDENT s1, STUDENT s2
WHERE s1.ADDRESS = s2.ADDRESS AND s1.NAME = '김광식';

-- RENAME
SELECT name 이름, POSITION AS 직위, 2022-YEAR_emp 재직연수
FROM PROFESSOR;

-- LIKE
SELECT *
FROM STUDENT s 
WHERE s.NAME LIKE '김%';

SELECT *
FROM STUDENT s 
WHERE s.NAME LIKE '%정';

SELECT *
FROM  STUDENT
WHERE RESIDENT_ID LIKE '______*2______' OR  RESIDENT_ID LIKE '______*4______';

SELECT *
FROM  STUDENT
WHERE RESIDENT_ID LIKE '%*2%' OR  RESIDENT_ID LIKE '%*4%';

SELECT resident_id FROM STUDENT s ;

SELECT * 
FROM STUDENT
WHERE RESIDENT_ID LIKE '8%';

-- SET OPERATION
SELECT name FROM STUDENT 
UNION ALL --with duplication
SELECT name FROM PROFESSOR;

SELECT name FROM STUDENT 
UNION --without duplication
SELECT name FROM PROFESSOR;

SELECT dept_id FROM STUDENT
UNION
SELECT DEPT_ID FROM PROFESSOR;

SELECT s.stu_id
FROM STUDENT s,DEPARTMENT d ,TAKES t 
WHERE s.DEPT_ID = d.DEPT_ID  
	AND t.STU_ID = s.STU_ID 
	AND DEPT_name = '컴퓨터공학과' 
	AND grade = 'A+';

select 	stu_id
from 	student s, department d
where 	s.dept_id = d.dept_id and dept_name='컴퓨터공학과'
intersect
select 	stu_id
from 	takes
where 	grade = 'A+';

SELECT s.stu_id, dept_name, grade
FROM STUDENT s,DEPARTMENT d ,TAKES t 
WHERE grade = 'A+' AND s.dept_id = d.dept_id;

-- JOIN ON
SELECT s.STU_ID, s.name, t.GRADE
FROM student s
JOIN TAKES t
ON s.STU_ID = t.stu_id
WHERE t.grade = 'A+';

-- OUTER JOIN
SELECT title, credit, year, semester
FROM COURSE RIGHT OUTER JOIN CLASS
USING(COURSE_id); -- standard SQL

SELECT title, credit, year, semester
FROM COURSE full OUTER JOIN CLASS
USING(COURSE_id); -- standard SQL

-- COUNT
SELECT COUNT(*) FROM emp;
SELECT COUNT(comm) FROM emp;
SELECT COUNT(mgr) FROM emp;
SELECT COUNT(DISTINCT dept_id) FROM student;

SELECT COUNT(*) FROM STUDENT s, DEPARTMENT d
WHERE s.DEPT_ID = d.DEPT_ID  AND d.DEPT_NAME ='컴퓨터공학과';

-- SUM
SELECT SUM(SAL) FROM EMP;
SELECT SUM(SAL) FROM EMP WHERE JOB = 'ANALYST';
SELECT SUM(SAL) FROM EMP e, DEPT d WHERE  e.DEPTNO = d.DEPTNO AND dname = 'RESEARCH';
SELECT sum(SAL) FROM EMP WHERE JOB = 'CLERK';
SELECT sum(SAL) FROM EMP WHERE JOB = 'MANAGER';
SELECT sum(SAL) FROM EMP WHERE JOB = 'SALESMAN';
SELECT sum(SAL) FROM EMP WHERE JOB = 'PRESIDENT';

-- AVG
SELECT avg(2012 - YEAR_EMP) FROM PROFESSOR;

-- MAX, MIN
SELECT MAX(SAL) FROM EMP e ,DEPT d WHERE e.DEPTNO =d.DEPTNO AND dname = 'ACCOUNTING';
SELECT MIN(SAL) FROM EMP e ,DEPT d WHERE e.DEPTNO =d.DEPTNO AND dname = 'ACCOUNTING';

-- GROUP BY
SELECT DEPT_ID ,COUNT(*) 
FROM STUDENT s 
GROUP BY DEPT_ID;

SELECT dept_name, COUNT(*) 
FROM STUDENT s ,DEPARTMENT d
WHERE s.DEPT_ID = d.DEPT_ID 
GROUP BY dept_name;

SELECT dname, COUNT(*), AVG(SAL), MAX(SAL), MIN(SAL)  
FROM EMP e,DEPT d 
WHERE e.DEPTNO = d.DEPTNO 
GROUP BY dname;

-- VIEW
CREATE OR REPLACE VIEW v_takes AS
SELECT stu_id, class_id
FROM takes
WITH READ ONLY;

SELECT *
FROM V_TAKES;

CREATE OR REPLACE VIEW cs_student AS
SELECT s.stu_id, s.resident_id, s.name, s.YEAR, s.address, s.dept_id
FROM student s, department d
WHERE s.DEPT_ID = d.DEPT_ID AND d.DEPT_NAME = '컴퓨터공학과';

SELECT * FROM CS_STUDENT;

SELECT * FROM V_TAKES WHERE stu_id = '1292001';

-- takes table will be updated same time
INSERT INTO V_TAKES values('1292502', 'C101-01');

SELECT * FROM TAKES;