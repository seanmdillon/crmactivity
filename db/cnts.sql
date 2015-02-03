select 'Ideas' lbl,
       count(*) cnt
  from ideas
union all
select 'Votes' lbl,
       count(*) cnt
  from votes
union all
select 'Comments' lbl,
       count(*) cnt
  from comments
/
