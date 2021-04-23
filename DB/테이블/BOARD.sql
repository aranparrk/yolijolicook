--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-23-2021   
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

   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_NO" IS '�Խñ۹�ȣ';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_TITLE" IS '�Խñ�����';
   COMMENT ON COLUMN "COOK"."BOARD"."MEMBER_ID" IS '�ۼ���';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_DETAIL" IS '�Խñ۳���';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_DT" IS '�ۼ���¥';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_CNT" IS '��ȸ��';
   COMMENT ON COLUMN "COOK"."BOARD"."BOARD_REPORT_CNT" IS '�Ű�Ƚ��';
REM INSERTING into COOK.BOARD
SET DEFINE OFF;
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (1,'�����ε��� �泲����','qkrdkfks','�泲���� ���� ������ ���� �����ϰ� ������ �δ㽺���� �ұ��???',to_date('19/11/11','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (2,'���� ������ �̰ɷ�','rlatnals','�Ⱥ�ä�� �߰��� ����õ',to_date('20/01/01','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (3,'�ظ���...','qkrdkfks','����.. �ʶ� ����..',to_date('20/04/01','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (25,'�丮������ ������Ʈ�� �� ����ϼ���!!','shtjdqhd','�ٵ� ������ ����Ͻð� �ǰ��ϰ� ��������~!',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (26,'��?.. ��¥ ���ڴ�..','qkrdkfks','���� �ư��� ���� Ŀ�� ���� �ҷ���?',to_date('21/04/21','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (27,'�ȳ� �Ϳ��� �����ư���','dlthdud','���ڴ�',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (28,'�ǰ�','shtjdqhd','�̳� �ǰ��ؿ� ����.. ����ȸ���� ���� ���� �� �������..',to_date('21/04/21','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (29,'���� �� ��̾��?','qkrdkfks','�� �ع��� ���� �� �� �Ϸ����',to_date('21/04/21','RR/MM/DD'),10,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (30,'������ ���� �ʹ� ������ �ϳ׿�','dhstndls','���� �ʹ� ����������..��',to_date('21/04/21','RR/MM/DD'),12,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (4,'�ı�ġ �ʹ� ���˾��','qkrdkfks','�ƴ� ������ �˻��ؼ� ����� �Ծ��µ� ����;; �ٵ� �Ծ����;;',to_date('20/04/24','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (5,'�̰� �׸�����Ʈ �ΰ���?','qkrdkfks','ȸ�� ���ᰡ ���� ������ �ͼ� �� �Ծ��İ� ����ôµ� ������ �����־ ����ڰ� �ϴ°ǰ���?...',to_date('20/07/08','RR/MM/DD'),6,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (6,'���� � �����մϴ�','rlatnals','3�ڸ��� ���������̰ŵ��',to_date('20/07/08','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (7,'���� �̰͸� ���ô� ����','dlthdud','�ƹٶ�¯',to_date('20/08/14','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (8,'���� 100%�� ����','dlthdud','shtjdqhd@naver.com �����ּ���.',to_date('20/09/25','RR/MM/DD'),7,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (9,'�۸��ܱ� ���� ��õ','qkrdkfks','�۸��� �濡 ���� ��� �˻��Ͻø� ��� + ������ �Ĵµ� ���� �ʹ��ʹ� ���˾��~!~',to_date('20/10/09','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (10,'Ŀ�� �� ���ҷ���~','qkrdkfks','�ƴ� �� �� �ҷ���~',to_date('20/12/01','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (11,'�����ڵ� ���� �Ѥ�','qkrdkfks','����Ʈ ���̷� �Խñ� �� �� ���� �ڵ� �Է��ϸ� ������',to_date('20/12/10','RR/MM/DD'),18,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (12,'���� ���� ��õ����','rlatnals','���ش� ������ �� ������ �׷��µ� �ٸ� ���� ��õ�� ���ּ���. ������ ����� �������ο�!!@!@~!#~!@!~#',to_date('21/01/05','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (13,'������ ������õ!!!!','qkrdkfks','���� �̻��Ͻô� �е��� ���� ���� ������ ������ ������ Ħ�ø����� ��û �����ؿ�~!',to_date('21/02/15','RR/MM/DD'),1,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (14,'���� ����ϰ� �;��','shtjdqhd','���� ���� �̾���...',to_date('21/02/15','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (15,'���� ������...','dlthdud','������ �����Ŵ�',to_date('21/03/15','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (16,'���� ����� ��ġ�ϴµ� ��������...','dhstndls','���� ��ġ�Ϸ� ġ�� ���µ�.. �����?..�Ф� �ʹ� ��������...... ��ȣ������� ����ƴ޶� �ؾ���..',to_date('21/03/15','RR/MM/DD'),5,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (17,'�谡 ���Ŀ�','dlthdud','���� �� ���� �� �Ծ��µ� �� �Ծ�� ���� �𸣰ھ��.. �Ф� ��õ���ּ���..',to_date('21/04/05','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (18,'���� ���ɿ� �մ��� ���µ�','dhstndls','���� ���ɿ� ���� ȸ�� ����е��� ������ ���µ� � ������ �غ��ؾ� ���� �𸣰ھ�� �Ф� �����ּ���.',to_date('21/04/18','RR/MM/DD'),4,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (19,'���� �� �ð� ���ƿ�...','dhstndls','������ ���ó׿�...',to_date('21/04/21','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (20,'���� �������� ��� ����?�Ф�','rlatnals','���� ���� �ʹ� �� ���Ƽ�.. � ���ĵ� �� �԰��ִµ�.. �������?�ФФ�',to_date('21/04/21','RR/MM/DD'),2,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (21,'���̾�Ʈ ���� ��õ�� ���ּ���!!','shtjdqhd','���� �� �λ� �ִ� �����Ը� �� �׷��� ���̾�Ʈ ������ ��õ���ּ���.',to_date('21/04/21','RR/MM/DD'),8,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (22,'��Ʈ���� ����... �Ѱ�����..','qkrdkfks','��.. �λ�..',to_date('21/04/21','RR/MM/DD'),5,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (23,'ȸ���� ���˴�','qkrdkfks','12000���� �����ߴ�..',to_date('21/04/21','RR/MM/DD'),3,0);
Insert into COOK.BOARD (BOARD_NO,BOARD_TITLE,MEMBER_ID,BOARD_DETAIL,BOARD_DT,BOARD_CNT,BOARD_REPORT_CNT) values (24,'�� �ǹ�Ż�� �������...','qkrdkfks','�ƴ� �Ѥ� �ǳ� �±����� �Ǹ� "�±����̳�" ��� ä���� ġ�� �ٷ� ������ ��ȭ ��üȭ�� ��µ� ����ġ�� �ѤѤ�',to_date('21/04/21','RR/MM/DD'),4,0);
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
