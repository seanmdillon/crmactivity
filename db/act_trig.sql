create or replace trigger bi_ideas
before insert or update on ideas
for each row 
declare
	l_now date := sysdate;
begin
	if INSERTING then
		if :new.id is null then
			select ideas_seq.nextval into :new.id from dual; 
		end if;
		:new.created := l_now;
		:new.last_edited_by := :new.owner;
		:new.available := l_now;
	end if;
	:new.last_edited := l_now;
end;
/


create or replace trigger bi_comments
before insert or update on comments
for each row 
declare
	l_now date := sysdate;
begin
	if INSERTING then
		select ideas_seq.nextval into :new.id from dual; 
		:new.created := l_now;
		:new.last_edited_by := :new.owner;
	end if;
	:new.last_edited := l_now;
end;
/


create or replace trigger bi_tags
before insert or update on tags
for each row 
declare
	l_now date := sysdate;
begin
	if INSERTING then
		:new.created := l_now;
		:new.last_edited_by := :new.owner;
	end if;
	:new.last_edited := l_now;
end;
/


create or replace trigger bi_topics
before insert or update on topics
for each row 
declare
	l_now date := sysdate;
begin
	if INSERTING then
		select ideas_seq.nextval into :new.id from dual; 
		:new.created := l_now;
		:new.last_edited_by := :new.owner;
	end if;
	:new.last_edited := l_now;
end;
/


create or replace trigger bi_votes
before insert or update on votes
for each row
declare
begin
	:new.voted := sysdate;
end;
/

