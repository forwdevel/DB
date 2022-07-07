      ID VARCHAR2(10) PRIMARY KEY,
      DIV NUMBER NOT NULL,
      COM VARCHAR2(20) NOT NULL,
      NAME VARCHAR2(30) NOT NULL,
      CREDIT NUMBER NOT NULL,
      ROOM VARCHAR2(20) NOT NULL,
      "YEAR" NUMBER NOT NULL,
      SEMESTER VARCHAR2(20) NOT NULL,
      COLLEGE VARCHAR2(30) NOT NULL,
      MAJOR VARCHAR2(30) NOT NULL,
      PROFESSOR VARCHAR2(10) NOT NULL,
      "LIMIT" NUMBER,
      "CURRENT" NUMBER NOT NULL

-- Insert rows in a Table

INSERT INTO LECTURE
VALUES
(
      'ECOP210',
      '전공선택',
      '경제통계학(영강)',
      3,
      '석원경상관 223',
      2022,
      '여름계절',
      '공공정책대학',
      '경제정책학전공',
      '제상영',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'KUDS352',
      '전공선택',
      '한반도평화체제',
      3,
      '공공정책관 329',
      2022,
      '여름계절',
      '공공정책대학',
      '통일외교안보전공',
      '김영민',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BDSC201',
      '전공필수',
      '수리통계학',
      3,
      '공공정책관 220',
      2022,
      '여름계절',
      '공공정책대학',
      '빅데이터사이언스학부',
      '이지수',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BDSC432',
      '전공선택',
      '데이터사이언스특강ii',
      3,
      '공공정책관 418',
      2022,
      '여름계절',
      '공공정책대학',
      '빅데이터사이언스학부',
      '임성수',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BDSC441',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '공공정책대학',
      '빅데이터사이언스학부',
      '전수영',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BDSC442',
      '전공선택',
      '현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '공공정책대학',
      '빅데이터사이언스학부',
      '전수영',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DSSP453',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '반도체물리전공',
      '류승윤',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DSSP454',
      '전공선택',
      '현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '반도체물리전공',
      '류승윤',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BTEC497',
      '전공선택',
      '바이오산업체현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '생명정보공학과',
      '하운환',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'BTEC498',
      '전공선택',
      '바이오산업체현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '생명정보공학과',
      '하운환',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'KFBT483',
      '전공선택',
      '식품바이오현장인턴십i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '식품생명공학과',
      '한복경',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'KFBT484',
      '전공선택',
      '식품바이오현장인턴십ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '식품생명공학과',
      '홍지연',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EMSE335',
      '전공선택',
      'CAD',
      3,
      '과학기술1관 411',
      2022,
      '여름계절',
      '과학기술대학',
      '전자기계융합공학과',
      '김재훈',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EMSE341',
      '전공선택',
      '기전응용임베디드시스템개론',
      3,
      '과학기술1관 410',
      2022,
      '여름계절',
      '과학기술대학',
      '전자기계융합공학과',
      '정현환',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EMSE360',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '전자기계융합공학과',
      '박강박',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EMSE461',
      '전공선택',
      '현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '전자기계융합공학과',
      '박강박',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN180',
      '전공선택',
      '계산수학',
      3,
      '가속기ICT융합관 323',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김종일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN209',
      '전공선택',
      '공업수학i',
      3,
      '가속기ICT융합관 323',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김종일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN220',
      '전공필수',
      '디지털시스템',
      3,
      '산학협력관 114',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김상곤',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN233',
      '전공선택',
      '데이터구조',
      3,
      '산학협력관 114',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김상곤',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN486',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김종일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN487',
      '전공선택',
      '현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김종일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'EIEN488',
      '전공선택',
      '현장실습iii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '전자및정보공학과',
      '김종일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DCCS315',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '컴퓨터융합소프트웨어학과',
      '김승연',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DCCS316',
      '전공선택',
      '현장실습ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '컴퓨터융합소프트웨어학과',
      '김승연',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DCCS417',
      '전공선택',
      '컴퓨터통신및실습',
      3,
      '과학기술2관 315',
      2022,
      '여름계절',
      '과학기술대학',
      '컴퓨터융합소프트웨어학과',
      '김승연',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DCCS417',
      '전공선택',
      '환경공학현장인턴십i',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '환경시스템공학과',
      '홍용석',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'DCCS417',
      '전공선택',
      '환경공학현장인턴십Ii',
      3,
      '미정',
      2022,
      '여름계절',
      '과학기술대학',
      '환경시스템공학과',
      '홍용석',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'ENGS265',
      '전공선택',
      '영미권생활의이해',
      3,
      '공공정책관 325',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '영미학전공',
      'Brubacher',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'ENGS314',
      '전공선택',
      '영미소설',
      3,
      '공공정책관 331',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '영미학전공',
      '이윤진',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'GLOB243',
      '전공선택',
      '생산운영관리',
      3,
      '석영경상관 219',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '글로벌경영전공',
      '김진민',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'GLOB272',
      '전공선택',
      '창업론',
      3,
      '석영경상관 221',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '글로벌경영전공',
      '김흥수',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'GLOB347',
      '전공선택',
      '데이터사이언스개론',
      3,
      '석영경상관 323',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '글로벌경영전공',
      '장훈',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'GLOB474',
      '전공선택',
      '현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '글로벌경영전공',
      '김흥수',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'GLOB476',
      '전공선택',
      '현장실습iii',
      3,
      '미정',
      2022,
      '여름계절',
      '글로벌비지니스대학',
      '글로벌경영전공',
      '김흥수',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'CULC461',
      '전공선택',
      '문화콘텐츠현장실습i',
      3,
      '미정',
      2022,
      '여름계절',
      '문화스포츠대학',
      '문화콘텐츠전공',
      '안남일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'CULC462',
      '전공선택',
      '문화콘텐츠현장실습Ii',
      3,
      '미정',
      2022,
      '여름계절',
      '문화스포츠대학',
      '문화콘텐츠전공',
      '안남일',
      30,
      10
);

INSERT INTO LECTURE
VALUES
(
      'CULC461',
      '전공선택',
      '문화콘텐츠현장실습iii',
      6,
      '미정',
      2022,
      '여름계절',
      '문화스포츠대학',
      '문화콘텐츠전공',
      '김광훈',
      30,
      10
);