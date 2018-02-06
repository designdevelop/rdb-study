/* MySQL접속 Session 확인 하기 */
show processlist;

/* 최대 사용자 접속수 보기 */
show variables like '%max_connect%'; 
	/* 최대 사용자 접속 허용수 변경 하기 */ 
	-- "/etc/my.cnf"을 열어 "max_connections = 3000"를 추가 해주고 재시작 한다.

/* Connection 수 확인하기 */
show status like 'Threads_connected';

/* 동작중인 Connection 수 확인하기 */
show status like 'Threads_running';

/* 세션 변수 확인하기 */
show session variables like 'auto_increment_increment';