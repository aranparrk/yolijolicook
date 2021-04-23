--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SCRAP
--------------------------------------------------------

  CREATE TABLE "COOK"."SCRAP" 
   (	"SCRAP_NO" NUMBER(5,0), 
	"MEMBER_ID" VARCHAR2(12 BYTE), 
	"RECIPE_NO" NUMBER(6,0), 
	"SCRAP_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."SCRAP"."SCRAP_NO" IS '스크랩번호';
   COMMENT ON COLUMN "COOK"."SCRAP"."MEMBER_ID" IS '아이디';
   COMMENT ON COLUMN "COOK"."SCRAP"."RECIPE_NO" IS '레시피번호';
   COMMENT ON COLUMN "COOK"."SCRAP"."SCRAP_DT" IS '스크랩날짜';
REM INSERTING into COOK.SCRAP
SET DEFINE OFF;
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (26,'dlthdud',20,to_date('21/04/30','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (1,'qkrdkfks',4,to_date('21/03/14','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (27,'rlatnals',15,to_date('21/04/29','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (2,'shtjdqhd',5,to_date('21/03/14','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (3,'rlatnals',6,to_date('21/03/21','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (4,'dhstndls',12,to_date('21/03/22','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (5,'dlthdud',13,to_date('21/03/28','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (6,'dlthdud',15,to_date('21/03/28','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (7,'dhstndls',16,to_date('21/04/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (8,'dhstndls',17,to_date('21/04/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (9,'rlatnals',19,to_date('21/04/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (10,'qkrdkfks',20,to_date('21/04/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (11,'qkrdkfks',22,to_date('21/04/04','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (12,'shtjdqhd',23,to_date('21/04/11','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (13,'dhstndls',26,to_date('21/04/12','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (14,'dlthdud',27,to_date('21/04/13','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (28,'dlthdud',23,to_date('21/04/30','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (29,'shtjdqhd',1,to_date('21/04/30','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (30,'rlatnals',26,to_date('21/05/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (31,'shtjdqhd',27,to_date('21/05/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (32,'qkrdkfks',12,to_date('21/05/01','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (33,'shtjdqhd',13,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (34,'qkrdkfks',15,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (35,'qkrdkfks',16,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (36,'shtjdqhd',17,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (37,'dlthdud',30,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (38,'dlthdud',17,to_date('21/05/02','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (39,'dhstndls',15,to_date('21/05/05','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (40,'dhstndls',5,to_date('21/05/05','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (41,'dlthdud',5,to_date('21/05/05','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (42,'dlthdud',19,to_date('21/05/06','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (15,'dlthdud',28,to_date('21/04/20','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (16,'dhstndls',29,to_date('21/04/20','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (17,'qkrdkfks',30,to_date('21/04/20','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (18,'shtjdqhd',30,to_date('21/04/21','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (19,'shtjdqhd',15,to_date('21/04/22','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (20,'shtjdqhd',16,to_date('21/04/22','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (21,'qkrdkfks',17,to_date('21/04/22','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (22,'dhstndls',19,to_date('21/04/25','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (23,'rlatnals',20,to_date('21/04/26','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (24,'dlthdud',22,to_date('21/04/26','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (25,'rlatnals',23,to_date('21/04/26','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (43,'rlatnals',30,to_date('21/05/06','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (44,'shtjdqhd',22,to_date('21/05/06','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (45,'qkrdkfks',23,to_date('21/05/07','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (46,'dlthdud',26,to_date('21/05/07','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (47,'qkrdkfks',27,to_date('21/05/07','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (48,'dhstndls',1,to_date('21/05/07','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (49,'shtjdqhd',4,to_date('21/05/07','RR/MM/DD'));
Insert into COOK.SCRAP (SCRAP_NO,MEMBER_ID,RECIPE_NO,SCRAP_DT) values (50,'qkrdkfks',6,to_date('21/05/07','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SCRAP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."SCRAP_PK" ON "COOK"."SCRAP" ("MEMBER_ID", "RECIPE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SCRAP
--------------------------------------------------------

  ALTER TABLE "COOK"."SCRAP" ADD CONSTRAINT "SCRAP_PK" PRIMARY KEY ("MEMBER_ID", "RECIPE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."SCRAP" MODIFY ("RECIPE_NO" NOT NULL ENABLE);
  ALTER TABLE "COOK"."SCRAP" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "COOK"."SCRAP" MODIFY ("SCRAP_NO" NOT NULL ENABLE);
