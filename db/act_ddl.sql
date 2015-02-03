drop table activities;
drop table tags;
drop table actions;
drop table opportunities;
drop table contacts;
drop table customers;
drop table users;
drop table organizations;

drop sequence activities_seq;


create sequence activities_seq start with 100;


------------------------------------------------
create table organizations (
	id		number		not null,
	title		varchar2(100)	not null
);

alter table organizations
add constraint orgs_pk
primary key (id);


------------------------------------------------
create table users (
	username	varchar2(200)	not null,	-- unique id for user
	organization	number 		not null
);

alter table users
add constraint users_pk
primary key (username);

alter table users
add constraint users_org_fk
foreign key (organization)
references organizations;



------------------------------------------------
create table customers (
	id		number		not null,
	name		varchar2(100)	not null,
	organization	number 		not null
);

alter table customers
add constraint customers_pk
primary key (id);

alter table customers
add constraint customers_name_uk
unique (name);

alter table customers
add constraint customers_org_fk
foreign key (organization)
references organizations;



------------------------------------------------
create table contacts (
	id		number		not null,
	first_name	varchar2(100),
	last_name	varchar2(100) 	not null,
	phone_number	varchar2(20),
	email		varchar2(200),
	customer	number,
	organization	number 		not null
);

alter table contacts
add constraint contacts_pk
primary key (id);

alter table contacts 
add constraint customers_fk
foreign key (customer)
references customers;

alter table contacts
add constraint contacts_org_fk
foreign key (organization)
references organizations;



------------------------------------------------
create table opportunities (
	id		number		not null,
	title		varchar2(200)	not null,
	customer	number		not null,
	bid_date	date,
	book_date	date,
	description	clob,
	monthly_value	number(9,2),
	one_time_value	number(9,2),
	start_date	date,
	end_date	date
);


alter table opportunities
add constraint opps_pk
primary key (id);

alter table opportunities
add constraint opps_cust_fk
foreign key (customer)
references customers;



------------------------------------------------
create table actions (
	id		number		not null,
	action		varchar2(100)	not null,
	description	clob,
	due_date	date,
	customer	number,
	contact		number,
	organization	number
);

alter table actions
add constraint actions_pk
primary key (id);

alter table actions
add constraint actions_cust_fk
foreign key (customer)
references customers;

alter table actions
add constraint actions_contacts_fk
foreign key (contact)
references contacts;

alter table actions
add constraint actions_org_fk
foreign key (organization)
references organizations;



------------------------------------------------
create table tags (
	tag		varchar2(100)	not null,
	organization	number
);

alter table tags
add constraint tags_pk
primary key (tag);

alter table tags
add constraint tags_org_fk
foreign key (organization)
references organizations;



------------------------------------------------
create table activities (
	id		number 		not null,
	activity	varchar2(250) 	not null,	
	description	clob,				
	created		date 		not null,
	customer	number,
	contact		number,
	organization	number
);

alter table activities
add constraint acts_pk
primary key (id);

alter table activities
add constraint acts_customer_fk
foreign key (customer)
references customers;

alter table activities
add constraint acts_contacts_fk
foreign key (contact)
references contacts;

alter table activities
add constraint acts_org_fk
foreign key (organization)
references organizations;







