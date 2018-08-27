
/* Drop Tables */

DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE image CASCADE CONSTRAINTS;
DROP TABLE rereply CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE sale CASCADE CONSTRAINTS;
DROP TABLE viewer CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE company CASCADE CONSTRAINTS;
DROP TABLE webadmin CASCADE CONSTRAINTS;
DROP TABLE webmember CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE cart
(
	-- 장바구니 번호
	cart_no number NOT NULL,
	-- 장바구니 가격 정보
	cart_priceinfo number NOT NULL,
	-- 장바구니 상품 수량
	cart_cnt number NOT NULL,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	-- member 테이블의 pk 값, 회원아이디
	-- 
	userid varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (cart_no)
);


CREATE TABLE company
(
	-- 회사아이디
	co_id varchar2(30) NOT NULL,
	-- 회사명
	co_name varchar2(50) NOT NULL,
	-- 회사비밀번호
	co_pwd varchar2(30) NOT NULL,
	-- 회사 주소
	co_address varchar2(200) NOT NULL,
	-- 회사 전화번호
	co_phone varchar2(30) NOT NULL,
	-- 회사 대표자명
	co_ceo varchar2(30) NOT NULL,
	-- 회사 대표이메일
	co_email varchar2(100) NOT NULL,
	-- 회사 홈페이지
	co_website varchar2(200) NOT NULL,
	PRIMARY KEY (co_id)
);


CREATE TABLE image
(
	-- 이미지 번호
	image_num number NOT NULL,
	-- 이미지 경로
	image_path varchar2(1000) NOT NULL,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	PRIMARY KEY (image_num)
);


CREATE TABLE product
(
	-- 상품 번호
	product_num number NOT NULL,
	-- 상품 이름
	product_name varchar2(100) NOT NULL,
	-- 상품 게시글 제목
	product_title varchar2(100) NOT NULL,
	-- 상품 게시글 내용
	-- text 파일 path값
	product_content varchar2(3000) NOT NULL,
	-- 상품 현재 모금액
	product_nowfundprice varchar2(50) NOT NULL,
	-- 상품 목표 모금액
	product_goalfundprice varchar2(50) NOT NULL,
	-- 상품 모금 시작 날짜
	product_startdate date NOT NULL,
	-- 상품 모금 목표 날짜
	product_goaldate date NOT NULL,
	-- 상품 조회수 
	-- default : 0
	product_hitcount number DEFAULT 0,
	-- 상품 카테고리
	product_category varchar2(100) NOT NULL,
	-- 상품 비디오
	-- video path값
	product_video varchar2(2000) NOT NULL,
	-- 회사아이디
	co_id varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (product_num)
);


CREATE TABLE reply
(
	-- 리플 번호
	reply_num number NOT NULL,
	-- 리플 내용
	reply_content varchar2(1000) NOT NULL,
	-- member 테이블의 pk 값, 회원아이디
	-- 
	userid varchar2(30) NOT NULL UNIQUE,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	PRIMARY KEY (reply_num)
);


CREATE TABLE rereply
(
	-- 리리플번호
	rereply_num number NOT NULL,
	-- 리리플내용
	rereply_content varchar2(1000) NOT NULL,
	-- 리플 번호
	reply_num number NOT NULL UNIQUE,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	-- 회사아이디
	co_id varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (rereply_num)
);


CREATE TABLE sale
(
	-- 판매 정보
	sale_num number NOT NULL,
	-- 판매 가격 정보
	sale_priceinfo number NOT NULL,
	-- 판매 상품 개수
	sale_amount number NOT NULL,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	-- member 테이블의 pk 값, 회원아이디
	-- 
	userid varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (sale_num)
);


CREATE TABLE viewer
(
	-- 접속 번호
	viewer_num number NOT NULL,
	-- 접속 국가 정보
	viewer_countryinfo varchar2(100),
	-- 접속 도시 정보
	viewer_cityinfo varchar2(100),
	-- 접속자 ip
	viewer_ipinfo varchar2(200),
	-- member 테이블의 pk 값, 회원아이디
	-- 
	userid varchar2(30) UNIQUE,
	-- 상품 번호
	product_num number NOT NULL UNIQUE,
	PRIMARY KEY (viewer_num)
);


CREATE TABLE webadmin
(
	-- 관리자 아이디
	admin_id varchar2(30) NOT NULL,
	-- 관리자 비밀번호
	admin_pwd varchar2(30) NOT NULL,
	-- 관리자 전화번호
	admin_phone varchar2(30) NOT NULL,
	-- 관리자 이메일
	admin_email varchar2(100),
	-- 관리자 이름
	admin_name varchar2(30) NOT NULL,
	PRIMARY KEY (admin_id)
);


CREATE TABLE webmember
(
	-- member 테이블의 pk 값, 회원아이디
	-- 
	userid varchar2(30) NOT NULL,
	-- 회원 이름
	username varchar2(30) NOT NULL,
	-- 회원 비밀번호
	userpwd varchar2(30) NOT NULL,
	-- 회원 성별
	-- 'male' or 'female'
	gender varchar2(20) NOT NULL,
	-- 회원 생년월일
	birthday date NOT NULL,
	-- 회원 주소
	address varchar2(200) NOT NULL,
	-- 회원 전화번호
	phone varchar2(30) NOT NULL,
	-- 회원 이메일
	email varchar2(100) NOT NULL,
	-- 회원 관심분야
	hobby varchar2(1000),
	PRIMARY KEY (userid)
);



/* Create Foreign Keys */

ALTER TABLE product
	ADD FOREIGN KEY (co_id)
	REFERENCES company (co_id)
;


ALTER TABLE rereply
	ADD FOREIGN KEY (co_id)
	REFERENCES company (co_id)
;


