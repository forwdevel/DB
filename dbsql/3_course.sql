DROP TABLE course;
create table course 
	(
		course_id 	varchar2(10) ,
		title 		varchar2(14) 	not null,
		credit 		int,
		constraint 	pk_course 	primary key(course_id)
	);
insert into course values('C101', 'computer', 3);
insert into course values('C102', 'datastructure', 3);
insert into course values('C103', 'database', 4);
insert into course values('C301', 'OS', 3);
insert into course values('C302', 'compstructure', 3);
insert into course values('C303', 'mathmatics', 4);
insert into course values('C304', 'objectprog', 4);
insert into course values('C501', 'AI', 3);
insert into course values('C502', 'algorithm', 2);
