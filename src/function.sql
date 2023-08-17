select '12' + 10 as sum
  from dual;

select floor(10.56), floor(-10.9)
  from dual;
  
select ceil(10.56), ceil(-10.9)
  from dual;

select round(88.7654), round(88.7654, 2)
  from dual;
  
select trunc(88.7654), trunc(88.7654, 2)
  from dual;
  
select power(2,3), power(10,3)
  from dual;
  
select mod(10,3), mod(100, 59)
  from dual;
  
select trunc(dbms_random.value()*6 + 1)
  from dual;
  
select trunc(10/3)
  from dual;
  
select * 
  from country;

select *
  from country
 where upper(name) like '%KOR%';
 
select length(name) as len,
       lengthb(name) as byte,
       name
  from country;
  
select length('가A'), lengthb('가A')
  from dual;
  
select ename, 
       length(ename),
       lengthb(ename)
  from emp;
  