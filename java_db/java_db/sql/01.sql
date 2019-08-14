

alter user hr identified by hr account unlock;

sqlplus hr/hr

/*니가 가지고 있는 table 목록 알려줘*/
select * from tab;


/* table 만들기 */
create tablespace bit
datafile 'c:\lib\bit.dbf'
size 30M
autoextend on next 2M maxsize UNLIMITED;

/*계정 만들기 - 오라클에서는 계정이 Schema! 계정은 대소문자 구분함 */
create user test01 identified by 1234
default tablespace bit;

--계정에 권한 부여 (test01/1234)  => 관리자가 해야함!
grant connect to test01;
/* connect는 로그인만 되는 권한 */

--resource handling까지 할 수 있는 권한  => DMA급 권한
grant connect, resource to test01;


--권한 회수
revoke connect from test01;

/*계정 삭제*/
drop user test01 cascade;



/*SCOTT/TIGER 계정 만들기 -> 계정 생성은 system/1234 로 한다~!! */
create user SCOTT identified by TIGER
default tablespace bit;

GRANT CONNECT,RESOURCE TO SCOTT IDENTIFIED BY TIGER;

ALTER USER SCOTT DEFAULT TABLESPACE bit;
ALTER USER SCOTT TEMPORARY TABLESPACE TEMP;

@c:\lib\scott.sql

show linesize;
set linesize 300;

show pagesize;
set pagesize 20;

--오라클 휴지통 비우기
purge recyclebin;

--Clear Screen
cls cr;

select TABLESPACE_name from dba_TABLESPACES;

DROP TABLE DEPT;

DROP TABLE emp;

SET TERMOUT ON
SET ECHO ON
