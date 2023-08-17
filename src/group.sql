
select * from city; 
select count(*) from city;
select trunc(population, -3)
  from city;
select count(*), to_char(sum(population), '000,000,000,000,000')
  from city;
select count(*), to_char(sum(population), '999,999,999,999,999')
  from city;
select count(*), count(comm), count(empno)
  from emp;
select count(*), 
       count(population), 
       to_char(sum(population), '999,999,999,999,999,999') 합계, 
       to_char(round(avg(population)), '999,999,999,999,999,999') 평균,
       trunc(stddev(population)),
       trunc(variance(population))
  from country;

select deptno, round(avg(sal))
  from emp
group by deptno
having avg(sal) > 500;

select continent, 
       count(*) 국가수, 
       to_char(sum(population), '999,999,999,999,999') 총인구,
       to_char(round(avg(population)), '999,999,999,999,999') 평균인구
  from country
group by continent
having count(*) > 30
order by 총인구 desc;

select *
  from country
 where continent = 'Antarctica';

select distinct continent, region
  from country;
  
select continent, region,
       count(*) as cnt,
       to_char(round(avg(population)), '999,999,999,999') as avg,
       to_char(round(sum(population)), '999,999,999,999') as total
  from country
group by continent, region
having continent = 'Asia'
order by continent, cnt desc;

select continent, region,
       count(*) as cnt,
       to_char(round(avg(population)), '999,999,999,999') as avg,
       to_char(round(sum(population)), '999,999,999,999') as total
  from country
 where continent = 'Asia'
group by continent, region
having count(*) > 10
order by continent, cnt desc;

select continent, region,
       count(*) as cnt,
       to_char(round(avg(population)), '999,999,999,999') as avg,
       to_char(round(sum(population)), '999,999,999,999') as total
  from country
 where continent like 'A%'
group by continent, region
order by continent, cnt desc;

select * from emp;
select sum(sal), avg(comm)
  from emp;
  
select deptno, max(sal)||'달러' 최대급여, min(sal)||'달러' 최소급여
  from emp
group by deptno
order by deptno;

select deptno, job, round(avg(sal))
  from emp
group by rollup(deptno, job)
order by deptno;