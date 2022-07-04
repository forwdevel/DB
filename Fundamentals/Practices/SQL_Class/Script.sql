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

SELECT stu_id FROM takes WHERE grade IS NULL;

SELECT stu_id FROM student WHERE STU_ID LIKE '1%' OR STU_ID LIKE '2%';

SELECT deptno AS 부서코드, dname AS 부서명, loc AS 지역 FROM dept;

SELECT deptno 부서코드, dname 부서명, loc 지역 FROM dept;

--oracle only
SELECT empno, ename || '(' || job || ')' employee FROM emp;

-- date
SELECT ename, round(sal/12,1),trunc(sal/12,1) FROM emp;

SELECT sysdate, extract(MONTH FROM sysdate),
EXTRACT (DAY FROM sysdate)
FROM DUAL;

SELECT SYSDATE FROM DUAL;

SELECT * FROM DUAL ;

-- Print char from without to_number
SELECT ename, hiredate, TO_NUMBER(TO_CHAR(hiredate, 'YYYY')) 입사년도,
TO_NUMBER(TO_CHAR(hiredate,'MM')) 입사월,
TO_NUMBER(TO_CHAR(hiredate,'DD')) 입사일
FROM emp;

SELECT ename, hiredate,
TO_CHAR(hiredate, 'YYYY') 입사년도,
TO_CHAR(hiredate, 'MM') 월,
TO_CHAR(hiredate, 'DD') 일
FROM EMP e ;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD') 날짜,
TO_CHAR(SYSDATE, 'YYYY. MON. DAY')문자형
-- 오라클 전용 더미 테이블
-- 아무것도 없음 => 쿼리 형식을 맞추기 위해서만 존재
FROM dual;

--case
SELECT ename, sal FROM emp;
SELECT ename,
CASE WHEN sal > 2000
THEN sal
ELSE 2000
END revised_salary
FROM emp;

SELECT loc,
CASE loc
WHEN 'NEW YORK' THEN 'EAST'
WHEN 'BOSTON' THEN 'EAST'
WHEN 'CHICAGO' THEN 'CENTER'
WHEN 'DALLAS' THEN 'CENTER'
ELSE 'ETC' END AS AREA FROM DEPT;

SELECT ename,
CASE WHEN sal >= 3000 THEN 'high'
WHEN sal >= 1000 THEN 'mid'
ELSE 'low'
END AS salary_grade
FROM emp;

-- NULL IF
SELECT empno, ename, sal, nullif(comm,0) FROM emp;
-- ==
SELECT empno, ename, sal,
CASE WHEN comm IS NULL
THEN 0
ELSE comm
END AS commission
FROM emp;

SELECT * FROM EMP e 
WHERE comm IS NULL;

SELECT * FROM EMP e 
WHERE comm IS NOT NULL;


--ROWNUM
SELECT * FROM emp
WHERE rownum <= 5;
-- (nvl : oracle only)
SELECT ename, sal, comm, sal+nvl(comm, 0) salsum FROM EMP e 
ORDER BY 4 DESC;

SELECT *
FROM (
SELECT ename, sal, comm, sal+nvl(comm,0) salsum
FROM EMP e
ORDER BY 4 DESC
)
WHERE rownum <= 5;

-- between
SELECT * FROM EMP e
WHERE sal BETWEEN 1500 AND 2500;

-- group function
SELECT dname, job,
count(*) "Total Empl", sum(sal) "Total Sal"
FROM emp, dept
WHERE dept.DEPTNO = emp.DEPTNO
GROUP BY dname, job
ORDER BY dname, job;

-- ROLLUP
SELECT dname, job, count(*) "Total Empl", sum(sal) "Total Sal"
FROM emp, dept WHERE dept.DEPTNO = emp.DEPTNO 
GROUP BY ROLLUP (dname, job)
ORDER BY dname, job;

SELECT * FROM dept;

delete FROM dept WHERE DEPTNO>=50;

-- FOR AWT TEST
CREATE TABLE login (
	id varchar2(30),
	password varchar2(30) NOT NULL,
	CONSTRAINT pk_id PRIMARY KEY(id)
);

SELECT * FROM login ORDER BY id;

INSERT INTO login values('green', 'green1234');
INSERT INTO login values('user', 'green1234');