ALTER TABLE cart
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE image
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE reply
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE rereply
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE sale
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE viewer
	ADD FOREIGN KEY (product_num)
	REFERENCES product (product_num)
;


ALTER TABLE rereply
	ADD FOREIGN KEY (reply_num)
	REFERENCES reply (reply_num)
;


ALTER TABLE cart
	ADD FOREIGN KEY (userid)
	REFERENCES webmember (userid)
;


ALTER TABLE reply
	ADD FOREIGN KEY (userid)
	REFERENCES webmember (userid)
;


ALTER TABLE sale
	ADD FOREIGN KEY (userid)
	REFERENCES webmember (userid)
;


ALTER TABLE viewer
	ADD FOREIGN KEY (userid)
	REFERENCES webmember (userid)
;



/* Comments */

COMMENT ON COLUMN cart.cart_no IS '장바구니 번호';
COMMENT ON COLUMN cart.cart_priceinfo IS '장바구니 가격 정보';
COMMENT ON COLUMN cart.cart_cnt IS '장바구니 상품 수량';
COMMENT ON COLUMN cart.product_num IS '상품 번호';
COMMENT ON COLUMN cart.userid IS 'member 테이블의 pk 값, 회원아이디
';
COMMENT ON COLUMN company.co_id IS '회사아이디';
COMMENT ON COLUMN company.co_name IS '회사명';
COMMENT ON COLUMN company.co_pwd IS '회사비밀번호';
COMMENT ON COLUMN company.co_address IS '회사 주소';
COMMENT ON COLUMN company.co_phone IS '회사 전화번호';
COMMENT ON COLUMN company.co_ceo IS '회사 대표자명';
COMMENT ON COLUMN company.co_email IS '회사 대표이메일';
COMMENT ON COLUMN company.co_website IS '회사 홈페이지';
COMMENT ON COLUMN image.image_num IS '이미지 번호';
COMMENT ON COLUMN image.image_path IS '이미지 경로';
COMMENT ON COLUMN image.product_num IS '상품 번호';
COMMENT ON COLUMN product.product_num IS '상품 번호';
COMMENT ON COLUMN product.product_name IS '상품 이름';
COMMENT ON COLUMN product.product_title IS '상품 게시글 제목';
COMMENT ON COLUMN product.product_content IS '상품 게시글 내용
text 파일 path값';
COMMENT ON COLUMN product.product_nowfundprice IS '상품 현재 모금액';
COMMENT ON COLUMN product.product_goalfundprice IS '상품 목표 모금액';
COMMENT ON COLUMN product.product_startdate IS '상품 모금 시작 날짜';
COMMENT ON COLUMN product.product_goaldate IS '상품 모금 목표 날짜';
COMMENT ON COLUMN product.product_hitcount IS '상품 조회수 
default : 0';
COMMENT ON COLUMN product.product_category IS '상품 카테고리';
COMMENT ON COLUMN product.product_video IS '상품 비디오
video path값';
COMMENT ON COLUMN product.co_id IS '회사아이디';
COMMENT ON COLUMN reply.reply_num IS '리플 번호';
COMMENT ON COLUMN reply.reply_content IS '리플 내용';
COMMENT ON COLUMN reply.userid IS 'member 테이블의 pk 값, 회원아이디
';
COMMENT ON COLUMN reply.product_num IS '상품 번호';
COMMENT ON COLUMN rereply.rereply_num IS '리리플번호';
COMMENT ON COLUMN rereply.rereply_content IS '리리플내용';
COMMENT ON COLUMN rereply.reply_num IS '리플 번호';
COMMENT ON COLUMN rereply.product_num IS '상품 번호';
COMMENT ON COLUMN rereply.co_id IS '회사아이디';
COMMENT ON COLUMN sale.sale_num IS '판매 정보';
COMMENT ON COLUMN sale.sale_priceinfo IS '판매 가격 정보';
COMMENT ON COLUMN sale.sale_amount IS '판매 상품 개수';
COMMENT ON COLUMN sale.product_num IS '상품 번호';
COMMENT ON COLUMN sale.userid IS 'member 테이블의 pk 값, 회원아이디
';
COMMENT ON COLUMN viewer.viewer_num IS '접속 번호';
COMMENT ON COLUMN viewer.viewer_countryinfo IS '접속 국가 정보';
COMMENT ON COLUMN viewer.viewer_cityinfo IS '접속 도시 정보';
COMMENT ON COLUMN viewer.viewer_ipinfo IS '접속자 ip';
COMMENT ON COLUMN viewer.userid IS 'member 테이블의 pk 값, 회원아이디
';
COMMENT ON COLUMN viewer.product_num IS '상품 번호';
COMMENT ON COLUMN webadmin.admin_id IS '관리자 아이디';
COMMENT ON COLUMN webadmin.admin_pwd IS '관리자 비밀번호';
COMMENT ON COLUMN webadmin.admin_phone IS '관리자 전화번호';
COMMENT ON COLUMN webadmin.admin_email IS '관리자 이메일';
COMMENT ON COLUMN webadmin.admin_name IS '관리자 이름';
COMMENT ON COLUMN webmember.userid IS 'member 테이블의 pk 값, 회원아이디
';
COMMENT ON COLUMN webmember.username IS '회원 이름';
COMMENT ON COLUMN webmember.userpwd IS '회원 비밀번호';
COMMENT ON COLUMN webmember.gender IS '회원 성별
''male'' or ''female''';
COMMENT ON COLUMN webmember.birthday IS '회원 생년월일';
COMMENT ON COLUMN webmember.address IS '회원 주소';
COMMENT ON COLUMN webmember.phone IS '회원 전화번호';
COMMENT ON COLUMN webmember.email IS '회원 이메일';
COMMENT ON COLUMN webmember.hobby IS '회원 관심분야';



