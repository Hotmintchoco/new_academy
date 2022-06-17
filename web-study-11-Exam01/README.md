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


**********특징
dbcp:
<Resource auth="Container"
		driverClassName="oracle.jdbc.OracleDriver" maxIdle="10"
		maxTotal="20" maxWaitMillis="-1" name="jdbc/myoracle"
		password="tiger" type="javax.sql.DataSource"
		url="jdbc:oracle:thin:@127.0.0.1:1521:xe" username="scott" />