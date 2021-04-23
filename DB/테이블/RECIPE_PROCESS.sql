--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RECIPE_PROCESS
--------------------------------------------------------

  CREATE TABLE "COOK"."RECIPE_PROCESS" 
   (	"RECIPE_NO" NUMBER(6,0), 
	"RECIPE_STEP_NO" NUMBER(2,0), 
	"RECIPE_STEP_TEXT" VARCHAR2(300 BYTE), 
	"RECIPE_STEP_IMG" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_NO" IS '�����ǹ�ȣ';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_NO" IS '������������';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_TEXT" IS '��������';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_IMG" IS '�����̹���
';
REM INSERTING into COOK.RECIPE_PROCESS
SET DEFINE OFF;
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,2,'�������� 3~4cm ���̷� ����ּ���','7-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,3,'���� ���� ���� �������� 30�� �����ּ���','7-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,4,'�Ҽ����� 1�а� �����ݴϴ�','7-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,5,'�Ķ����ҿ� �⸧�� �θ��� �����а� �Ҽ����� �ְ� �����ݴϴ�','7-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,6,'����2, �ø���� 1�ְ� �����ݴϴ�','7-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,7,'�������� ������� ���� ������ ���⸧1, ����� �Ѹ��� ���� �� �����ּ���','7-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,8,'����� ��� �����ϴ� ����~ ������ �ҽ��� ���� �ϼ�!','7-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,1,'���̹����� 3������� �ڸ��� ���Ŀ� ���Ĵ� ä����ּ���.','8-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,2,'���� 2, ���� 2, �� 3, ���ҽ� 0.5, ���� 0.5�������� �ְ� �ҽ��� ������ּ���.','8-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,3,'�ޱ��ҿ� �⸧�� �θ��� ����, ����, ���̹����� �ְ� ���� ���� ��ŭ ��¦ �����ּ���.','8-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,4,'�ҽ��� �ξ��ּ���.','8-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,5,'������ ������������������ �����ָ� �ϼ�!','8-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,6,'������ �������� ���� �ް������� �ϳ� ^^','8-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,7,'���� ��� �ް������̸� �ø� ���� ���� ���� ���̹��� ��~��','8-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,1,'�����̹����� �� 2cm �β��� �����ϰ� ��ϴ�.','9-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,1,'����ũ�Ҽ����� �Ա� ���� ũ��� ����ּ���','7-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,2,'�����ϰ� �� �����̹����� ��鿡 Į���� ���ϴ�.','9-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,3,'�������ҿ� �Ŀ����� ������ �θ��� �� �ҷ� �ޱſ�.','9-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,4,'�׸��� �����̹����� �ø� �� �յڷ� ������� �����ϴ�.','9-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,5,'�����̹����� �븩�븩�ϰ� ������ ���� ��ҷ� ���̰� ���͸� ���� ���� ������ ��� ���Բ� �� ���̸� ���� �ݴϴ�.','9-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,6,'�׸��� ���� 1.5ū���� ���� 1.5ū���� ���� ���� ����� �� ��Բ� ������ �ָ� ����� �ϼ��̿���!','9-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,2,'���� �׸��� ���ĸ� ���� ��� ��������� �ѷ� ���δ�.','pa2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,3,'���尡�翡 �ణ�� ���� �ξ� �Ҹ� �� ���� ����, ���� ����, ����, �ұ�, ���ұ��� �־� ��� ���� ������� �����.','pa3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,4,'���� ���Ŀ� ������� �־� ��� ��������.','pa4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,1,'���δ� �⸧�� ���� ����ϰ� ������ ���� ���¹��� ���� ������ ��� �ε巴�� �� ���´�.','you1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,2,'�غ��� ���, ����� ������ �ľ� ���� ������.','you2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,3,'�з��� ��Ḧ �־� ���� �������� ���̴ٰ� ���� ���, ���, ���⸦ �ְ� ������ ������ �� ���� �����ϰ� ������.','you3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,4,'ä�ҿ� ��Ⱑ ������� �������� �������� ���θ� ������ �ְ� ������ ���� ���δ�.','you6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,5,'�����ϰ� ���� �信 ���� ���, ���, ��⸦ �־� ���� �� �����ش�.','you7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,6,'���� �� ���θ� �޼տ� ������ ��� ���������� ���� ���� ���� ���� ������ ���� ���� ���Ǹ���.','you8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,1,'���Ĵ� �Ѹ��� �߶󳻰� �ٵ�� ���⸦ ����.','pa1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,5,'������ ���Ĵ� �ټ� �Ѹ��� ��� ��� �� �� ���� �׾Ƹ��� ��´�.','pa5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,1,'����� ������ �㰡 �͹��� ���ְ� �����Ӹ��� �Բ� �ѹ� ���� ù ���� ������, �ٽ� ǫ ��Ƽ� ������ �غ��Ѵ�.','dduck1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,2,'����� �븥�ڿ� ���ڸ� ������ ������ ��ģ��.','dduck2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,3,'����� ä��ų� ������ ��� ���� ����Ͽ� ���´�.','dduck3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,4,'�������� ������ ���� �ľ� ������.','dduck4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,5,'���� ������ ����� �ұ����� ���� ���߰�  ä�� �Ŀ� ���� ������ �־� ���� ������ ���� ���ļ� �ְ�, ���� �; ������ ������ ���δ�.','dduck5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,6,'�����̳� �׸��� ������ ��� ���� ���� ������ ������� ��� ���尡�縦 �ణ �ѷ� ����.','dduck6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,2,'���� ���͸� �θ���, ���Ŀ� ���� ������ �ְ� ���ٰ� �������� �ְ� �Բ� �����ش�.','2-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,3,'���� ���İ� �������� ������ �������� ����, ��ũ��, ������ �ְ� ���̴ٰ� ���� ������ ���� ���ϰ� ���̰�, 2�� ���� �� ���� �ұ�, ���尡��� ���Ѵ�.','2-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,4,'���� ���� �ұ�, �Ŀ����� �ణ �ְ� �Ľ�Ÿ�� �־� ��ȣ�� �°� ������ ��� ���⸦ ����.','2-4.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,5,'�������ҿ� ���͸� �θ���, ��Ƴ��� �Ľ�Ÿ���� ���ٰ� ���� ���� �ҽ��� ������ ���ÿ� ��� ����.','2-5.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,1,'�ҹ�⿡ 2cm x 2cm�� �� ����, �ٽø�, ��ġ�� �־� ��ҿ��� ���̴ٰ� ���� �����ϸ� �ٽø��� ��ġ�� ��������.','3-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,2,'������ ������ �ذ� ��Ų �������� ���� �̴���, �ܻ��츦 �־� �������� ���� �������� ���κο� ���尡�縦 �־��ش�.','3-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,3,'������������ ���� ���߰� ����� �ణ�� ���⸧, ���ұ��� �־� �ҿ��� ������.','3-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,1,'���� ���ð� ä��� ������ ���ʿ� �̸� �����ݴϴ�','1-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,2,'���߰���� �ұ��� �ְ� ���� �������ּ���','1-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,3,'�غ��ص� ������,��������, ���⸧�� �ְ� ���� �������ּ���','1-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,4,'���� ������ �ұݾ��� �������ּžߵ˴ϴ� �������� ���ұ� �ѷ� �ϼ�','1-4.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,1,'���Ĵ� ä���, �������� �Ա� ���� ũ��� �����´�.','2-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,1,'����� ������ �� �� ������ �����Ѵ�.','10-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,2,'������ ���쿡 �ұ�, �ø�����, ���߸� �ణ�� �ְ� ������ ���� 10�а� ����.','10-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,3,'���� 20g, ���� ���� 2ū��, �ø���� 2ū��, �Ľ��� ���� �ణ�� �־� ���Ͱ��� �ҽ��� �����.','10-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,4,'���������� �ߺҷ� �ޱ� �� ���츦 �ְ� ���´�.','10-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,5,'���찡 ��¦ ������ ����� �� ���Ͱ��� �ҽ��� �ְ� ���´�.','10-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,6,'���Ͱ��� �ҽ��� ���Ƶ� ������ ��� ������ ���Ͱ������찡 �ϼ��ȴ�.','10-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,1,'���κθ� ���ÿ� ������ �÷��ݴϴ�.','11-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,2,'���ä�ҳ� ����ä�Ҹ� ���κ����� �÷��ݴϴ�.','11-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,3,'�з��� ����忡 ����,������ī�� �����ְ� ���κ����� �ѷ��ָ� �ϼ�.','11-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,1,'���� ������ �����ٲ��� ������ ���� ������ 180�� 15-20�� �����ּ���','12-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,2,'������ ������ Į�� �ݳ��� ��� �ֽôµ���. Į�� ������ ���� �ʰ� ������ ��¦ ����ֽ� �� ������ ���� �ֽø� �˴ϴ�.','12-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,3,'���� ������ ��� �ø��� �� ��¦ �ѷ��ݴϴ�','12-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,4,'�� ���� �� ���� ��¥���� ġ� �Ѹ��� �Ľ������縦 �ּ� �ѷ��ֽŵ� 170���� 5�� ���� �ֽø� ��!!!','12-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,1,'�����̶�, �������� �غ��մϴ�.','13-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,2,'�����̶��� �������� ���Ƽ� ��ġ�� �Ⱦ��ּ���.','13-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,3,'�Ķ����ҿ� �ø������� �θ��� �ұ�, ���߸� ������ �Ѹ� �� ��ҿ� õõ�� �븩�븩 �����ּ���.','13-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,4,'�ϼ��Դϴ�.','13-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,1,'���� 1/4���� ���� ������ �ұ� �ѵ� ����+���尡�� �ѷ� �ذ��ؿ�','14-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,2,'���� ���� �ҽ��� 4�� �ְ� �� 2�� ���� ��ƿ�','14-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,3,'���� �ҽ����� �� ���ݸ� ����� ���� �����','14-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,4,'���⿡ �ذ��� ���� �ణ�� �ְ�, ��¦ �ڲ� �������~','14-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,5,'���� ���� ����ġ�� ������ �ø���','14-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,6,'���������̾ �־��','14-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,7,'����-170������ 3�а� �����ݴϴ� ���� �ҽ����� ��ø�� �ӽ�Ÿ��ҽ� �Ľ������� �Ѹ��ϴ�','14-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,1,'��Ḧ �غ����ּ���~.','15-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,2,'���ʹ� �ε巴�� Ǯ���ּ���~.  (�Ŀ����� �׳� ����Ͻø� �ȴ�ϴ�~!!)','15-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,3,'������ �ְ� �����ּ���~.','15-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,4,'����� �ϳ��� �־�� �����ּ���~. (����� 2�� ���ÿ� ������ �и��� ������ �ֱ� ������ �ϳ��� �־��ּ���~!!)','15-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,5,'�ڷº�, ����ŷ�Ŀ��, ���ھ��Ŀ���� ü���� �־��ּ���~.','15-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,6,'���簡 �Ⱥ��϶����� �����ص� ����� 10������ ���������ּ���~.','15-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,7,'������ 20g������ �������ּ���~.','15-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,8,'���۵����ϰ� ����� ������ּ���~.','15-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,9,'�����Ŀ���� ��� �����ּ���~.','15-9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,10,'��Ű�� �������鼭 Ŀ���⶧���� ������ �������ּ���~.','15-10.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,11,'180���� ���쿡�� 10�� �����ָ� ���ڰ� ���ִ� ����ũ����Ű �ϼ��Դϴ�~!!������','15-11.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,1,'������ ��ҽ� ���������� �־� �ּ���','16-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,2,'������ ��50ml�ְ� ���ڷ����� 6�� ���� �ּ���','16-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,3,'�� ���� ������ ������ ����1��Ǭ,�ұ�1/3��Ǭ �ְ� �ذ��� �ּ���','16-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,4,'���Ұ���1��Ǭ�� �ְ� �����ּ���','16-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,5,'�����ϰ� �켭 ��� ġ� ��� �����ּ���','16-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,6,'�Ķ����ҿ� �⸧�� �θ��� �־��ּ���','16-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,7,'�븩�ϰ� �������� �丮 ��!!','16-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,1,'��Ÿ�������� ������ �β��� ��� �غ��ϰ�,','17-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,2,'ǥ������� �����ϰ� �����̽��ؼ� �غ��ؿ�.','17-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,3,'���� ���� �ұ��� �ణ�� �־ ��Ÿ�������� ���ĳ���, ǥ������� �־ ��¦ ���ĳ� ���⸦ ���ּ���.','17-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,4,'ü�� ���� ���⸦ �� ����, ����ϱ� ���� ������ �ѹ� �� ���⸦ ¥�ָ� ���ƿ�.','17-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,5,'��ġ���� 1Ts, ������ Ȳ���� 1/2ts, ��⸧ 2ts�� �� ��� �غ��ϰ�','17-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,6,'���⸦ �� ������ ����� �־ ��� �����ݴϴ�.','17-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,7,'������ ������ ��� ���̸� �鲢���縦 �־ �����ְ�,','17-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,8,'�ۼ� �� ���ĸ� �־ �����ְ� ������ ���ּ���.','17-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,1,'���η� �߶��ּ���.','18-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,2,'���η� �ڸ� ��࿡ ��� Į���� 2/3���� ���� �� �����̷� �����ּ���.','18-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,3,'���� ���� 2���� ���� �ְ� 30~1�а��� �����ּ���.','18-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,4,'��ġ�� ���̿� ����� �غ����ּ���.','18-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,5,'���� �� ���Ź�(������/ 250ml) �ξ��ֽð� ������ ���� ���� �ٽø� 2���� �־ �����ݴϴ�.','18-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,6,'���ۺ��� ������ �����ݴϴ�.','18-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,7,'§! �ϼ��Դϴ�~','18-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,1,'��ҷ� �ޱ��� �Ķ����ҿ� ���� �ѽ�Ǭ�� �쿩�ش�','19-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,2,'��ȣ�� 4���� �����ش�','19-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,3,'����Ķ��̸� ���ش�','19-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,4,'������ ��ȣ�� �ϳ��� ���','19-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,5,'�� ���� ����Ķ��̸� ���','19-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,6,'���߸� �Ѹ���','19-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,7,'�� ���� ġ� ���','19-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,8,'�� ȣ���� ���� �ϳ��� ������','19-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,9,'�ϼ�','19-9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,1,'�����Ѱ�, �� ���� �غ����ּ���','ham1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,2,'���Ĵ� ä ���, ���� �Ա� ���� ũ��� �߶��ּ���','ham2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,3,'�ޱ��ҿ� �⸧�� �θ��� ���ĸ� ���� �����ּ���','ham3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,4,'���߸� ���� �־��ּ��� ���� �����մϴ�','ham4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,5,'���İ� ���������� ���� �־��ּ���','ham5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,6,'���� �븩�븩 �������� �ϼ�!','ham6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,7,'�ʰ��� �ع����̿���','ham7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,8,'10���̸� �ҵ� ����� �ع��� ��������^^','ham8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,1,'�, ����, ����� ä����ֽñ���~~ ���ĵ� ����ϰ� ����ݴϴ�!!!','kong1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,2,'���̱��� �ҿ� �⸧�θ���~~~ �ᳪ��, ����, �������� �ݽ�Ǭ, ���尡�� 1��Ǭ �־��ּ���~~','kong2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,3,'��ᰡ ���� ���̰� �����ָ鼭~~~','kong3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,4,'���ҽ� �ν�Ǭ �־��ݴϴ�!!!! �ᳪ�� �翡 ���� ���� ���ҽ��� �������ֽø� �ȴ�ϴ�^^','kong4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,5,'�ᳪ���� ���Ⱑ ����鼭 ���� �;����~~~ �̶� �, ���, ���� �����ð�~~~ �μ��� �ݽ�Ǭ, ���⸧ �ݽ�Ǭ, ���� ������ �־��ݴϴ�!!!','kong5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,6,'��� ��ᰡ ���̰� �ָ��� �����ּ���~~~ �ʹ� ���� ������ �ᳪ���� �ǿ����ó�� �Ǵϱ�~~~ �����ð��� �����ֽø� �˴ϴ�!!! ���� �ᳪ�� ����� �ϼ��Դϴ�~~~ �ᳪ���� ����ѳ����� �ּ�~~~','kong6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,1,'������ ��Ḧ �غ��Ѵ�.','bean1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,2,'���� ������ġ�������� �״´�.','bean2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,3,'�а��縦 �־� ���� ���´�.','bean3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,4,'�Ա� ���� �� ��縮, ����, ȫ����, û����� �׸��� ���ĸ� �־� ���� ���´�.','bean4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,5,'�ޱ� �ҿ� �Ŀ����� �˳��ϰ� �θ� �� ������ �չٴ� ũ��� ���� �յڷ� �븩�ϰ� ���´�.','bean5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,6,'�ϼ��� �丮�� �׸��� ��´�.','bean6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,1,'���� ���(1/2��)�� ����(1/2��)�� �ݴ� ������� ����ֽð��. ����(1/2��)�� ����(1/2��)�� ä ����ּ���. ����(���ⲯ)�� ������ ũ���, û�����(���ⲯ) ��� ����ݴϴ�. ','gol1.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,2,'������ 3.5 ū ��, ��� ���尡�� 1 ū ��, ���� 3.5 ū ��, ���� 3.5 ū ��, ���� ���� 1 ū ��, ���⸧ 1 ū ��, ��� ���緮�� �ְ� �� ���� ����̹�ħ ������� ������.','gol2.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,3,'���� ��ä�� �����, ������� �ְ� �������� �����ּ���.','gol3.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,4,'�Ҹ��� ���� ������ 3-4�а� ���� �� ������ ���� �� ��� ü�� ���� ���⸦ ���ݴϴ�.','gol4.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,5,'�Ҹ��� ������ ���� ���Ƽ� ���� �� �ʿ� ���� �÷��ֽð��.','gol5.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,1,'���� ĵ ������ 1���� ��� ������� 1, ��� �ӽ��͵� 1, ���尡�� �ణ �־� ���� �ݴϴ�.','bbang1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,2,'�ٽ� ����ġ�� 70g�� �ְ� ��� �����ֱ�','bbang2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,3,'��׻� 6���� �غ��ϰ� ���κ��� �߶� ���� ���ݴϴ�. ��� ���� �Ĵ� �� ���̵鿡�� �����ֽø� �ſ�.','bbang3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,4,'������ ���� �������� ��׻� �ӿ� ä�� �־��ּ���.
�׸��� ���� 180������ 15�� ���� ���� �ָ� �˴ϴ�.
������ ���� ��� ���ڷ����� ����Ͻ� �Ǵµ���.
���ڷ������� ����ϸ� �ٻ����� �����.','bbang4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,5,'��׻� ��ġ�� �ϼ� ^^
������ �ڸ��� �������� ġ� �������� �� �پ
��~�� ����� �˵��ϴ� �ʹ� ������','bbang5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,1,'���� �Ļ��� ġ� �� ��� �̵�� �ؼ� ���� 4������ ������.','eg1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,2,'�Ļ� ���ʸ鿡 ����´->ġ�� ������ ���� �ٸ� �Ļ� ������ ���� �ݴϴ�.�� ���� ���������� �Ļ� �Ѹ��� ���� �����ݴϴ�.','eg2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,3,'����� ���� �Ľ��� ����� �����ݴϴ�.�ұݰ��� ���� ���� �ʾҽ��ϴ�','eg3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,4,'������� ���� �� �ݴϴ�.','eg4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,5,'�ޱ��� �ҿ� �ø������� �θ��� �Ļ� �ո�, �޸�, ������ �븩�븩�ϰ� ���� ���� �ݴϴ�.','eg5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,6,'¹��������!!! �����������佺Ʈ �ϼ��Դϴ�.','eg6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,1,'���� Ȳ��ä�� �Ա� ���� ������� ������ ����� �߶��ּ���','hw1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,2,'�ޱ��� �ҿ� ���� 2��Ǭ�� �쿩 �ݴϴ�','hw2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,3,'���Ͱ� ������ ������ Ȳ��ä�� �ְ� �븩�ϰ� �����ּ���','hw3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,4,'���Ͱ� �� ������ ������ ������ �־� ��¦ �� �����ֽñ���. ���������� �Ľ������� �ּ� �ѷ��ֽø� ���Դϴ�^^','hw4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,5,'5�� ���־��� ''Ȳ��ä ���ͱ���''�ϼ��Դϴ�.�Ѱ� �Ծ�� ���� �ٻ��ϸ鼭�� ���ް���ϴ� �� ���־��. �ѹ� ������ ����� ���� �ߵ��� ���� ���־��ֿ���^^','hw5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,1,'���� ���1���� Ǯ���ּ���. ���1�� Ǯ���ָ� ����غ�� ���� ��! �а���-���-�����縦 ���� �����ֱ⸸ �ϸ� �ǰŵ��^^','stic1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,2,'�����翡 �Ľ������縦 �����ָ� �ξ� ���־� ���δ�ϴ�. �Ľ������� �����ø� �н��ϼŵ� �ǿ�','stic2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,3,'��Ʈ��ġ� �а���-��� �����ְ� �ٽ��ѹ� �а���-����� �����ּſ�. �̷��� �����ϰ� ���� ����� ��� ���߿� ġ� �귯������ �ʾƿ�','stic3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,4,'�״��� �����絵 ���� �����ϰ� ���� �ݴϴ�.','stic4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,5,'�⸧�� �˳��� �θ��� Ƣ��� �����ֽø� ��! ���� ���� �ʿ���� ��ҿ��� �����簡 �븩�븩 ���������� ���� �ֽ� �ǿ�^^','stic5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,6,'�ʰ��� ġ�ƽ �ϼ��Դϴ�^^','stic6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,1,'�ް��� ���� �� Ǯ���ְ� ���⿡ �츻����� �ұ� ������ �����ּ���.','hce1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,2,'���⿡ �������볪 ������ ��¦ �־��ּ���.','hce2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,3,'�Ķ����ҿ� �⸧�� �θ��� ���������� ����ó�� �����ּ���.(�̶� �Ķ������� 20��ġũ��� �ϼ���.)
�츻���縦 �־ �����ؼ� �������� �ʴ´�ϴ�.','hce3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,4,'���� �ް����� �غ�Ǿ�����','hce4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,5,'���̴� ������ ����� ���� �ĳ���','hce5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,6,'��� ����ּ���.','hce6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,7,'���� �׳� ���ſ���.
ġ��� ������ ��ġ�� 5mm�β��� ����ּ���.','hce7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,8,'���� �ް����� ������ ��¦ �ٸ���','hce8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,9,'��,ġ��,���̸� �ְ�','hce9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,10,'���� �������.','hce10.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,11,'�̾��ð��� ������Ű�� 2��ġ�β��� ����ּ���~
�̰� �ٷ� �ΰ�Ǫ�� ��ġ��ް����̶��ϴ�~','hce11.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,1,'���� �� �������� �� ����° �丮�߾�� �� ���� ���� ���� ���ִ� ������ ������ ������ ������ �ʰ� �⸧�Ⱑ �ʹ� �������ؼ� ���� �� �����̶� �͹��� ����ϰ� �����߾��','jang1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,2,'���� ���� ��� ������ �˳��� �ξ��ּ���','jang2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,3,'�з��� ä�Ҵ� ä ��� �غ����ֽø� �ſ�','jang3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,4,'���� �����ϸ� �Ҽ����� �������ּ��� ����+������ ���ؼ� �׷��� �Ҽ����� ���� �����','jang4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,5,'����,������ �ְ� �����ּ��� ������ �ʹ� ���� ������ ���� Ź������ �� 2ū����,, 15�� ���� ����ּ���','jang5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,6,'������ �췯������ ä�Ҹ� �ְ� �����ּ���','jang6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,7,'�������� ���⸧ �� ū���� �־��ּ��� �� ���� ���� ���� �ʾ����� �̰ſ�� �ұ����� ���� �ϼ���','jang7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,8,'���� ���� ���� ���屹 �ϼ� �߹���̶��� �� �ٸ� ���̿���, ����+���⸧ �����ε�,, ���� �ұݿ� ��� �԰ų�, �츸 �߶󳻾� �����̶� ���� ���� ��!!','jang8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,1,'��Ḧ �غ� ���ּ���.','tomato1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,2,'�߰������� �� �� ũ��� ��� �ұ�, ����, û�ַ� �ذ� �� �⳻ ���Ÿ� ���ּ���.','tomato2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,3,'�丶�信 ���ڷ� Į���� �־� ���� ���� ��¦ ��ģ �� ������ ���� ��� �����鼭 ������ ���ܳ��ϴ�.
������ ���� �丶��� 8������� ����ּ���.','tomato3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,4,'�������� ���� ũ��� ����ּ���.','tomato4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,5,'���, ����, ����, ����ݸ��� �߰������ ����� ũ��� ����ּ���.
�׸��� ������ ���̰�, ����̴� 4������� ��� �ּ���.','tomato5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,6,'�ҿ� ���͸� ���� �� �ذ��� �� �߰������� ������ ���� ���ϸ� �׸��� ���� ��Ƶμ���.','tomato6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,7,'�߰������� ���� �ҿ� ���͸� �� ���� �� ����, ������, ����, ���, ����, �����, ����ݸ� ������ �����ּ���.','tomato7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,8,'���� ������ �θ��� ���̽�Ʈ�� ���ٰ� �߰��, ä�Ҹ� �־� ���� �����ּ���.','tomato8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,9,'ä�Ұ� ��游ŭ ���� �װ� �������, ������ �ְ� 30�� ���� �����ּ���.','tomato9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,10,'��� ��ᰡ ������ �丶�並 �ְ� �ұ�, ���߷� ���� �� �� 10�� ���� ���̸� �ϼ��Դϴ�.','tomato10.jpg');
--------------------------------------------------------
--  DDL for Index RECIPE_PROCESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COOK"."RECIPE_PROCESS_PK" ON "COOK"."RECIPE_PROCESS" ("RECIPE_NO", "RECIPE_STEP_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_PROCESS
--------------------------------------------------------

  ALTER TABLE "COOK"."RECIPE_PROCESS" ADD CONSTRAINT "RECIPE_PROCESS_PK" PRIMARY KEY ("RECIPE_NO", "RECIPE_STEP_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COOK"."RECIPE_PROCESS" MODIFY ("RECIPE_STEP_IMG" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_PROCESS" MODIFY ("RECIPE_STEP_TEXT" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_PROCESS" MODIFY ("RECIPE_STEP_NO" NOT NULL ENABLE);
  ALTER TABLE "COOK"."RECIPE_PROCESS" MODIFY ("RECIPE_NO" NOT NULL ENABLE);
