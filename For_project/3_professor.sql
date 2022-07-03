-- Create a new relational table with 3 columns

CREATE TABLE PROFESSOR 
(
      ID NUMBER(9),
      NAME VARCHAR2(20) NOT NULL,
      COLLEGE VARCHAR(20) NOT NULL,
      MAJOR VARCHAR2(20) NOT NULL,
      ENROLL NUMBER(4) NOT NULL,
      
      CONSTANT PK_ID PRIMARY KEY(ID)
);

COMMIT;