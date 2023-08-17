select empno, ename
  from emp;

-- 크로스 조인 예전 방식
select *
  from dept, emp;

-- ANSI 방식
select *
  from dept cross join emp;

-- Equi Join
select empno, ename, dname, dept.deptno, emp.deptno
  from dept, emp
 where dept.deptno = emp.deptno;

-- Inner Join
select a.empno, a.ename, b.dname, b.loc
  from emp a inner join dept b
    on a.deptno = b.deptno;

select * from salgrade;

-- NoN-Equi Join
select empno, ename, sal, grade, losal, hisal
  from emp, salgrade
 where sal between losal and hisal;

-- Inner Join
select empno, ename, sal, grade, losal, hisal
  from emp a inner join salgrade b
    on a.sal between b.losal and b.hisal;

-- Equi Join & Outer Join
select a.deptno, dname, ename, empno
  from dept a, emp b
 where a.deptno = b.deptno(+)
order by deptno;

-- Outer Join
-- (+) 위치에 따라서 right or left
select a.deptno, dname, ename, empno
  from dept a left outer join emp b
    on a.deptno = b.deptno
order by deptno;



select dept.dname, empno, ename, sal, grade, losal, hisal
  from dept, emp, salgrade
 where dept.deptno = emp.deptno and sal between losal and hisal
order by dname;

select *
  from country
 where code = 'KOR';
 
select *
  from city
 where country_code = 'KOR';
 
select a.name countryname, b.name cityname, b.district
  from country a join city b
    on a.code = b.country_code
   and a.code in ('KOR', 'USA');
   
select a.name, b.name, b.district, b.population
  from country a inner join city b
    on a.code = b.country_code
 where a.code = 'KOR'
order by b.district;

-- Self Join
select e.ename, e.mgr, m.empno, m.ename 직속상관
  from emp e, emp m
 where e.mgr = m.empno (+);

select * from emp;

with a as (
    select * from emp
)
select * from a;

with t1 as (
    select 1 as no, 'A' as ch from dual union
    select 2 as no, 'B' as ch from dual union
    select 3 as no, 'C' as ch from dual union
    select 4 as no, 'D' as ch from dual
), t2 as (
    select 'C' as ch, '@' as sp from dual union
    select 'D' as ch, '?' as sp from dual union
    select 'E' as ch, '$' as sp from dual union
    select 'F' as ch, '!' as sp from dual
)
select *
  from t1 full join t2
    on t1.ch = t2.ch;
    
desc user_constraints;

select constraint_name, constraint_type, table_name
  from user_constraints
 where table_name in ('EMP', 'DEPT');