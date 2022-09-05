-- 스키마 생성
drop schema greatescape;
CREATE SCHEMA greatescape;

-- 회원 테이블
CREATE TABLE tbl_member(
	member_num INT PRIMARY KEY AUTO_INCREMENT,
    member_id  VARCHAR(50) unique NOT NULL,
    member_pw VARCHAR(200) NOT NULL,
    member_name VARCHAR(50) NOT NULL,
    member_gender VARCHAR(10) NOT NULL,
    member_birth VARCHAR(20) NOT NULL,
    member_phone VARCHAR(50) NOT NULL,
    member_address VARCHAR(100),
    member_address_detail VARCHAR(100),
    member_email VARCHAR(50) NOT NULL,
    member_leave VARCHAR(1) DEFAULT 'Y',
    member_master VARCHAR(1) DEFAULT 'N',
    member_regdate TIMESTAMP DEFAULT now(),
    member_updatedate TIMESTAMP
);
-- 관리자 계정
INSERT INTO tbl_member(member_id,member_pw,member_name,member_gender,member_birth,member_phone,member_email,member_master) values('master','$2a$10$xU11w5EBhN9ehliUM3SRSuJ2tNDaIEHCGpwXoKFa9hWDkl.KmZYc.','총관리자','남성','19930330','01064800945','ceo@greatescape.net','Y');

-- 상품 테이블
CREATE TABLE tbl_product(
	product_num INT PRIMARY KEY AUTO_INCREMENT,
    product_continent VARCHAR(20) NOT NULL,
    product_country VARCHAR(20) NOT NULL,
    product_city VARCHAR(20) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_airplane VARCHAR(20) NOT NULL,
    product_departure TIMESTAMP NOT NULL,
    product_arrive TIMESTAMP NOT NULL,
    product_plan VARCHAR(20) NOT NULL,
    product_adult INT NOT NULL,
    product_minor INT NOT NULL,
    product_seat INT NOT NULL
);

-- 예약 테이블
CREATE TABLE tbl_reservation(
	rev_num int primary key auto_increment,
    member_id varchar(50) null,
	rev_name VARCHAR(50) NOT NULL,
    rev_birth VARCHAR(20) NOT NULL,
    rev_phone VARCHAR(50) NOT NULL,
    rev_email VARCHAR(50) NOT NULL,
    product_num int,
    rev_adult int,
    rev_minor int,
	constraint fk_tbl_reservation foreign key(product_num) references tbl_product(product_num) ON DELETE CASCADE
);

-- fqa 테이블
CREATE TABLE tbl_faq(
	faq_num INT primary key AUTO_INCREMENT,
    faq_category varchar(50) not null,
    faq_title VARCHAR(50) NOT NULL,
    faq_content TEXT NOT NULL
);

-- qna 테이블
CREATE TABLE tbl_qna(
	qna_num INT primary key AUTO_INCREMENT,
    member_num INT,
    qna_title VARCHAR(50) NOT NULL,
    qna_question TEXT NOT NULL,
    master_num INT,
	qna_answer TEXT,
    qna_regdate TIMESTAMP default now(),
    qna_writer VARCHAR(50),
	constraint fk_tbl_qna foreign key(member_num) references tbl_member(member_num) ON DELETE CASCADE
);

-- 공지사항 테이블
CREATE TABLE tbl_notice(
	notice_num INT primary key AUTO_INCREMENT,
    notice_title VARCHAR(50) NOT NULL,
    notice_content TEXT NOT NULL,
    notice_category VARCHAR(20) NOT NULL,
    notice_writer VARCHAR(50) default '탈출도우미',
    notice_regdate timestamp default now()
);

CREATE TABLE tbl_notice_file(
	notice_num INT,
    notice_fileName VARCHAR(200)
);

CREATE TABLE tbl_detail(
	detail_num int primary key auto_increment,
	product_num INT,
    detail_info LONGTEXT,
    detail_schedule LONGTEXT,
    detail_title_image VARCHAR(100),
    detail_viewcnt int,
	constraint fk_tbl_detail foreign key(product_num) references tbl_product(product_num) ON DELETE CASCADE
);

-- 권한 테이블
-- 권한은 MASTER(최고권한), ADMIN(관리자계정), MEMBER(일반회원)
CREATE TABLE tbl_auth (
	member_id VARCHAR(50) NOT NULL,
    member_auth VARCHAR(50) NOT NULL,
    CONSTRAINT fk_auth FOREIGN KEY (member_id) REFERENCES tbl_member (member_id)
);
INSERT INTO tbl_auth VALUES ('master', 'ROLE_MASTER');
INSERT INTO tbl_auth VALUES ('master', 'ROLE_ADMIN');

-- qna 답변
CREATE TABLE tbl_comment(
    comment_num INT PRIMARY KEY auto_increment,
    qna_num INT,
    qna_answer VARCHAR(50),
    comment_writer VARCHAR(50),
    constraint fk_tbl_comment foreign key(qna_num) references tbl_qna(qna_num) ON DELETE CASCADE
);

-- HTML 이미지 파일
CREATE TABLE tbl_product_html(
	product_num INT,
    file_name VARCHAR(100) NOT NULL
);
COMMIT;