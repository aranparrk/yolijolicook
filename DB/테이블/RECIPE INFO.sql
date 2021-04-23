--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-23-2021   
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
	"RECIPE_IMG" VARCHAR2(50 BYTE), 
	"RECIPE_SCRAP_CNT" NUMBER(4,0) DEFAULT 0, 
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
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_CATEGORY" IS 'ī�װ�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_TIME" IS '�����ð�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_LEVEL" IS '�������̵�';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_IMG" IS '��ǥ�̹���';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_SCRAP_CNT" IS '��ũ����';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_CNT" IS '��������ȸ��';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_DT" IS '�ۼ�����';
   COMMENT ON COLUMN "COOK"."RECIPE_INFO"."RECIPE_STATUS" IS '�����ǻ���';
REM INSERTING into COOK.RECIPE_INFO
SET DEFINE OFF;
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (7,'qkrdkfks','������ �Ҽ��� ����','�츮����, �����п��� ������ �ҽ����� �ְ� ���� �����־����� ��§��§ "������ �ҽ��� ����"�� �������ȳ׿�~','�ѽ�',30,1,'7.jpg',0,0,to_date('21/04/21','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (8,'qkrdkfks','���̹��� ����','10�� ������! õ���� �ູ! �����ѵ� ������ ����! �ѱ׸� ���̹��� ���� �Բ��ؿ�!','�ѽ�',10,1,'8.jpg',0,0,to_date('21/03/15','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (9,'shtjdqhd','�����̹������ͱ���','�����̹������ͱ��̴� ��ᵵ �����ϰ�, ���ڸ�, �İ��� �˵��˵��ؼ� �����ϰ� ����� �Ա� ���� �Ӹ� �ƴ϶�մ� �ʴ�� ���⵵ ���ƿ�!','�ѽ�',10,1,'9.jpg',0,0,to_date('21/02/26','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (4,'shtjdqhd','�����ʹ�','���ְ� ���� ���ο� ���� �־� ���� �ʹ������Դϴ�','�ѽ�',20,1,'you_main.jpg',0,0,to_date('21/04/05','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (5,'qkrdkfks','�ı�ġ','�ı�ġ�� ������ ������ ���� �� ���� ����� �ع����� �ȴ�ϴ�.','�ѽ�',30,2,'pa_main.jpg',0,0,to_date('21/01/07','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (6,'qkrdkfks','����','���� ��ħ �����԰� �ѻ� ���Ա�!','�ѽ�',30,1,'dduck_main.jpg',0,0,to_date('20/01/01','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (3,'qkrdkfks','�ع����κ��','�ε巴�� �Ѿ�� ���� �ְ�!! �ÿ��ϰ� ������ �������� �ܹ��ϰ� �Ը��� ����ִ� ���κ��!!','�ѽ�',30,2,'3.png',0,0,to_date('21/04/21','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (1,'qkrdkfks','���޴��� ����ä','���޴����ϰ� ���ļ� ������� �÷� ������ �α� ¯!
','�ѽ�',20,1,'1.png',0,0,to_date('21/04/21','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (2,'rlatnals','ũ���ҽ� �Ľ�Ÿ','������ �����ϴ� ũ���Ľ�Ÿ! ���� �������� ��ܺ�����~','���',50,2,'2.png',0,0,to_date('21/04/21','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (10,'dhstndls','���Ͱ�������','���� ����� ���� �㿡 ���ô� �� ���ܿ� ǫ �������. ?(?��?��?)?��','���',15,1,'10.jpg',0,0,to_date('21/01/28','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (11,'dlthdud','���κ� ������','�ʰ��� �ʽ��ǵ�~ �����Ƿ� ���� ���� ����� �ְ�~','�ѽ�',5,1,'11.jpg',0,0,to_date('21/02/22','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (12,'rlatnals','��Ϲ��� ����','���������̾�ε� �йи�������� ����ϰ� ��Ϲ��Ͱ��� ����� �ִ�ϴ�.','�ѽ�',30,1,'12.jpg',0,0,to_date('21/03/22','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (13,'shtjdqhd','����������ġ','�̱��� ���� ¬�ɸ��� �������� ���� ����������ġ�Դϴ�. ��ġ�� ���� �Ա⵵ ���� �����ַ� �ȼ������� ��ġ�丮�Դϴ�.','���',15,1,'13.jpg',0,0,to_date('21/04/05','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (14,'qkrdkfks','�ҽ��� ����','�����ϰ� ����� �Ķ�ũ �ҽ��� ���� ������ ���ִ�~ ���� ���־��','���',10,1,'14.jpg',0,0,to_date('21/04/22','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (15,'qkrdkfks','����ũ����Ű','����¹���� ���� �����ϰ� �����ϰ� �ε巯�� ����ũ����Ű�� �����Ҿ��~!! ���Ͱ� ���ٸ� �Ŀ����� ��ü�ؼ� ���� ���� ����ũ����Ű���ϴ٢�����','���',30,1,'15.jpg',0,0,to_date('21/03/11','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (16,'dhstndls','����ġ����','���� ������ ��� ġ���� ������ ����!!^^','�ѽ�',15,1,'16.jpg',0,0,to_date('21/02/14','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (17,'shtjdqhd','���� ����ҽ� ��ħ','���� ������� ���� �����ѵ�, ���� ���� ��ĥ���� �����־ ���� ��ο��� ����޴� �ع����� �Ǿ����. ���ְ� ����ϰ� �ǰ��ϰ� ����� ��ź�����!','�ѽ�',30,1,'17.jpg',0,0,to_date('21/01/03','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (18,'dlthdud','�������','��Ʈ���� �ΰ� �Ĵ� ���� �丮�ϱ�!!','�ѽ�',15,1,'18.jpg',0,0,to_date('21/04/15','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (19,'dhstndls','��ϸƳ���','��ȣ������ ���� ��Ϲ��͸Ƴ��� �Դϴ�. ���� �����ϰ� ���� �����̿���.','���',10,1,'19.jpg',0,0,to_date('21/02/07','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (20,'shtjdqhd','�ܾ��ĺ���','�ʰ��� �ع���, �ܾ��ĺ���','�ѽ�',10,1,'ham_main.jpg',0,0,to_date('21/04/03','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (21,'shtjdqhd','�ᳪ������','�ᳪ��~ �ƻ� �ƻ� ���ִµ��ٰ� �����ϰ� Ű��⵵ ������ ����鼭 ��Ʊ⵵�ϰ�. �ᳪ�� �Ѻ����� ������ ������ ���ϼ��ְ�. �󸶳� ���ƿ�? ������ �ع��� �ᳪ������ �����.','�ѽ�',10,1,'kong_main.jpg',0,0,to_date('19/04/13','RR/MM/DD'),-1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (22,'qkrdkfks','������� ���� ��붱','��� ��� ������� ���� ��縮 ������ �־� ���� ��붱�̿���. ����ϰ� �ε巴�� �ع����̳� �����̳� ���� �� ��� �� ��︮�� ����� ��붱�̿���.','�ѽ�',20,2,'bean_main.jpg',0,0,to_date('20/08/15','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (23,'qkrdkfks','����̼Ҹ鹫ħ','������ ����̹�ħ ����� �� �����ַ� ���� ����̼Ҹ鹫ħ','�ѽ�',30,1,'gol_main.jfif',0,0,to_date('21/02/16','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (24,'qkrdkfks','��׻���ġ�� ','��׻���ġ�� ���ܰ���','ǻ��',30,1,'bbang_main.jpg',0,0,to_date('20/03/05','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (25,'qkrdkfks','�����������佺Ʈ','������ ������ �Ծ ī�� �η��� ���� ����Ʈ ''�������佺Ʈ''�� ����� ������.Ŀ�ǿ� �Բ� ������ ���� �ܸ��̿���^^','ǻ��',10,1,'eg_main.jpg',0,0,to_date('20/10/23','RR/MM/DD'),0);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (26,'qkrdkfks','Ȳ��ä ���ͱ���','������ ���������� ���� �ߵ��� �ִ� �ʰ��� ���־��� Ȳ��ä ���ͱ��̸� �Ұ��մϴ�. �������� ����� ���� �ѹ� ������ ���� ������ ����ϴ�^^','�ѽ�',5,1,'hw_main.jpg',0,0,to_date('19/04/09','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (27,'qkrdkfks','ġ�ƽ','��� ġ� �� �����̶�� ������ �����ϴ����� ġ�ƽ�� ���� �����ϴµ���. �������� �ʰ��� ����� ��� �Ұ��� �帱����^^','���',5,1,'stic_main.jpg',0,0,to_date('21/02/01','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (28,'qkrdkfks','��ġ��ް���','������ ���� ���ϴ� ������. ���� ���� �� �����ŵ� ���ΰ� ���ָ� ���Ŵ�ϴ�. �ٵ� ���� �����̴� ������ ������Ƽ�� �Ҽ��� ���ݾƿ�~ �׷��� �ΰ�Ǫ�带 �����ô�ϴ�. �� ���Ϸ� ���ξ��ָ� �Ҽ��� ������ �� �־�̰� �ϰ�ʹٸ� �̷� �ΰ�Ǫ�嵵 ������?','ǻ��',15,1,'hce_main.jpg',0,0,to_date('20/06/24','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (29,'rlatnals','���屹','���� �濡 �� �� ���� �缭 ���ۺ��� ���� ���� ���屹 �����ѵ� ���� ���������� ������� ���ֳ׿�','�ѽ�',30,2,'jang_main.jpg',0,0,to_date('21/01/07','RR/MM/DD'),1);
Insert into COOK.RECIPE_INFO (RECIPE_NO,MEMBER_ID,RECIPE_NAME,RECIPE_INTRO,RECIPE_CATEGORY,RECIPE_TIME,RECIPE_LEVEL,RECIPE_IMG,RECIPE_SCRAP_CNT,RECIPE_CNT,RECIPE_DT,RECIPE_STATUS) values (30,'rlatnals','�丶�� ġŲ ��Ʃ','¥���� ä�ҵ��� ����� �����ٴ� ��, ������ ���� ���ٸ� ä�ҿ丮�� �԰���� ��,, �߰��� + ������ ���̾�Ʈ�� ���ܿ� ��! ��� �� �ְ� ���ٰ� �����ֱ⸸ �ϸ� ��Ʃ �ϼ�!! ','���',60,2,'tomato_main.jpg',0,0,to_date('21/02/25','RR/MM/DD'),1);
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
