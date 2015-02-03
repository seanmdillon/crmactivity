-- insert organizations
insert into organizations (id, title) values (1, 'Agilex');
insert into organizations (id, title) values (2, 'NG Media');


-- insert users
insert into users (username, organization) values ('dillons', 1);
insert into users (username, organization) values ('sean', 2);
insert into users (username, organization) values ('kelly', 2);


-- insert customers
insert into customers (name, organization) values ('USG', 1);
insert into customers (name, organization) values ('DIA', 1);
insert into customers (name, organization) values ('DIA INO', 1);
insert into customers (name, organization) values ('DIA NMEC', 1);
insert into customers (name, organization) values ('Model Home Clearance', 2);
insert into customers (name, organization) values ('Builder''s Design', 2);
insert into customers (name, organization) values ('Carlysle Club', 2);
insert into customers (name, organization) values ('Redd''s Trading', 2);
insert into customers (name, organization) values ('GWebLaw', 2);


commit;
