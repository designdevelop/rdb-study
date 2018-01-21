/* 테이블 생성 */
create table [테이블명](id int,name varchar(20));
/* ERD에서 테이블 만듦. */
CREATE TABLE IF NOT EXISTS `mydb`.`buddy_manage_tbl` (
  `user_id` INT NOT NULL,
  `buddy_id` VARCHAR(45) NULL COMMENT '[참조키]user_manage_tbl.user_id',
  `blind_id` VARCHAR(45) NULL COMMENT '[참조키]user_manage_tbl.user_id',
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;

/* 컬럼 추가 */
alter table [테이블명] add [컬럼명] [타입] [옵션]; 
ex) alter table [테이블명] add [컬럼명] varchar(100) not null default '0'; 

/* 컬럼 삭제 */
alter table [테이블명] drop [컬럼명];

/* 컬럼명 변경 및 타입 변경 */
alter table [테이블명] change [컬럼명] [변경할컬럼명] varchar(12);

/* 컬럼 타입 수정 */
alter table [테이블명] modify [컬럼명] varchar(14);

/* 테이블명 수정 */
alter table [테이블명] rename [변경할테이블명];

/* 테이블 삭제 */
drop table [테이블명];


출처: http://mcpaint.tistory.com/194 [MC빼인트와 함께]