import 'dart:math';

import 'package:intl/intl.dart';
import 'package:sqlite3/sqlite3.dart';

class DbService {
  Database db;

  DbService(this.db);

  Future initTables() async {
    db.execute('''
      CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        email TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
        username TEXT NOT NULL,
        registration_date DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        category TEXT NOT NULL,
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS project_type (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        type TEXT NOT NULL,
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS project (
        id INTEGER PRIMARY KEY AUTOINCREMENT, -- 프로젝트 아이디 
        category_id INTEGER,  -- 카테고리 아이디 
        project_type_id INTEGER,  -- 프로젝트 타입 아이디
        project_class TEXT,  -- 프로젝트 유형 (펀딩, 프리오더 등) 
        user_id TEXT, -- 프로젝트 등록 사용자 아이디 
        title TEXT NOT NULL, -- 프로젝트 제목
        owner TEXT NOT NULL, -- 프로젝트 오너
        price INTEGER NOT NULL, -- 목표 금액
        thumbnail TEXT NOT NULL, -- 대표 이미지 
        deadline  TEXT NOT NULL, -- 프로젝트 종료일 
        description TEXT NOT NULL, -- 프로젝트 설명 
        is_open TEXT NOT NULL, -- 프로젝트 오픈여부  
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS project_image (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        project_id INTEGER, -- 프로젝트 아이디 
        image BLOB,
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS reward (
        id INTEGER PRIMARY KEY AUTOINCREMENT, -- 리워드 아이디 
        project_id INTEGER,
        image_url TEXT NOT NULL,
        price INTEGER NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        image_raw BLOB NOT NULL,
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS fund (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        project_id INTEGER, 
        user_id INTEGER,
        email TEXT NOT NULL,
        price INTEGER NOT NULL,
        created DATETIME
      );
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS waitlist (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        project_id INTEGER, 
        user_id INTEGER,
        email TEXT NOT NULL,
        created DATETIME
      );
    ''');

    return true;
  }

  Future dropTables() async {
    db.execute("DROP TABLE IF EXISTS users;");
    db.execute("DROP TABLE IF EXISTS categories;");
    db.execute("DROP TABLE IF EXISTS project_type;");
    db.execute("DROP TABLE IF EXISTS project_image;");
    db.execute("DROP TABLE IF EXISTS project;");
    db.execute("DROP TABLE IF EXISTS fund;");
    db.execute("DROP TABLE IF EXISTS waitlist;");
    db.execute("DROP TABLE IF EXISTS reward;");
  }

  Future insertDummyDatas() async {
    insertDummyUsers();
    insertCategories();
    insertProjectType();
    insertProjectDummyData();
  }

  void insertDummyUsers() {
    db.execute(
        """INSERT INTO users (email, password, username, registration_date) VALUES ('user@dummy.com', 'password', '성실한 펀딩자', DATETIME('now'));""");
    db.execute(
        """INSERT INTO users (email, password, username, registration_date) VALUES ('user1@dummy.com', 'password', '크라우드펀딩초보', DATETIME('now'));""");
    db.execute(
        """INSERT INTO users (email, password, username, registration_date) VALUES ('user2@dummy.com', 'password', '펀딩행복', DATETIME('now'));""");
  }

