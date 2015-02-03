create or replace trigger bi_actions
before insert or update on actions
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/



create or replace trigger bi_activities
before insert or update on activities
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
		:new.created := sysdate;
	end if;
end;
/


create or replace trigger bi_contacts
before insert or update on contacts
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/


create or replace trigger bi_customers
before insert or update on customers
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/


create or replace trigger bi_opportunities
before insert or update on opportunities
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
		:new.created := sysdate;
	end if;
end;
/


create or replace trigger bi_tags
before insert or update on tags
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/


create or replace trigger bi_users
before insert or update on users
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/


