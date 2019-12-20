select '@LastBusinessDay@', max(date) from df
union all
select '@FirstBusinessDay@', min(date) from df
union all
select 'MM.YYYY', substr(max(date),1,6) from df
union all
select 'YYYYMMDD', max(date) from df