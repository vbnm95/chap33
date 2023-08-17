select instr('대한민국 만세', '만세'),
       instr('대한민국 만세', '대한'),
       instr('대한민국 만세', '민국')
  from dual;
  
select ename, substr(ename, 2, 2)
  from emp;
  
select lpad(123, 5, 0),
       length(lpad('abc', 10, '#')),
       rpad('가', 5, '#')
  from dual;

-- 수치 => 문자열
select to_char(123),
       to_char(12345, 'L00,000')
  from dual;

-- 날짜 => 문자열
select sysdate,
       to_char(sysdate, 'yyyy/mm/dd hh:mi:ss') as dt
  from dual;

-- 문자열 => 숫자
select to_number('1234'),
       to_number('01')
  from dual;
       
-- 숫자 => 날짜
select to_date(20230823),
       to_char(to_date(20230823), 'yyyy/mm/dd'),
       to_char(to_date(20230823), 'yyyy mm dd hh:mi:ss')
  from dual;
 
-- 문자열 => 날짜
select to_date('2010/10/12'),
       to_date(20230823)
  from dual;
       
select to_date(20230629),
    to_date(20230629) + 100
  from dual;
       
select sysdate,
       to_char(sysdate - 100, 'yyyy-mm-dd day hh:mi:ss') as dt100,
       to_char(sysdate + 100, 'yyyy-mm-dd dy') as dt1001,
       to_date(230503)
  from dual;
  
select *
  from emp
 where hiredate <= '20070402'; // 문자열이 자동으로 날짜 타입으로 바뀜
  
select ename, trunc(sysdate - hiredate) as workdays
  from emp;

select to_number('12,345', '00,000') + 10,
       '12345' + 10
  from dual;
  
select ename,
       trunc(sysdate - hiredate) as workdays,
       trunc(months_between(sysdate, hiredate)/12) as year,
       mod(trunc(months_between(sysdate, hiredate)), 12) as month
  from emp;
  
select to_char(add_months(sysdate, 100), 'yyyy/mm/dd hh24:mi:ss')
  from dual;

select next_day(sysdate, '월')
  from dual;
  
select last_day('20230202'),
       last_day(sysdate) - sysdate
  from dual;
  
select to_char(sysdate, 'mm/dd hh24:mi:ss') as now,
       round(sysdate),
       trunc(sysdate),
       round(sysdate, 'hh'),
       trunc(sysdate, 'hh')
  from dual;
  
select to_date('00010101'),
       to_char(to_date('00010101'), 'yyyy/mm/dd hh:mi:ss dy')
  from dual;
  
select to_char(sysdate, 'yyyy/mm/dd hh24:mi:ss dy'),
       to_char(trunc(sysdate, 'mm'), 'yyyy/mm/dd hh24:mi:ss dy')
  from dual;
  
  
  
  
  