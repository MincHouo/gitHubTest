--회원 테이블
create table jmember (
	id 			varchar2(20) 	primary key
	, pw 		varchar2(30) 	not null
	, name 		varchar2(20) 	default 'noname'
	, birth 	date 			not null			--생일로 회원가입 가능 판정
	, identify	varchar2(20)	not null			--본인확인 질문
	, grade 	number 			default 1			--회원등급. level은 무슨 키워드가 있나보다 오류남ㅜ
	, visits 	number 			default 0			--방문회수. 이걸로 회원이 등급업 신청하면 방문횟수랑 글 작성수에 따라 등업해줌
	, writes 	number 			default 0			--글 작성회수. 지우면 마이너스1 해준다><
	, warn 		number 			default 0			--경고회수.
);


--게시판 테이블
create table jboard (

	boardnum	number			primary key
	, id 		varchar(20)		not null
	, title		varchar2(100)	not null
	, content	varchar2(2000)	not null
	, indate	date			default sysdate
	, hits		number			default 0
	, originalfile 	varchar2(200)	--원본파일--
	, savefile	varchar2(100)		--수정파일--
	, constraint num_fk foreign key(id)
	references jmember (id) on delete cascade

);

--게시판 번호 시퀀스
create sequence jboard_seq;


--댓글 테이블
create table jreply (

	replynum	number			primary key
	, boardnum	number			not null
	, id		varchar2(20)	not null
	, text		varchar2(200)	not null
	, re_indate	date			default sysdate
	, constraint reply_fk foreign key(boardnum)
	references jboard(boardnum) on delete cascade
	, constraint re_id_fk foreign key(id)
	references jmember (id) on delete cascade
);

--댓글 시퀀스
create sequence reply9_seq;
