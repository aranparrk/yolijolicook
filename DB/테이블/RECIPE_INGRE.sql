--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_INGRE
--------------------------------------------------------

  CREATE TABLE "COOK"."RECIPE_INGRE" 
   (	"RECIPE_NO" NUMBER(6,0), 
	"RECIPE_INGRE_NO" NUMBER(2,0), 
	"RECIPE_INGRE_NAME" VARCHAR2(30 BYTE), 
	"RECIPE_INGRE_METERING" VARCHAR2(20 BYTE), 
	"RECIPE_INGRE_TYPE" VARCHAR2(9 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."RECIPE_INGRE"."RECIPE_NO" IS '�����ǹ�ȣ';
   COMMENT ON COLUMN "COOK"."RECIPE_INGRE"."RECIPE_INGRE_NO" IS '����ȣ';
   COMMENT ON COLUMN "COOK"."RECIPE_INGRE"."RECIPE_INGRE_NAME" IS '����';
   COMMENT ON COLUMN "COOK"."RECIPE_INGRE"."RECIPE_INGRE_METERING" IS '�跮';
   COMMENT ON COLUMN "COOK"."RECIPE_INGRE"."RECIPE_INGRE_TYPE" IS '���Ÿ��';
REM INSERTING into COOK.RECIPE_INGRE
SET DEFINE OFF;
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,1,'����ũ�Ҽ���','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,2,'������','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,3,'����','2��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,5,'���⸧','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,6,'���',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,1,'���̹���','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,2,'����','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,3,'����','�ݰ�','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,4,'�ް�','�Ѱ�','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,5,'���⸧','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,6,'���','������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,7,'����','2������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,8,'���ҽ�','�ݼ�����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,9,'����','�ݼ�����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,10,'����','2������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (7,4,'�ø�����','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (8,11,'��','3ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (9,1,'�����̹���','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (9,2,'����','10g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (9,3,'����','1.5ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (9,4,'�Ŀ���','������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (9,5,'������','1.5ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,2,'���','1/3�Ѹ�','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,3,'�����','30g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,4,'���','1/4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,5,'���尡��','����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,6,'����','2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,7,'û��','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,8,'����','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,9,'��','1����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,1,'����','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,2,'�������','1��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,3,'��������','1�� 1/2������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,4,'���ұ�','2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,5,'���尡��','1��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,6,'����','2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,7,'�ұ�','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (4,1,'����','5��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (5,8,'��������','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,1,'������','500g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,2,'����� ����','8��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,3,'����','1�Ѹ�','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,4,'�����','100g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,5,'���','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,6,'�ұ�','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,7,'���尡��','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,8,'����','1/2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,9,'������','2������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,10,'��������','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,11,'���ұ�','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,12,'���⸧','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (6,13,'����','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,1,'��','1/4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,2,'��ũ��','1�� 1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,2,'���尡��','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,3,'����','1�� 1/2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,4,'����','1�� 2/3ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,5,'���ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,6,'���⸧','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,7,'������','1������','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,8,'��������','1/2������','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (1,9,'�ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,1,'�Ľ�Ÿ','200g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,3,'����','2/1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,4,'���尡��','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,5,'��������','1������','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,6,'������','6��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,7,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,8,'����','2ū��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (2,9,'�ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,1,'�κ�','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,2,'���','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,3,'û��������','2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,4,'���尡��','1~2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,5,'���ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,6,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,7,'�̴���','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,8,'������','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,9,'�ܻ���','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,11,'��ġ','����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (3,10,'�ٽø�','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,1,'����','20����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,2,'�ø�����','2ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,3,'�Ľ���','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,4,'�ø�����','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,5,'����','20g','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,6,'��������','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,7,'����','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (10,8,'�ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,1,'���κ�','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,2,'���ä��','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,3,'������ī','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,4,'����','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,5,'����','2.5T','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,6,'����','1.5T','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,7,'����','1T','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,8,'��������','1T','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,9,'���⸧','1t','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (11,10,'���','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (12,1,'������',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (12,2,'����',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (12,3,'��',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (12,4,'����ġ��',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (13,1,'�����̶�',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (13,2,'������',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (13,3,'�ұ�',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (13,4,'����������',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,1,'�Ķ�ũ�ҽ���','4','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,2,'����','1/4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,3,'���尡��','�ణ','�ҽ�');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,4,'�ӽ�Ÿ��ҽ�',null,'�ҽ�');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,5,'����ġ��',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,6,'�ұ�',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,7,'��ø',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (14,8,'�Ľ�������',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,1,'���� �Ǵ� �Ŀ���','100g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,2,'���','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,3,'����','100g','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,4,'�ұ�','2����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,5,'�ڷº�','180g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,6,'���ھ��Ŀ��','50g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,7,'����ŷ�Ŀ��','4g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (15,8,'�����Ŀ��',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,1,'������','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,2,'��¥����ġ��','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,3,'��','50ml','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,4,'����','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,5,'�ұ�','1/3��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (16,6,'���Ұ���','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,1,'��Ÿ������','200g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,2,'ǥ������','4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,3,'����','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,4,'�������','2Ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,5,'��ġ����','1Ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,6,'������ Ȳ����','1/2ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (17,7,'��⸧','2ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,1,'���','500g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,2,'����','2����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,3,'��','250ml','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,4,'����','5����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,5,'�ø�����','2����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (18,6,'��������','1����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (19,1,'��ȣ��','4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (19,2,'ġ��','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (19,3,'����','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (19,4,'����','1T','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (19,5,'���','2��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (20,1,'����','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (20,2,'��','����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,1,'�ᳪ��','3��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,2,'����','���緮','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,3,'���尡��','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,4,'��������','1/2��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,5,'���ҽ�','���緮','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,6,'�簢�','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,7,'���','1�丷','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,8,'����','1�丷','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (21,9,'���尡��','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,1,'������ġ������','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,2,'��100%�������','70g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,3,'ȫ����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,4,'�а���','100g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,5,'�������縮','70g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,6,'û�����','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (22,7,'����','1.2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,1,'�����','1ĵ(400g¥��)','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,2,'���','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,3,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,4,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,5,'����ä �Ǵ� �Ͼ�ä','���緮','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,6,'����','���ⲯ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,7,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,8,'û�����','���ⲯ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,9,'�Ҹ�','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,10,'������','3.5ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,11,'���','���緮','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,12,'���� ���尡��','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,13,'����','3.5ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,14,'����','3.5ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,15,'���� ����','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (23,16,'���⸧','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,1,'��׻�','6��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,2,'��������','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,3,'����ġ��','70g','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,4,'�������','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,5,'��� �ӽ��͵�','1��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (24,6,'���尡��','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,1,'�Ļ�','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,2,'������','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,3,'���','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,4,'�����̽�ġ��','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,5,'�Ľ�������','�ణ','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (25,6,'������','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (26,1,'Ȳ��ä','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (26,2,'����','1/2��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (26,3,'����','2��Ǭ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (26,4,'�Ľ�������','����','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (27,1,'��Ʈ��ġ��','4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (27,2,'�а���',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (27,3,'�Ľ�������',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (27,4,'���','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (27,5,'������',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,1,'�ް�','4��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,2,'�����̽���','8��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,3,'�����̽�ġ��','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,4,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,5,'�츻����','1Ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,6,'����','0.5Ts','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,7,'�Ŀ���','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,8,'�������','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (28,9,'��������','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,1,'��(������)','1����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,2,'���',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,3,'����',null,'�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,4,'����',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,5,'����',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,6,'����',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (29,7,'���⸧',null,'���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,1,'�߰�����','1����','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,2,'�ϼ� �丶��','1��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,3,'����','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,4,'���','1/2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,5,'����̹���','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,6,'����ݸ�','1/3��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,7,'����','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,8,'������','2��','�����');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,9,'����� ���̽�Ʈ','3ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,10,'����','1ū��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,11,'�������','1��','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,12,'����','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,13,'û��','���緮','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,14,'�ұ�','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,15,'����','�ణ','���');
Insert into COOK.RECIPE_INGRE (RECIPE_NO,RECIPE_INGRE_NO,RECIPE_INGRE_NAME,RECIPE_INGRE_METERING,RECIPE_INGRE_TYPE) values (30,16,'����','���緮','���');
--------------------------------------------------------
--  DDL for Index RECIPE_INGRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."RECIPE_INGRE_PK" ON "COOK"."RECIPE_INGRE" ("RECIPE_NO", "RECIPE_INGRE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_INGRE
--------------------------------------------------------

  ALTER TABLE "COOK"."RECIPE_INGRE" ADD CONSTRAINT "RECIPE_INGRE_PK" PRIMARY KEY ("RECIPE_NO", "RECIPE_INGRE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."RECIPE_INGRE" MODIFY ("RECIPE_INGRE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INGRE" MODIFY ("RECIPE_INGRE_NAME" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INGRE" MODIFY ("RECIPE_INGRE_NO" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_INGRE" MODIFY ("RECIPE_NO" NOT NULL ENABLE);
