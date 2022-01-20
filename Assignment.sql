-- Assignment
CREATE DATABASE COMPANY;

CREATE TABLE WORKER(
	WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY FLOAT,
    JOINING_DATE VARCHAR(50),
    DEPARTMENT_ID INT
);

CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(15)
);

CREATE TABLE BONUS(
    WORKER_REF_ID INT,
    BONUS_DATE VARCHAR(50),
    BONUS_AMOUNT FLOAT
);

CREATE TABLE TITLE(
    WORKER_REF_ID INT,
    WORKER_TITLE VARCHAR(50),
    AFFECTED_FROM VARCHAR(50)
);

ALTER TABLE WORKER ALTER COLUMN JOINING_DATE DATETIME;
ALTER TABLE BONUS ALTER COLUMN BONUS_DATE DATETIME;
ALTER TABLE TITLE ALTER COLUMN AFFECTED_FROM varchar(50);

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME)
VALUES(1, 'HR');

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME)
VALUES(2, 'Admin');

INSERT INTO DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME)
VALUES(3, 'Account');

SELECT * FROM DEPARTMENT;

INSERT INTO WORKER VALUES(1,'Monika','Arora',100000,'02/20/14 9:00',1);
INSERT INTO WORKER VALUES(2,'Niharika','Verma',80000,'06/11/14 9:00',2);
INSERT INTO WORKER VALUES(3,'Vishal','Singhal',300000,'02/20/14 9:00',1);
INSERT INTO WORKER VALUES(4,'Amitabh','Singh',500000,'02/20/14 9:00',2);
INSERT INTO WORKER VALUES(5,'Vivek','Bhati',500000,'06/11/14 9:00',2);
INSERT INTO WORKER VALUES(6,'Vipul','Diwan',200000,'06/11/14 9:00',3);
INSERT INTO WORKER VALUES(7,'Satish','Kumar',75000,'01/20/14 9:00',3);
INSERT INTO WORKER VALUES(8,'Geetika','Chauhan',90000,'04/11/14 9:00',2);

SELECT * FROM WORKER;

INSERT INTO TITLE VALUES(1, 'Manager', '############');
INSERT INTO TITLE VALUES(2, 'Executive', '############');
INSERT INTO TITLE VALUES(8, 'Manager', '############');
INSERT INTO TITLE VALUES(5, 'Manager', '############');
INSERT INTO TITLE VALUES(4, 'Asst. Manager', '############');
INSERT INTO TITLE VALUES(7, 'Executive', '############');
INSERT INTO TITLE VALUES(6, 'Lead', '############');
INSERT INTO TITLE VALUES(3, 'Lead', '############');

select * from TITLE;

UPDATE WORKER
 set SALARY = SALARY + 20000
  WHERE WORKER_ID=7;

UPDATE WORKER
SET SALARY = SALARY + 20000
WHERE WORKER_ID=8;

SELECT FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE from WORKER ORDER BY FIRST_NAME;

SELECT FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE from WORKER ORDER BY FIRST_NAME, SALARY;

SELECT * FROM WORKER WHERE SALARY>=300000;

SELECT WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE from WORKER WHERE JOINING_DATE > '05/31/2014';

SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT_NAME FROM WORKER INNER JOIN DEPARTMENT
ON WORKER.DEPARTMENT_ID = DEPARTMENT.DEPARTMENT_ID;

SELECT * FROM WORKER;

SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, WORKER_TITLE FROM WORKER INNER JOIN TITLE
ON WORKER.WORKER_ID = TITLE.WORKER_REF_ID;

SELECT SUM(SALARY) FROM WORKER WHERE DEPARTMENT_ID=1;
SELECT SUM(SALARY) FROM WORKER WHERE DEPARTMENT_ID=2;
SELECT SUM(SALARY) FROM WORKER WHERE DEPARTMENT_ID=3;