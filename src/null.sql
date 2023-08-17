select nvl(null, 100),
       nvl(90, 100)
  from dual;
  
select nvl2(null, 0, 200),
       nvl2(99,100, 200)
  from dual;
  
select coalesce(null, null, 90, null, null, 100)
  from dual;
  
select ename, deptno
  from emp;
  
select * from dept;

select empno, ename, deptno,
decode(deptno, 10, '경리부',
               20, '인사부',
               30, '영업부',
               '전산부') as 부서,
decode(gender, 'F', '여성',
               'M', '남성') as 성별
from emp;

select empno, ename, sal,
    case when sal >= 500 then '상'
         --when sal >= 300 and sal < 500 then '중'
         when sal between 300 and 500 then '중'
         else '하'
    end as grade
  from emp;
  
select 
    case when sal >= 500 then '상'
         --when sal >= 300 and sal < 500 then '중'
         when sal between 300 and 500 then '중'
         else '하'
    end as grade
  from emp;
  
select substr(ename, 2)
  from emp;


