--------------------------------------------------------
--  ������ ������ - �Ͽ���-4��-04-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_INFO
--------------------------------------------------------

  CREATE TABLE "COOK"."RECIPE_INFO" 
   (	"RECIPE_NO" NUMBER(6,0), 
	"MEMBER_ID" VARCHAR2(12 BYTE), 
	"RECIPE_NAME" VARCHAR2(30 BYTE), 
	"RECIPE_INTRO" VARCHAR2(400 BYTE), 
	"RECIPE_CATEGORY" VARCHAR2(15 BYTE), 
	"RECIPE_TIME" NUMBER(3,0), 
	"RECIPE_LEVEL" NUMBER(1,0), 
	"RECIPE_IMG" VARCHAR2(20 BYTE), 
	"RECIPE_SCRAP_CNT_CNT" NUMBER(4,0) DEFAULT 0, 
	"RECIPE_CNT" NUMBER(5,0) DEFAULT 0, 
	"RECIPE_DT" DATE, 
	"RECIPE_STATUS" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_NO" IS '�����ǹ�ȣ';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."MEMBER_ID" IS '�ۼ��ھ��̵�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_NAME" IS '�������̸�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_INTRO" IS '�����ǼҰ���';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_CATEGORY" IS 'ī�װ���';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_TIME" IS '�����ð�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_LEVEL" IS '�������̵�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_IMG" IS '��ǥ�̹���';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_SCRAP_CNT_CNT" IS '��ũ����';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_CNT" IS '��������ȸ��';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_DT" IS '�ۼ�����';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_STATUS" IS '�����ǻ���';
REM INSERTING into COOK.RECIPE_INFO
SET DEFINE OFF;
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (1,'id1','���ִ� ��ġ�','��ġ��� ��������','�ѽ�',10,3,'kimchizzigae.png',0,0,to_date('21/03/31','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (2,'id3','�ʹ�','�ʹ俣 ȸ','�ѽ�',10,3,'chobab.png',0,0,to_date('21/03/31','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (3,'id3','�ߺ�����','��','�ѽ�',10,3,'iloveyou.png',0,0,to_date('21/03/31','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (4,'id2','����������','���������� Ȳ�� ������','�н�',15,1,'roseddokbokki.png',0,0,to_date('21/03/31','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (5,'id4','Ħ�ø�','�ø��� ���� Ħ �ø�����~!','�ѽ�',15,3,'lang.png',0,0,to_date('21/03/31','RR/MM/DD'),0);
--------------------------------------------------------
--  DDL for Index RECIPE_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."RECIPE_INFO_PK" ON "COOK"."RECIPE_INFO" ("RECIPE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_INFO
--------------------------------------------------------

  ALTER TABLE "COOK"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_PK" PRIMARY KEY ("RECIPE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_IMG" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_LEVEL" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_TIME" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INFO" MODIFY ("RECIPE_NO" NOT NULL ENABLE);