  void insertCategories() {
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('펀딩', DATETIME('now'));""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('오픈예정',DATETIME('now'));""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('스토어',DATETIME('now'));""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('예약구매',DATETIME('now'));""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('혜택',DATETIME('now'));""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('펀딩체험단',DATETIME('now'))""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('뷰티워크',DATETIME('now'))""");
    db.execute(
        """INSERT INTO categories (category, created) VALUES ('새학기출발',DATETIME('now'))""");
  }

  void insertProjectType() {
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('테크·가전',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('패션',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('뷰티',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('홈·리빙',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('스포츠·아웃도어',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('푸드',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('도서·전자책',DATETIME('now'))""");
    db.execute(
        """INSERT INTO project_type (type, created) VALUES ('클래스',DATETIME('now'))""");
  }

  void insertProjectDummyData() {
    final categories = [
      '펀딩',
      '오픈예정',
      '스토어',
      '예약구매',
      '혜택',
      '펀딩체험단',
      '뷰티워크',
      '새학기출발',
    ];

    final projectTypes = [
      '테크·가전',
      '패션',
      '뷰티',
      '홈·리빙',
      '스포츠·아웃도어',
      '푸드',
      '도서·전자책',
      '클래스',
    ];

    List<Map<String, dynamic>> projects = [
      {
        "title": "아이돌 관리비법 | 준비 안 된 얼굴라인도 살리는 부스터 세럼",
        "owner": "세상에 없던 브랜드",
        "thumbnail": [
          "https://images.unsplash.com/photo-1575249142951-35b95b9bb5b7?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1706448703260-2ad13853602c?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1706419972358-028e2c713133?q=80&w=3271&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1700602453636-f0e4c63533fa?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
        ],
        "description":
            '아이돌들은 항상 최상의 모습으로 무대에 선다는 압박을 받는 만큼 피부 관리에 많은 시간과 노력을 투자합니다. 준비가 되지 않은 얼굴 라인이나 피부 문제를 해결하기 위해 부스터 세럼을 활용하는 것은 흔한 전략 중 하나입니다. 부스터 세럼은 피부에 집중적으로 영양을 공급하여 피부를 환하고 건강하게 만들어줍니다. '
                '아이돌들의 피부 관리 비법 중 하나로는 세럼을 사용하는 것이 있습니다. 무대 위에서 빛나는 피부를 유지하기 위해 적절한 세럼을 선택하고 사용하는 것이 중요합니다. 얼굴 라인을 살리고 피부 상태를 개선하기 위해 다양한 성분이 함유된 세럼을 선택할 수 있습니다.',
      },
      {
        "title": "[예약판매] 편안함을 선사하는 쿠션 쇼파",
        "owner": "(주) 과거리버스",
        "thumbnail": [
          "https://images.unsplash.com/photo-1589361557054-4f8366403a79?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1589361558560-58fd95e47b3b?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1589361558558-eef50e74dc37?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1589361559230-7f985d3075cc?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            '편안함을 선사하는 쿠션 쇼파는 많은 사람들에게 인기 있는 제품 중 하나입니다. 쇼파는 우리가 휴식을 취하거나 손님을 대접할 때 자주 사용되는데, 편안한 쇼파는 집안에서 가장 중요한 가구 중 하나로 여겨집니다. '
                '쿠션 쇼파는 집안에서 휴식을 취하거나 손님을 맞이할 때 중요한 역할을 합니다. 따라서 편안함과 디자인, 내구성을 고려하여 적절한 제품을 선택하는 것이 중요합니다.',
      },
      {
        "title": "[내 손안의 와이파이] LTE 라우터로 어디서든 공짜 인터넷!",
        "owner": "(주) 더빠르게",
        "thumbnail": [
          "https://images.unsplash.com/photo-1484807352052-23338990c6c6?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1551703599-2a53f65da7e7?q=80&w=3273&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1521542464131-cb30f7398bc6?q=80&w=3273&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1417733403748-83bbc7c05140?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            "LTE 라우터를 통해 어디서든 무료 인터넷을 즐길 수 있다는 것은 정말 편리한 기능입니다! LTE 라우터는 이동 중에도 안정적인 인터넷 연결을 제공하여 모바일 기기나 노트북 등 여러 장치를 동시에 연결할 수 있습니다. "
                "LTE 라우터를 사용하는 것은 일반적으로 휴대폰 데이터 요금제에 따라 비용이 청구됩니다. 그러나 일부 지역에서는 무료 또는 저렴한 공공 와이파이를 제공하는 경우도 있습니다. 이 경우 LTE 라우터를 통해 해당 와이파이에 연결하여 무료 인터넷을 이용할 수 있습니다",
      },
      {
        "title": "여행의 질을 올려드릴게요! 비행기 탈 때 필수 아이템 ‘Air 쿠션",
        "owner": "하늘에서둥둥",
        "thumbnail": [
          "https://images.unsplash.com/photo-1488085061387-422e29b40080?q=80&w=3131&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1558285549-2a06f9a5fe65?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1476157808914-828d68f0f401?q=80&w=1863&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            "비행기 탑승 시 편안함을 높여주는 \"Air 쿠션\"은 여행의 질을 향상시키는 필수 아이템 중 하나입니다. 이러한 쿠션은 다양한 형태와 크기로 제공되며, 다음과 같은 이점을 제공합니다: "
                "Air 쿠션은 여행자들에게 편안하고 쾌적한 여행 경험을 선사해줍니다. 따라서 다음 여행 계획을 세우실 때, Air 쿠션을 준비하여 편안한 여정을 즐겨보세요!",
      },
      {
        "title": "전자렌지 12분이면 갓 지은 밥이 뚝딱! 칼로리 & 탄수화물 -45%",
        "owner": "네이쳐다이어트",
        "thumbnail": [
          "https://images.unsplash.com/photo-1625980319455-985e5442c5ae?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1516684732162-798a0062be99?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://plus.unsplash.com/premium_photo-1664648184141-4342041f526b?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            "전자렌지로 12분 만에 갓 지은 밥을 만드는 것은 정말 편리한 방법 중 하나입니다! 전자렌지를 사용하면 빠르게 밥을 삶을 수 있어서 시간을 절약할 수 있습니다. "
                "하지만, 밥의 칼로리와 탄수화물을 줄이는 것은 밥을 조리하는 방식에 따라 달라집니다. 전자렌지를 사용하여 밥을 만들 때, 밥의 양과 사용하는 재료에 따라 칼로리와 탄수화물을 조절할 수 있습니다."
      },
      {
        "title": "콜라겐 효소 클렌징팩",
        "owner": "효소더하기효소",
        "thumbnail": [
          "https://images.unsplash.com/photo-1552046122-03184de85e08?q=80&w=2624&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708878442375-6847ab22d775?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1556227702-5ec9eb8df3ff?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1601646094870-36b3b38d3349?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1619451427882-6aaaded0cc61?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            "각질개선, 보습, 윤기까지 1분이면 끝. 콜라겐 효소 클렌징팩은 피부를 부드럽게 클렌징하고 동시에 콜라겐과 효소 성분을 함유하여 피부를 영양으로 가득 채우는 제품입니다. 이 제품은 주로 피부를 깨끗하게 하고 탄력을 높여주는 데 사용됩니다."
      },
      {
        "title": "[속탄력+20%] 탄력부스터 앰플세럼 / 피부속 탄력을 켜다_임상실험완료",
        "owner": "(주) 탄력더하기",
        "thumbnail": [
          "https://images.unsplash.com/photo-1631159351471-b76960446b38?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1617897903246-719242758050?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1618330834871-dd22c2c226ca?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ],
        "description":
            "각질개선, 보습, 윤기까지 1분이면 끝. 콜라겐 효소 클렌징팩은 피부를 부드럽게 클렌징하고 동시에 콜라겐과 효소 성분을 함유하여 피부를 영양으로 가득 채우는 제품입니다. 이 제품은 주로 피부를 깨끗하게 하고 탄력을 높여주는 데 사용됩니다."
      },
      {
        "title": "[게임] 이것이 무한의 던전 일까? 막상들어오니 최강자였던 이야기",
        "owner": "알수 없는 개발 게임즈",
        "thumbnail": [
          "https://images.unsplash.com/photo-1550745165-9bc0b252726f?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1553481187-be93c21490a9?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1535223289827-42f1e9919769?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
        ],
        "description":
            "이 게임은 \"이것이 무한의 던전인가?\"라는 제목으로, 무한의 던전 속에서 전투와 탐험을 즐기는 액션 RPG입니다. 플레이어는 무한의 던전을 탐험하며 각종 몬스터와 보스를 상대하고, 강력한 장비와 스킬을 획득하여 자신의 캐릭터를 강화합니다. 그러나 던전 내부에 숨겨진 비밀과 미스터리가 풀리며 최강자로 여겨진 캐릭터의 이야기가 전개됩니다.",
      },
      {
        "title": "블루라이트 차단 안경 | 스마트폰 중독 예방을 위한 안경",
        "owner": "디지털 브레이크",
        "thumbnail": [
          "https://images.unsplash.com/photo-1575249142951-35b95b9bb5b7?q=80&w=3270"
        ],
        "description":
            "스마트폰과 모니터에서 발생하는 블루라이트로부터 눈을 보호해주는 안경입니다. 디지털 중독 예방과 눈 건강을 위해 필수품입니다."
      },
      {
        "title": "환경 친화적 재활용 백 | 지구를 사랑하는 소비자를 위한 지속 가능한 백",
        "owner": "그린 패션",
        "thumbnail": [
          "https://images.unsplash.com/photo-1706448703260-2ad13853602c?q=80&w=3270"
        ],
        "description":
            "재활용된 소재로 만든 지속 가능한 환경 친화적 백입니다. 지구를 사랑하는 소비자들을 위한 스타일리시하고 동시에 친환경적인 선택입니다."
      },
      {
        "title": "식물 기반 친환경 세제 | 자연을 사랑하는 가정을 위한 청결 솔루션",
        "owner": "그린홈",
        "thumbnail": [
          "https://images.unsplash.com/photo-1706419972358-028e2c713133?q=80&w=3271"
        ],
        "description":
            "화학 성분을 포함하지 않는 친환경 세제로, 가정에서 사용할 수 있는 친환경 청소 솔루션입니다. 식물성 원료로 만들어진 이 세제는 자연을 사랑하는 소비자들에게 이상적입니다."
      },
      {
        "title": "운동용 휴대용 물병 | 건강한 라이프스타일을 위한 스마트한 디자인",
        "owner": "피트니스 트렌드",
        "thumbnail": [
          "https://images.unsplash.com/photo-1700602453636-f0e4c63533fa?q=80&w=3270"
        ],
        "description":
            "어디서나 쉽게 휴대할 수 있는 휴대용 물병으로, 운동 중에도 수분 보충이 가능합니다. 건강한 라이프스타일을 추구하는 사람들을 위한 필수 아이템입니다."
      },
      {
        "title": "빠른 요리를 위한 스마트 다용도 조리기 | 바쁜 일상을 위한 혁신적인 주방 도구",
        "owner": "스마트푸드",
        "thumbnail": [
          "https://images.unsplash.com/photo-1706448703260-2ad13853602c?q=80&w=3270"
        ],
        "description":
            "바쁜 현대인들을 위한 스마트 다용도 조리기로, 빠르고 효율적인 요리를 가능하게 합니다. 주방에서의 시간을 절약하고 더 많은 여유 시간을 만들어줍니다."
      },
      {
        "title": "도시 생활자를 위한 공기 청정기 | 실내 공기 질을 개선하는 스마트 가전 제품",
        "owner": "클린테크",
        "thumbnail": [
          "https://images.unsplash.com/photo-1706419972358-028e2c713133?q=80&w=3271"
        ],
        "description":
            "도시 생활자들을 위한 스마트 공기 청정기로, 실내 공기를 깨끗하게 유지합니다. 미세먼지와 유해한 물질을 제거하여 건강한 환경을 제공합니다."
      },
      {
        "title": "소음 차단 이어폰 | 전문가가 만든 완벽한 소리 체험을 위한 이어폰",
        "owner": "사운드마스터",
        "thumbnail": [
          "https://images.unsplash.com/photo-1575249142951-35b95b9bb5b7?q=80&w=3270"
        ],
        "description":
            "전문가가 만든 완벽한 소리 체험을 위한 소음 차단 이어폰입니다. 최고의 음질로 음악을 즐기고 일상 속에서 소음을 차단하세요."
      }
    ];
    final year = 2024;
    for (var i = 0; i < 100; i++) {
      int randomIndex = Random().nextInt(projects.length);
      Map<String, dynamic> randomProject = projects[randomIndex];
      final categoryId = Random().nextInt(8) + 1;
      final projectTypeId = Random().nextInt(8) + 1;
      final userId = '${Random().nextInt(3) + 1}';
      final title = randomProject['title'];
      final owner = randomProject['owner'];
      final price = Random().nextInt(10000000) + 10000;
      final thumbnail = randomProject['thumbnail']
          [Random().nextInt(randomProject['thumbnail'].length)];

      final deadline = DateFormat("yyyy-MM-dd")
          .format(DateTime(year, Random().nextInt(10), Random().nextInt(30)));
      final description = randomProject['description'];
      final isOpen = i % 2 == 0 ? "open" : "close";

      db.execute("""
    INSERT INTO project (
        category_id,
        project_type_id,
        project_class,
        user_id,
        title,
        owner,
        price,
        thumbnail,
        deadline,
        description,
        is_open,
        created
    ) VALUES (
        $categoryId,
        $projectTypeId,
        '펀딩',
        '$userId',
        '$title',
        '$owner',
         $price,
        '$thumbnail',
        '$deadline',
        '$description',
        '$isOpen',
        DATETIME('now')
    ); 
    """);
    }

    for (var i = 0; i < 200000; i++) {
      final projectId = Random().nextInt(100) + 1;
      final userId = '${Random().nextInt(2) + 1}';
      final email = "user${Random().nextInt(2) + 1}@dummy.com";
      final price = Random().nextInt(10000000) + 10000;

      db.execute("""
        INSERT INTO fund (
            project_id,
            user_id,
            email,
            price,
            created
        ) VALUES (
            $projectId,
            '$userId',
            '$email',
            $price,
            DATETIME('now')
        );
        """);

      db.execute("""
        INSERT INTO waitlist (
            project_id,
            user_id,
            email,
            created
        ) VALUES (
            $projectId,
            '$userId',
            '$email',
            DATETIME('now')
        );
        """);
    }

    for (var i = 0; i < 10000; i++) {
      final projectId = Random().nextInt(100) + 1;
      final userId = '${Random().nextInt(2) + 1}';
      final email = "user${Random().nextInt(2) + 1}@dummy.com";
      final price = Random().nextInt(10000000) + 10000;

      db.execute("""
        INSERT INTO waitlist (
            project_id,
            user_id,
            email,
            created
        ) VALUES (
            $projectId,
            '$userId',
            '$email',
            DATETIME('now')
        );
        """);
    }
  }
}
