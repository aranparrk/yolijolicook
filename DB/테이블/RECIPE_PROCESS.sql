--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-23-2021   
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

   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_NO" IS '레시피번호';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_NO" IS '조리과정순번';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_TEXT" IS '조리내용';
   COMMENT ON COLUMN "COOK"."RECIPE_PROCESS"."RECIPE_STEP_IMG" IS '조리이미지
';
REM INSERTING into COOK.RECIPE_PROCESS
SET DEFINE OFF;
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,2,'마늘쫑을 3~4cm 길이로 썰어주세요','7-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,3,'펄펄 끊는 물에 마늘쫑을 30초 데쳐주세요','7-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,4,'소세지도 1분간 데쳐줍니다','7-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,5,'후라이팬에 기름을 두르고 마늘쫑과 소세지를 넣고 볶아줍니다','7-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,6,'간장2, 올리고당 1넣고 볶아줍니다','7-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,7,'마늘쫑이 어느정도 숨이 죽으면 참기름1, 통깨를 뿌리고 조금 더 볶아주세요','7-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,8,'어른아이 모두 좋아하는 반찬~ 마늘쫑 소시지 볶음 완성!','7-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,1,'팽이버섯은 3등분으로 자르고 양파와 대파는 채썰어주세요.','8-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,2,'간장 2, 맛술 2, 물 3, 굴소스 0.5, 설탕 0.5숟가락을 넣고 소스를 만들어주세요.','8-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,3,'달군팬에 기름을 두르고 대파, 양파, 팽이버섯을 넣고 숨이 죽을 만큼 살짝 볶아주세요.','8-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,4,'소스를 부어주세요.','8-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,5,'국물이 자작자작해질때까지 조려주면 완성!','8-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,6,'국물이 자작해질 동안 달걀프라이 하나 ^^','8-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (8,7,'밥을 담고 달걀프라이를 올린 다음 흰자 위로 팽이버섯 비~잉','8-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,1,'새송이버섯은 약 2cm 두께로 도톰하게 썹니다.','9-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (7,1,'프랑크소세지를 먹기 좋은 크기로 썰어주세요','7-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,2,'도톰하게 썬 새송이버섯의 양면에 칼집을 냅니다.','9-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,3,'프라이팬에 식용유를 적당히 두르고 센 불로 달궈요.','9-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,4,'그리고 새송이버섯을 올린 뒤 앞뒤로 뒤집어가며 굽습니다.','9-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,5,'새송이버섯이 노릇노릇하게 익으면 불을 약불로 줄이고 버터를 넣은 다음 버섯에 고루 묻게끔 잘 녹이며 구워 줍니다.','9-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (9,6,'그리고 맛술 1.5큰술과 간장 1.5큰술을 넣은 다음 양념이 잘 배게끔 뒤집어 주며 구우면 완성이에요!','9-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,2,'넓은 그릇에 실파를 고르게 펴고 까나리액젓을 뿌려 절인다.','pa2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,3,'고춧가루에 약간의 물을 부어 불린 후 다진 마늘, 다진 생강, 설탕, 소금, 깨소금을 넣어 고루 섞어 양념장을 만든다.','pa3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,4,'절인 실파에 양념장을 넣어 고루 버무린다.','pa4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,1,'유부는 기름을 떼고 어슷하게 반으로 갈라 끓는물에 데쳐 찬물에 헹궈 부드럽게 해 놓는다.','you1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,2,'준비한 우엉, 당근은 깨끗이 씻어 곱게 다진다.','you2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,3,'분량의 재료를 넣어 만든 조림장을 끓이다가 다진 우엉, 당근, 쇠고기를 넣고 국물이 없어질 때 까지 은근하게 조린다.','you3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,4,'채소와 고기가 어느정도 조려지면 마지막에 유부를 뒤집어 넣고 뒤적여 맛을 들인다.','you6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,5,'고슬고슬하게 지은 밥에 조린 우엉, 당근, 고기를 넣어 골고루 잘 섞어준다.','you7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (4,6,'간이 밴 유부를 왼손에 뒤집어 잡고 오른손으로 밥을 꼭꼭 눌러 유부 안으로 넣은 다음 오므린다.','you8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,1,'실파는 뿌리를 잘라내고 다듬어 물기를 뺀다.','pa1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (5,5,'버무린 실파는 다섯 뿌리씩 모아 잡고 한 데 묶어 항아리에 담는다.','pa5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,1,'쇠고기는 찬물에 담가 핏물을 없애고 양지머리와 함께 한번 끓여 첫 물을 버리고, 다시 푹 고아서 육수를 준비한다.','dduck1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,2,'계란은 노른자와 흰자를 나누어 지단을 부친다.','dduck2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,3,'쇠고기는 채썰거나 다져서 양념 재료로 양념하여 볶는다.','dduck3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,4,'가래떡을 어슷썰어 물에 씻어 건진다.','dduck4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,5,'①의 육수에 간장과 소금으로 간을 맞추고  채썬 파와 다진 마늘을 넣어 팔팔 끓으면 떡을 헤쳐서 넣고, 떡이 익어서 떠오를 때까지 끓인다.','dduck5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (6,6,'대접이나 그릇에 떡국을 담고 위에 고기와 지단을 고명으로 얹고 후춧가루를 약간 뿌려 낸다.','dduck6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,2,'냄비에 버터를 두르고, 양파와 다진 마늘을 넣고 볶다가 베이컨을 넣고 함께 볶아준다.','2-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,3,'②의 양파가 투명해질 정도로 볶아지면 우유, 생크림, 바질을 넣고 끓이다가 끓어 오르면 불을 약하게 줄이고, 2분 정도 더 끓여 소금, 후춧가루로 간한다.','2-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,4,'끓는 물에 소금, 식용유를 약간 넣고 파스타를 넣어 기호에 맞게 적당히 삶아 물기를 뺀다.','2-4.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,5,'프라이팬에 버터를 두르고, 삶아놓은 파스타면을 볶다가 끓여 놓은 소스를 버무려 접시에 담아 낸다.','2-5.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,1,'뚝배기에 2cm x 2cm로 썬 양파, 다시마, 멸치를 넣어 약불에서 끓이다가 끓기 시작하면 다시마와 멸치를 건져낸다.','3-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,2,'국물이 끓으면 해감 시킨 바지락과 씻은 미더덕, 잔새우를 넣어 바지락의 입이 벌어지면 순두부와 고춧가루를 넣어준다.','3-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (3,3,'새우젓국으로 간을 맞추고 계란과 약간의 참기름, 깨소금을 넣어 불에서 내린다.','3-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,1,'무는 가늘게 채썰어 설탕과 식초에 미리 절여줍니다','1-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,2,'고추가루와 소금을 넣고 쓱쓱 버무려주세요','1-2.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,3,'준비해둔 다진파,다진마늘, 참기름을 넣고 같이 버무려주세요','1-3.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (1,4,'간을 봐가며 소금양을 조절해주셔야됩니다 마무리로 깨소금 뿌려 완성','1-4.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (2,1,'양파는 채썰고, 베이컨은 먹기 좋은 크기로 썰어놓는다.','2-1.png');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,1,'새우는 껍질을 깐 뒤 내장을 제거한다.','10-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,2,'손질한 새우에 소금, 올리브유, 후추를 약간씩 넣고 버무린 다음 10분간 재운다.','10-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,3,'버터 20g, 다진 마늘 2큰술, 올리고당 2큰술, 파슬리 가루 약간을 넣어 버터갈릭 소스를 만든다.','10-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,4,'프라이팬을 중불로 달군 뒤 새우를 넣고 굽는다.','10-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,5,'새우가 살짝 익으면 만들어 둔 버터갈릭 소스를 넣고 볶는다.','10-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (10,6,'버터갈릭 소스가 졸아들 때까지 계속 볶으면 버터갈릭새우가 완성된다.','10-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,1,'연두부를 접시에 뒤집어 올려줍니다.','11-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,2,'어린잎채소나 새싹채소를 연두부위에 올려줍니다.','11-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (11,3,'분량의 양념장에 양파,파프리카를 다져넣고 연두부위에 뿌려주면 완성.','11-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,1,'먼저 고구마를 익혀줄껀데 깨끗이 씻은 고구마를 180도 15-20분 돌려주세요','12-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,2,'다익은 고구마는 칼로 반나눠 썰어 주시는데요. 칼이 끝가지 가지 않게 위에만 살짝 썰어주신 뒤 손으로 벌려 주시면 됩니다.','12-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,3,'버터 한조각 가운데 올리고 꿀 살짝 뿌려줍니다','12-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (12,4,'그 다음 그 위에 모짜렐라 치즈를 뿌리고 파슬리가루를 솔솔 뿌려주신뒤 170도에 5분 돌려 주시면 끝!!!','12-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,1,'떡뽁이떡, 베이컨을 준비합니다.','13-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,2,'떡볶이떡에 베이컨을 말아서 꼬치에 꽂아주세요.','13-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,3,'후라이팬에 올리브유를 두르고 소금, 후추를 가볍게 뿌린 후 약불에 천천히 노릇노릇 구워주세요.','13-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (13,4,'완성입니다.','13-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,1,'양파 1/4개는 굵게 다지고 소금 한두 꼬집+후춧가루 뿌려 밑간해요','14-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,2,'끓는 물에 소시지 4개 넣고 약 2분 정도 삶아요','14-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,3,'삶은 소시지는 끝 조금만 남기고 반을 갈라요','14-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,4,'여기에 밑간한 양파 약간씩 넣고, 살짝 꾹꾹 눌러줘요~','14-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,5,'양파 위에 피자치즈 적당히 올리고','14-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,6,'에어프라이어에 넣어요','14-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (14,7,'굽기-170도에서 3분간 구워줍니다 구운 소시지에 케첩과 머스타드소스 파슬리가루 뿌립니다','14-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,1,'재료를 준비해주세요~.','15-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,2,'버터는 부드럽게 풀어주세요~.  (식용유는 그냥 사용하시면 된답니다~!!)','15-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,3,'설탕을 넣고 섞어주세요~.','15-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,4,'계란은 하나씩 넣어가며 섞어주세요~. (계란을 2개 동시에 넣으면 분리가 날수가 있기 때문에 하나씩 넣어주세요~!!)','15-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,5,'박력분, 베이킹파우더, 코코아파우더를 체에쳐 넣어주세요~.','15-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,6,'가루가 안보일때까지 섞어준뒤 냉장고에 10분정도 휴지시켜주세요~.','15-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,7,'반죽을 20g정도씩 분할해주세요~.','15-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,8,'동글동글하게 모양을 만들어주세요~.','15-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,9,'슈가파우더를 듬뿍 뭍혀주세요~.','15-9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,10,'쿠키가 구워지면서 커지기때문에 간격을 유지해주세요~.','15-10.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (15,11,'180도의 오븐에서 10분 구워주면 예쁘고 맛있는 초코크랙쿠키 완성입니다~!!♡♡♡','15-11.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,1,'고구마는 깍뚝썰어서 위생봉지에 넣어 주세요','16-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,2,'봉지에 물50ml넣고 전자렌지에 6분 돌려 주세요','16-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,3,'다 쪄진 고구마는 으깨서 설탕1스푼,소금1/3스푼 넣고 밑간해 주세요','16-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,4,'찹쌀가루1스푼을 넣고 섞어주세요','16-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,5,'납작하게 펴서 가운데 치즈를 얹고 덮어주세요','16-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,6,'후라이팬에 기름을 두르고 넣어주세요','16-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (16,7,'노릇하거 익혀내면 요리 끝!!','16-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,1,'느타리버섯은 적당한 두께로 찢어서 준비하고,','17-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,2,'표고버섯은 두툼하게 슬라이스해서 준비해요.','17-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,3,'끓는 물에 소금을 약간만 넣어서 느타리버섯을 데쳐내고, 표고버섯도 넣어서 살짝 데쳐내 물기를 빼주세요.','17-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,4,'체에 밭쳐 물기를 뺀 다음, 양념하기 전에 손으로 한번 더 물기를 짜주면 좋아요.','17-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,5,'멸치액젓 1Ts, 비정제 황설탕 1/2ts, 들기름 2ts을 잘 섞어서 준비하고','17-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,6,'물기를 뺀 버섯에 양념을 넣어서 고루 섞어줍니다.','17-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,7,'액젓과 양념들이 고루 배이면 들깻가루를 넣어서 섞어주고,','17-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (17,8,'송송 썬 쪽파를 넣어서 섞어주고 마무리 해주세요.','17-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,1,'세로로 잘라주세요.','18-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,2,'새로로 자른 곤약에 가운데 칼집을 2/3정도 내고 그 사이이로 돌려주세요.','18-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,3,'물에 식초 2숟갈 정도 넣고 30~1분가량 데쳐주세요.','18-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,4,'데치는 사이에 양념을 준비해주세요.','18-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,5,'냄비에 물 한컵반(종이컵/ 250ml) 부어주시고 위에서 만든 양념과 다시마 2장을 넣어서 졸여줍니다.','18-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,6,'보글보글 끓여서 졸여줍니다.','18-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (18,7,'짠! 완성입니다~','18-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,1,'약불로 달궈진 후라이팬에 버터 한스푼을 녹여준다','19-1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,2,'꿀호떡 4개를 구어준다','19-2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,3,'계란후라이를 해준다','19-3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,4,'구어진 꿀호떡 하나를 깔고','19-4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,5,'그 위에 계란후라이를 얹고','19-5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,6,'후추를 뿌리고','19-6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,7,'그 위에 치즈를 얹고','19-7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,8,'꿀 호떡을 마저 하나더 얹으면','19-8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (19,9,'완성','19-9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,1,'양파한개, 햄 조금 준비해주세요','ham1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,2,'양파는 채 썰고, 햄은 먹기 좋은 크기로 잘라주세요','ham2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,3,'달군팬에 기름을 두르고 양파를 먼저 볶아주세요','ham3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,4,'후추를 조금 넣어주세요 생략 가능합니다','ham4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,5,'양파가 투명해지면 햄을 넣어주세요','ham5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,6,'햄이 노릇노릇 구워지면 완성!','ham6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,7,'초간단 밑반찬이에요','ham7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (20,8,'10분이면 뚝딱 만드는 밑반찬 만들어보세요^^','ham8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,1,'어묵, 양파, 당근은 채썰어주시구요~~ 대파도 어슷하게 썰어줍니다!!!','kong1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,2,'속이깊은 팬에 기름두르고~~~ 콩나물, 양파, 다진마늘 반스푼, 고춧가루 1스푼 넣어주세요~~','kong2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,3,'재료가 골고루 섞이게 볶아주면서~~~','kong3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,4,'굴소스 두스푼 넣어줍니다!!!! 콩나물 양에 따라서 간은 굴소스로 조절해주시면 된답니다^^','kong4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,5,'콩나물이 물기가 생기면서 거의 익었어요~~~ 이때 어묵, 당근, 대파 넣으시고~~~ 부순깨 반스푼, 참기름 반스푼, 설탕 세꼬집 넣어줍니다!!!','kong5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (21,6,'모든 재료가 섞이게 휘리릭 볶아주세요~~~ 너무 오래 볶으면 콩나물이 실오라기처럼 되니까~~~ 빠른시간에 볶아주시면 됩니다!!! 이제 콩나물 어묵볶음 완성입니다~~~ 콩나물의 고소한냄새가 솔솔~~~','kong6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,1,'각각의 재료를 준비한다.','bean1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,2,'볼에 돼지김치콩비지찌개를 붓는다.','bean2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,3,'밀가루를 넣어 골고루 섞는다.','bean3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,4,'먹기 좋게 썬 고사리, 숙주, 홍고추, 청양고추 그리고 대파를 넣어 골고루 섞는다.','bean4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,5,'달군 팬에 식용유를 넉넉하게 두른 후 반죽을 손바닥 크기로 떠서 앞뒤로 노릇하게 굽는다.','bean5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (22,6,'완성된 요리를 그릇에 담는다.','bean6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,1,'먼저 당근(1/2개)와 오이(1/2개)는 반달 모양으로 썰어주시고요. 양파(1/2개)와 대파(1/2대)는 채 썰어주세요. 깻잎(취향껏)은 적당한 크기로, 청양고추(취향껏) 어슷 썰어줍니다. ','gol1.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,2,'고추장 3.5 큰 술, 고운 고춧가루 1 큰 술, 설탕 3.5 큰 술, 식초 3.5 큰 술, 다진 마늘 1 큰 술, 참기름 1 큰 술, 통깨 적당량을 넣고 잘 섞어 골뱅이무침 양념장을 만들어요.','gol2.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,3,'볼에 야채와 골뱅이, 양념장을 넣고 조물조물 무쳐주세요.','gol3.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,4,'소면은 끓는 물에서 3-4분간 삶은 후 찬물에 여러 번 헹궈 체에 밭쳐 물기를 빼줍니다.','gol4.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (23,5,'소면은 손으로 돌돌 말아서 접시 한 쪽에 먼저 올려주시고요.','gol5.jfif');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,1,'볼에 캔 옥수수 1컵을 담고 마요네즈 1, 허니 머스터드 1, 후춧가루 약간 넣어 섞어 줍니다.','bbang1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,2,'다시 피자치즈 70g을 넣고 고루 섞어주기','bbang2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,3,'모닝빵 6개를 준비하고 윗부분을 잘라 속을 파줍니다. 가운데 속을 파는 건 아이들에게 시켜주시면 돼요.','bbang3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,4,'버무려 놓은 옥수수를 모닝빵 속에 채워 넣어주세요.
그리고 오븐 180도에서 15분 정도 구워 주면 됩니다.
오븐이 없을 경우 전자레인지 사용하심 되는데요.
전자레인지를 사용하면 바삭함은 없어요.','bbang4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (24,5,'모닝빵 콘치즈 완성 ^^
반으로 자르면 옥수수랑 치즈가 사이좋게 딱 붙어서
쭈~욱 눌어나고 쫀득하니 너무 맛나요','bbang5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,1,'먼저 식빵과 치즈를 한 장당 이등분 해서 각각 4조각씩 만들어요.','eg1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,2,'식빵 한쪽면에 딸기쨈->치즈 순으로 놓고 다른 식빵 조각을 덮어 줍니다.그 다음 베이컨으로 식빵 겉면을 돌돌 말아줍니다.','eg2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,3,'계란을 깨서 파슬리 가루와 섞어줍니다.소금간은 따로 하지 않았습니다','eg3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,4,'계란물로 샤워 해 줍니다.','eg4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,5,'달궈진 팬에 올리브유를 두르고 식빵 앞면, 뒷면, 옆면을 노릇노릇하게 골고루 구워 줍니다.','eg5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (25,6,'쨔자자자잔!!! 베이컨에그토스트 완성입니다.','eg6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,1,'먼저 황태채를 먹기 좋은 사이즈로 가위를 사용해 잘라주세요','hw1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,2,'달궈진 팬에 버터 2스푼을 녹여 줍니다','hw2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,3,'버터가 녹으면 손질한 황태채를 넣고 노릇하게 볶아주세요','hw3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,4,'버터가 잘 베였다 싶으면 설탕을 넣어 살짝 더 볶아주시구요. 마지막으로 파슬리가루 솔솔 뿌려주시면 끝입니다^^','hw4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (26,5,'5분 맥주안주 ''황태채 버터구이''완성입니다.한개 먹어보니 정말 바삭하면서도 달콤고소하니 참 맛있어요. 한번 먹으면 멈출수 없는 중독성 강한 맥주안주에요^^','hw5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,1,'먼저 계란1개를 풀어주세요. 계란1개 풀어주면 재료준비는 거의 끝! 밀가루-계란-빵가루를 묻혀 구워주기만 하면 되거든요^^','stic1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,2,'빵가루에 파슬리가루를 섞어주면 훨씬 맛있어 보인답니다. 파슬리가루 없으시면 패스하셔도 되요','stic2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,3,'스트링치즈에 밀가루-계란 묻혀주고 다시한번 밀가루-계란을 묻혀주셔요. 이렇게 도톰하게 옷을 만들어 줘야 나중에 치즈가 흘러나오지 않아요','stic3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,4,'그다음 빵가루도 골고루 도톰하게 묻혀 줍니다.','stic4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,5,'기름을 넉넉히 두르고 튀기듯 구워주시면 끝! 오래 구울 필요없이 약불에서 빵가루가 노릇노릇 해질때까지 구워 주심 되요^^','stic5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (27,6,'초간단 치즈스틱 완성입니다^^','stic6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,1,'달걀은 깨서 잘 풀어주고 여기에 녹말가루와 소금 우유를 섞어주세요.','hce1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,2,'여기에 오레가노나 바질을 살짝 넣어주세요.','hce2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,3,'후라이팬에 기름을 두르고 코팅해준후 지단처럼 부쳐주세요.(이때 후라이팬은 20센치크기로 하세요.)
녹말가루를 넣어서 웬만해선 찢어지지 않는답니다.','hce3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,4,'이제 달걀랩이 준비되었으면','hce4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,5,'오이는 껍질을 벗기고 속을 파내고','hce5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,6,'길게 썰어주세요.','hce6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,7,'햄은 그냥 쓸거에요.
치즈는 두장을 겹치고 5mm두께로 썰어주세요.','hce7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,8,'이제 달걀랩에 마요네즈를 살짝 바르고','hce8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,9,'햄,치즈,오이를 넣고','hce9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,10,'돌돌 감아줘요.','hce10.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (28,11,'이쑤시개로 고정시키고 2센치두께로 썰어주세요~
이게 바로 핑거푸드 햄치즈달걀랩이랍니다~','hce11.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,1,'오늘 뭐 먹지에선 닭 껍질째 요리했어요 더 깊은 맛이 나고 맛있다 하지만 삶으면 껍질은 먹지도 않고 기름기가 너무 많은듯해서 제거 후 내장이랑 핏물을 깔끔하게 손질했어요','jang1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,2,'물은 닭이 잠길 정도로 넉넉히 부어주세요','jang2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,3,'분량의 채소는 채 썰어 준비해주시면 돼요','jang3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,4,'끓기 시작하면 불순물을 제거해주세요 껍질+손질을 잘해서 그런지 불순물이 거의 없어요','jang4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,5,'마늘,간장을 넣고 끓여주세요 간장은 너무 많이 넣으면 색이 탁해지니 딱 2큰술만,, 15분 정도 삶아주세요','jang5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,6,'국물이 우러나오면 채소를 넣고 끓여주세요','jang6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,7,'마무리로 참기름 반 큰술을 넣어주세요 전 따로 간을 하지 않았지만 싱거우면 소금으로 간을 하세요','jang7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (29,8,'국물 맛이 좋은 닭장국 완성 닭백숙이랑은 또 다른 맛이에요, 간장+참기름 때문인듯,, 닭은 소금에 찍어 먹거나, 살만 발라내어 국물이랑 같이 먹음 딱!!','jang8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,1,'재료를 준비 해주세요.','tomato1.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,2,'닭가슴살을 한 입 크기로 썰어 소금, 후추, 청주로 밑간 및 잡내 제거를 해주세요.','tomato2.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,3,'토마토에 십자로 칼집을 넣어 끓는 물에 살짝 데친 후 차가운 물에 담궈 식히면서 껍질을 벗겨냅니다.
껍질을 벗긴 토마토는 8등분으로 썰어주세요.','tomato3.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,4,'베이컨은 한입 크기로 썰어주세요.','tomato4.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,5,'당근, 감자, 양파, 브로콜리는 닭가슴살과 비슷한 크기로 썰어주세요.
그리고 마늘은 저미고, 양송이는 4등분으로 썰어 주세요.','tomato5.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,6,'팬에 버터를 녹인 후 밑간을 한 닭가슴살을 익히다 색이 변하면 그릇에 따로 담아두세요.','tomato6.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,7,'닭가슴살을 볶던 팬에 버터를 더 녹인 후 마늘, 베이컨, 양파, 당근, 감자, 양송이, 브로콜리 순으로 볶아주세요.','tomato7.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,8,'냄비에 오일을 두르고 페이스트를 볶다가 닭고기, 채소를 넣어 같이 볶아주세요.','tomato8.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,9,'채소가 잠길만큼 물을 붓고 월계수잎, 바질을 넣고 30분 정도 끓여주세요.','tomato9.jpg');
Insert into COOK.RECIPE_PROCESS (RECIPE_NO,RECIPE_STEP_NO,RECIPE_STEP_TEXT,RECIPE_STEP_IMG) values (30,10,'모든 재료가 익으면 토마토를 넣고 소금, 후추로 간을 한 후 10분 정도 끓이면 완성입니다.','tomato10.jpg');
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
