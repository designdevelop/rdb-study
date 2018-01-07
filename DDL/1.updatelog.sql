/* 로그인 시 세션값 저장하는 컬럼 추가 */
/* 2018. 01. 07 by geoseong*/
alter table user_manage_tbl add session_id varchar(45) COMMENT '로그인 시 저장되는 세션값';
