drop table professor;

create table professor (
	prof_id varchar2(10),
	resident_id varchar2(14) not null,
	name varchar2(10) not null,
	dept_id varchar2(10),
	position varchar2(10),
	year_emp int,
	constraint pk_professor primary key(prof_id),
	constraint fk_professor foreign key(dept_id) references department(dept_id)
);

insert into
	professor
values
(
		'92001',
		'590327*1839240',
		'���±�',
		'920',
		'����',
		1997
	);

insert into
	professor
values
(
		'92002',
		'690702*1350026',
		'����',
		'920',
		'�α���',
		2003
	);

insert into
	professor
values
(
		'92301',
		'741011*2765501',
		'�ּ���',
		'923',
		'�α���',
		2005
	);

insert into
	professor
values
(
		'92302',
		'750728*1102458',
		'���¼�',
		'923',
		'����',
		1999
	);

insert into
	professor
values
(
		'92501',
		'620505*1200546',
		'��ö��',
		'925',
		'������',
		2007
	);

insert into
	professor
values
(
		'92502',
		'740101*1830264',
		'��μ�',
		'925',
		'�α���',
		2005
	);