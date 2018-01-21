-- ERD에서 테이블 만듦.
CREATE TABLE IF NOT EXISTS `mydb`.`buddy_manage_tbl` (
  `user_id` INT NOT NULL,
  `buddy_id` VARCHAR(45) NULL COMMENT '[참조키]user_manage_tbl.user_id',
  `blind_id` VARCHAR(45) NULL COMMENT '[참조키]user_manage_tbl.user_id',
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;

select * from buddy_manage_tbl comment;

-- 해당 테이블에 대한 모든 comment 조회하기
SHOW FULL COLUMNS FROM buddy_manage_tbl;

-- 테이블 코멘트user_character_tbl 수정 : http://www.adminschool.net/wiki/doku.php?id=dbms:mysql:comment
	-- 테이블이름에 따옴표를 씌우면 에러뜸.
ALTER TABLE buddy_manage_tbl COMMENT = '친구관리';

-- 테이블 컬럼 코멘트 수정
ALTER TABLE buddy_manage_tbl CHANGE COLUMN buddy_id buddy_id VARCHAR(45) NULL COMMENT '[참조키]user_manage_tbl.user_id';

-- 커밋하기.
commit;
