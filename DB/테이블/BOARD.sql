--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "COOK"."BOARD" 
   (	"BOARD_NO" NUMBER(5,0), 
	"BOARD_TITLE" VARCHAR2(150 BYTE), 
	"MEMBER_ID" VARCHAR2(25 BYTE), 
	"BOARD_DETAIL" VARCHAR2(3000 BYTE), 
	"BOARD_DT" DATE, 
	"BOARD_CNT" NUMBER(5,0) DEFAULT 0, 
	"BOARD_REPORT_CNT" NUMBER(2,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_NO" IS '게시글번호';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_TITLE" IS '게시글제목';
   COMMENT ON COLUMN "COOK"."BOARD"."MEMBER_ID" IS '작성자';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_DETAIL" IS '게시글내용';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_DT" IS '작성날짜';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_CNT" IS '조회수';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_REPORT_CNT" IS '신고횟수';
REM INSERTING into COOK.BOARD
SET DEFINE OFF;
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (1,'빼빼로데이 썸남에게','qkrdkfks','썸남에게 직접 빼빼로 만들어서 선물하고 싶은데 부담스러워 할까요???',to_date('19/11/11','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (2,'오늘 점심은 이걸로','rlatnals','팔보채에 닭강정 핵추천',to_date('20/01/01','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (3,'준며든다...','qkrdkfks','최준.. 너란 남자..',to_date('20/04/01','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (25,'요리조리쿡 프로젝트로 꼭 취업하세요!!','shtjdqhd','다들 좋은데 취업하시고 건강하게 지내세요~!',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (26,'어?.. 진짜 예쁘다..','qkrdkfks','꼬마 아가씽 나랑 커피 한잔 할래요?',to_date('21/04/21','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (27,'안녕 귀여운 꼬마아가씨','dlthdud','예쁘다',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (28,'피곤','shtjdqhd','겁나 피곤해요 요즘.. 원기회복에 좋은 음식 뭐 없을까요..',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (29,'저녁 뭐 드셨어요?','qkrdkfks','전 해물찜에 소주 한 잔 하려고요',to_date('21/04/21','RR/MM/DD'),10,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (30,'남편이 요즘 너무 귀찮게 하네요','dhstndls','제가 너무 좋은가봐요..♡',to_date('21/04/21','RR/MM/DD'),12,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (4,'파김치 너무 마싯어요','qkrdkfks','아니 레시피 검색해서 만들어 먹었는데 존맛;; 다들 먹어보세요;;',to_date('20/04/24','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (5,'이거 그린라이트 인가요?','qkrdkfks','회사 동료가 오늘 저한테 와서 밥 먹었냐고 물어봤는데 저한테 관심있어서 밥먹자고 하는건가요?...',to_date('20/07/08','RR/MM/DD'),6,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (6,'오늘 운동 시작합니다','rlatnals','3자리수 돌입직전이거든요',to_date('20/07/08','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (7,'요즘 이것만 마시는 군요','dlthdud','아바라짱',to_date('20/08/14','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (8,'수익 100%로 보장','dlthdud','shtjdqhd@naver.com 연락주세요.',to_date('20/09/25','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (9,'송리단길 맛집 추천','qkrdkfks','송리단 길에 삼방매 라고 검색하시면 라멘 + 차슈를 파는데 정말 너무너무 마싯어용~!~',to_date('20/10/09','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (10,'커피 한 잔할래용~','qkrdkfks','아뇨 두 잔 할래용~',to_date('20/12/01','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (11,'관리자들 머함 ㅡㅡ','qkrdkfks','사이트 왜이럼 게시글 쓸 때 제목에 코드 입력하면 오류뜸',to_date('20/12/10','RR/MM/DD'),18,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (12,'새해 음식 추천점요','rlatnals','올해는 떡국이 쫌 질려서 그러는데 다른 음식 추천좀 해주세요. 떡으로 만드는 음식으로요!!@!@~!#~!@!~#',to_date('21/01/05','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (13,'집들이 음식추천!!!!','qkrdkfks','요즘 이사하시는 분들이 많아 진거 같은데 집들이 음식은 칡냉면으로 엄청 좋아해요~!',to_date('21/02/15','RR/MM/DD'),1,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (14,'저도 취업하고 싶어요','shtjdqhd','누가 나좀 뽑아줘...',to_date('21/02/15','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (15,'오늘 차였다...','dlthdud','내일은 자전거다',to_date('21/03/15','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (16,'오늘 사랑니 발치하는데 무서워요...','dhstndls','오늘 발치하러 치과 가는데.. 어떡하죠?..ㅠㅠ 너무 무서워요...... 간호사님한테 손잡아달라 해야지..',to_date('21/03/15','RR/MM/DD'),5,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (17,'배가 고파요','dlthdud','오늘 한 끼도 안 먹었는데 멀 먹어야 할지 모르겠어요.. ㅠㅠ 추천해주세요..',to_date('21/04/05','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (18,'오늘 점심에 손님이 오는데','dhstndls','오늘 점심에 남편 회사 동료분들이 집들이 오는데 어떤 음식을 준비해야 할지 모르겠어요 ㅠㅠ 도와주세요.',to_date('21/04/18','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (19,'오늘 비가 올거 같아요...','dhstndls','무릎이 쑤시네요...',to_date('21/04/21','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (20,'속이 안좋은데 어떻게 하져?ㅠㅠ','rlatnals','지금 속이 너무 안 좋아서.. 어떤 음식도 못 먹고있는데.. 어떻게하쥬?ㅠㅠㅠ',to_date('21/04/21','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (21,'다이어트 음식 추천좀 해주세요!!','shtjdqhd','지금 제 인생 최대 몸무게를 찍어서 그런데 다이어트 음식좀 추천해주세요.',to_date('21/04/21','RR/MM/DD'),8,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (22,'비트코인 떡락... 한강간다..','qkrdkfks','하.. 인생..',to_date('21/04/21','RR/MM/DD'),5,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (23,'회덮밥 마싯다','qkrdkfks','12000원에 포식했다..',to_date('21/04/21','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (24,'롤 실버탈출 방법좀요...','qkrdkfks','아니 ㅡㅡ 맨날 승급전만 되면 "승급전이네" 라고 채팅을 치고 바로 누누에 정화 유체화를 드는데 개빢치네 ㅡㅡㅡ',to_date('21/04/21','RR/MM/DD'),4,0);
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."BOARD_PK" ON "COOK"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "COOK"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."BOARD" MODIFY ("BOARD_DT" NOT NULL ENABLE);
  ALTER TABLE "COOK"."BOARD" MODIFY ("BOARD_DETAIL" NOT NULL ENABLE);
  ALTER TABLE "COOK"."BOARD" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "COOK"."BOARD" MODIFY ("BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "COOK"."BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
