
create table alpha_random(
    line number(2)
);

desc alpha3;

alter table alpha_random
        add (col number(2));
        
alter table alpha_random
     modify (col number(10) not null);
     
alter table alpha_random
drop column col;

rename alpha_random to alpha3;



select deptno, job, round(avg(sal))
  from emp
group by rollup(deptno, job)
order by deptno;

select * from salgrade;

truncate table dept;

select table_name from user_tables;
select table_name from all_tables;
select table_name from dba_tables;
desc user_tables;