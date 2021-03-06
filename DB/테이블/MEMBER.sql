--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "COOK"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(12 BYTE), 
	"MEMBER_PWD" VARCHAR2(15 BYTE), 
	"MEMBER_EMAIL" VARCHAR2(30 BYTE), 
	"MEMBER_NICKNAME" VARCHAR2(25 BYTE), 
	"MEMBER_STATUS" NUMBER(1,0) DEFAULT 0, 
	"MEMBER_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_ID" IS '아이디';
   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_PWD" IS '비밀번호';
   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_EMAIL" IS '이메일';
   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_STATUS" IS '회원상태';
   COMMENT ON COLUMN "COOK"."MEMBER"."MEMBER_DT" IS '가입날짜';
REM INSERTING into COOK.MEMBER
SET DEFINE OFF;
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('id1','p1','e1','n1',0,to_date('21/03/31','RR/MM/DD'));
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('rlatnals','rlatnals1','sumin0603@naver.com','김수망',0,to_date('21/04/21','RR/MM/DD'));
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('dlthdud','dlthdud1','dlthdud@naver.com','이소용',0,to_date('21/04/21','RR/MM/DD'));
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('dhstndls','dhstndls1','sottotndls@naver.com','옹수인',0,to_date('21/04/21','RR/MM/DD'));
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('qkrdkfks','qkrdkfks1','bb_ar@naver.com','박아랑',0,to_date('21/04/21','RR/MM/DD'));
Insert into COOK.MEMBER (MEMBER_ID,MEMBER_PWD,MEMBER_EMAIL,MEMBER_NICKNAME,MEMBER_STATUS,MEMBER_DT) values ('shtjdqhd','shtjdqhd1','shtjdqhd@naver.com','노씨',0,to_date('21/04/21','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."MEMBER_PK" ON "COOK"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007168
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."SYS_C007168" ON "COOK"."MEMBER" ("MEMBER_EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007169
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."SYS_C007169" ON "COOK"."MEMBER" ("MEMBER_NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "COOK"."MEMBER" ADD CONSTRAINT "MEMBER_NICKNAME_UNIQUE" UNIQUE ("MEMBER_NICKNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."MEMBER" ADD CONSTRAINT "MEMBER_EMAIL_UNIQUE" UNIQUE ("MEMBER_EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."MEMBER" MODIFY ("MEMBER_DT" NOT NULL ENABLE);
  ALTER TABLE "COOK"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."MEMBER" MODIFY ("MEMBER_NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "COOK"."MEMBER" MODIFY ("MEMBER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "COOK"."MEMBER" MODIFY ("MEMBER_PWD" NOT NULL ENABLE);
  ALTER TABLE "COOK"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
