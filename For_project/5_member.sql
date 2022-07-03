-- Create a new relational table with 3 columns

CREATE TABLE MEMBER 
(
      ID NUMBER(10),
      NAME VARCHAR2(20) NOT NULL,
      PW VARCHAR(20) NOT NULL,
      ROLL VARCHAR(9) NOT NULL,

      CONSTANT PK_ID PRIMARY KEY(ID)
);

COMMIT;