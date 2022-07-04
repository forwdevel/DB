-- Create a new relational table with 3 columns

CREATE TABLE STAFF 
(
      ID NUMBER(6),
      NAME VARCHAR2(20) NOT NULL,
      ENROLL NUMBER(4) NOT NULL,

      CONSTANT PK_ID PRIMARY KEY(ID)
);

COMMIT;