## 🖥 blog_Project

#### 8월부터는 블로그 제작 프로젝트를 진행해보고자 한다!

##### 💡 정보

Day : 2023/8/5-2023/ <br>
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
<<JSON 학습>> <br>

##### 2023/8/22 ✔ <br>
<<회원가입 Insert Test>> <br>

더미 데이터 Insert에서 @DynamicInsert은 insert할 때, null인 필드는 제외해준다.

##### 2023/8/25 ✔ <br>
<<Select, Paging, Update, Delete Test>>

##### 2023/8/29 ✔ <br>
<<Exception 처리, 메인 화면 구현>> <br>

Bootstrap4를 이용해 UI 골격 구현 <br>
STS4에서는 JSP Editor를 지원하지 않기 때문에 JSP Editor를 사용하기 위해 Web Developer Tool를 별도로 설치 <br>

Navbar와 Footer의 경우, 모든 페이지에 동일하게 적용될 수 있도록 스크립트는 바디가 끝나는 가장 아래에 배치

##### 2023/9/1 ✔ <br>
<<메인 화면 수정 및 로그인/회원가입 화면 구현>> <br>

##### 2023/9/5 ✔ <br>
<<로그인/회원가입 기능 구현>> <br>

AJAX를 통한 회원가입 기능

##### 2023/9/6 - 9/7 ✔ <br>
<<로그인/회원가입 기능 구현>> <br>

Jstl 에러로 몇시간을 헤매고 고생하다가 드디어 해결했다ㅜㅜㅜㅜㅜㅜ
원인은 Springboot 버전이 올라가면서 Servlet의 패키지가 변경되었고 따라서 의존성 주입도 달라졌기 때문이었다...

##### 2023/9/9 - 9/10 ✔ <br>
<<로그인 기능 구현>>

spring security 에러 때문에 정말 죽을 것 같다...
코드에러 다 없앴더니 페이지가 403에러 뜨고 너무 어렵다 정말 ㅠ
조금 더 단순하고 쉽게 로그인할 수 있는 방법은 없을까?

참고하고 있는 자료랑 버전이 달라서 다른 자료들 찾아보는데 내 에러는 해결되지 않았다 이게 말이 되나
-> 인터셉터로 구현할 예정

##### 2023/9/11 ✔ <br>
<<게시판 기능 구현>>

글쓰기, 수정, 삭제

##### 2023/9/14-9/15 ✔ <br>
<<로그인 / 게시판 기능 수정>>

작성자만 수정 및 삭제가 가능 하도록 수정

##### 2023/9/16 ✔ <br>
<<게시판 comment 기능 구현>>
