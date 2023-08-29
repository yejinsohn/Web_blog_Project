## 🖥 blog_Project

#### 8월에는 블로그 제작 프로젝트를 진행해보고자 한다!

##### 💡 정보

Day : 2023/8/5-2023/8/ <br>
Language : Java <br>
Spring boot / MySQL <br>
의존성 설정 : Spring Boot DevTools, Lombok, Spring Data JPA, MySQL Driver, Spring Security, Spring Web

목적 : Y2K 유행으로 과거 유행했던 '싸이월드'와 같은 친한 사람들끼리 일상을 공유할 수 있는 블로그를 제작해보면 어떨까? 하는 생각에 제작하게 되었다!

##### 2023/8/5 ✔ <br>
<<개발 환경 구축 및 테스트 진행>> <br>

테스트를 진행하는 과정에서 Controller를 컴포넌트 스캔이 이루어지는 패키지 하위에 만들지 않고, 바깥에 생성해서 시간을 많이 잡아먹었다💦 

##### 2023/8/6 ✔ <br>
<<MySQL, Git 연동>> <br>

📎 application.yml과 application.properties의 차이 <br>
Spring Boot 프로젝트에서 일반적으로 프로젝트의 각종 설정을 작성하는 properties/yml 파일의 대표적인 차이는 내부 구조가 있다. <br>
properties는 각 줄마다 key=value의 형태로 구성되어 있는 반면, yml은 들여쓰기로 구분되는 계층 구조 및 key:value의 형태로 구성되어 있다.<br>
yml에서는 공통되는 구조는 상위에 한 번만 작성하고 하위에 다시 공통되는 구조가 작성되는 식으로 내려가다가 마지막에 최종적으로 값을 설정하게 되고,
properties에서는 같은 구조 내부의 설정이라도 구조 전체를 작성하므로 yml이 중복 코드가 줄어든다는 장점을 가지고 있다. 

##### 2023/8/8 ✔ <br>
<<HTTP 통신>> <br>

📎 HTTP1.1 <br>
HTTP(Hyper Text Transfer Protocol) : HTML 문서와 같은 리소스를 가져올 수 있도록 해주는 프로토콜 <br>
HTTP 요청이 발생하면 브라우저는 HTTP 요청 메시지를 생성하고, TCP/IP 프로토콜을 이용하여 웹 서버에 요청을 전달 <br>

##### HTTP 프로토콜의 가장 큰 특징 <br>
1. 비연결성 (connectionless)
2. 무상태성 (stateless)

##### 자주 쓰이는 HTTP Methods (Get, Post, Put, Delete) <br> 
GET : 데이터를 줘! <br>
POST : 데이터를 추가해줘! <br>
PUT : 데이터를 수정해줘! <br>
DELETE : 데이터를 삭제해줘! <br>

##### 2023/8/14 ✔ <br>
<<HTTP 통신 Test>> <br>

##### 2023/8/17 ✔ <br>
<<Table 생성>> <br>

📎 연관 관계
JPA에서는 JDBC를 사용했을 때와 달리 연관 관계에 있는 상대 테이블의 PK를 멤버변수로 갖지 않고, Entity 객체 자체를 참조한다.

ex) Board class의 userid : private User user;

📎 Table
class를 table화 하기 위해서는 @Entity <br>
User - id, username, password, email, role, createDate <br>
Board - id, title, content, count, userid, createDate <br> 
Reply - id, content, boardid, userid, createDate <br>

Board Table의 content를 @Lob 어노테이션을 통해 longtext 타입으로 설정하고자 했지만, 무슨 이유 때문인지 계속해서 tinytext로 만들어졌다...
그래서 @Lob 대신 @Column(columnDefinition = "LONGTEXT")를 통해 변경해줬다!

##### 2023/8/19 ✔ <br>

commit이 너무 꼬여버린 것 같아서 초기화를 하려고 했으나, "그냥 다시 시작하자!" 하는 마음에 리포지토리를 새로 생성했다.<br>

##### 2023/8/22 ✔ <br>
<<회원가입 Insert Test>> <br>

더미 데이터 Insert에서 @DynamicInsert은 insert할 때, null인 필드는 제외해준다.

##### 2023/8/25 ✔ <br>
<<Select, Paging, Update, Delete Test>>

##### 2023/8/29 ✔ <br>
<<Exception 처리, 화면 구현>>
