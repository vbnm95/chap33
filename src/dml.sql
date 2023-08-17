select * from dept;

desc dept;

insert into dept values(50, '개발부', '부산');

rollback;

insert into dept
(dname, loc, deptno) 
values
('개발부', '부산', 50);

insert into dept 
(deptno, dname)
values
(60, '개발부');

create table dept2 (
    deptno number(20) primary key,
    dname  varchar2(20 char) not null,
    loc    varchar2(20 char) default '춘천'
);

desc dept2;

select * from dept2;

insert into dept2 values(10, '영업부', '부산');

insert into dept2 
(deptno, dname)
values
(30, '총무부');

drop table dept2;

desc emp;

select * from emp;

insert into emp(empno, ename) values(2000, '홍길동');
insert into emp(empno, ename, deptno) values(2000, '홍길동', 70);
delete from emp where ename='홍길동';

update dept
   set dname = '개발부',
       loc   = '춘천'
 where deptno = 10;
 
delete from emp
where empno = 1001; 

delete from emp
where comm is null;

delete from emp where deptno=30;
delete from dept
where deptno = 30;

commit;
rollback;
rollback to emp1;

select * from dept;
select * from emp;

delete from emp where deptno in (10, 30);
savepoint emp1;

update emp
   set ename = '홍길동';
savepoint emp2;

insert into emp(empno, ename) values(2000, '홍길동');

