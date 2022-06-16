**********환경
1.window10
2.sts(Version:3.9.17.RELEASE)
3.tomcat9.0
4.oracle11g
5.lombok.jar
6.jstl.jar
7.standard.jar
8.ojdbc6.jar
9.cos.jar


**********DB
create table board(
    num number(5) primary key,
    pass varchar2(30),
    name varchar2(30),
    email varchar2(30),
    title varchar2(50),
    content varchar2(1000),
    readcount number(4) default 0,
    writedate date default sysdate
);

create SEQUENCE board_seq start with 1 increment by 1;

insert into board (num, name, email, pass, title, content)
values(BOARD_SEQ.NEXTVAL, '1234', '성윤정', 'pinksung@nate.com', '첫방문', '반갑습니다.');
insert into board (num, name, email, pass, title, content)
values(BOARD_SEQ.NEXTVAL, '1234', '성윤정', 'pinksung@nate.com', '김밥', '맛있어요.');
insert into board (num, name, email, pass, title, content)
values(BOARD_SEQ.NEXTVAL, '1234', '전수빈', 'raccon@nate.com', '고등애', '일식입니다.');
insert into board (num, name, email, pass, title, content)
values(BOARD_SEQ.NEXTVAL, '1111', '전원지', 'one@nate.com', '갯골마을', '돼지삼겹살이 맛있습니다.');

**********특징
dbcp:
<Resource auth="Container"
		driverClassName="oracle.jdbc.OracleDriver" maxIdle="10"
		maxTotal="20" maxWaitMillis="-1" name="jdbc/myoracle"
		password="tiger" type="javax.sql.DataSource"
		url="jdbc:oracle:thin:@127.0.0.1:1521:xe" username="scott" />