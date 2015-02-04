create or replace trigger bi_organizations
before insert or update on organizations
for each row 
declare
begin
	if INSERTING then
		if :new.id is null then
			-- TODO: remove this to go production.  this null is to self assign id's for organizations in test
			null;
			--select activities_seq.nextval into :new.id from dual; 
		end if;
	end if;
end;
/



create or replace trigger bi_actions
before insert or update on actions
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


