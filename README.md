# Spring Boot CRUD 게시판 생성 전 세팅 목록
- 1 Encoding을 UTF-8로 맞추기
프로젝트를 생성할 때마다 세팅은 초기화 되므로
매번 File -> Settings에 들어가서 encode 입력 후
나오는 목록들의 encoding을 UTF-8로 맞춘다

ex) File -> Settings -> Editor -> File Encodings 에서 
Global Encoding  : UTF-8
Project Encoding : UTF-8

- 2 File -> Settings에서
a. 제일 상단 Enable annotation processing 항목 체크
b. Production sources directory: java
   Test sources directory: java
로 수정한 후 apply -> OK

- 3 (Project) 우클릭 -> Maven -> generate sources and update folders
이 프로젝트에서는 BoardRepositryImpl.java에 org.hdcd.domain.QBoard 를 import하기 위해 사용했다.
빌드패스를 다시 잡는 용도이며, log4J와 JUnit을 좀 더 편히 쓰기 위해 사용한다.

- 4 [3]을 실행했다면, intellij 창 우측 상단 세로로 눕혀있는 Maven 클릭한 후
Lifecycle -> clean 더블클릭 -> install 더블클릭
을 수행하여 잘 동작하는지 확인한다.



# Annotation 정리
선행 조건 : intellij 내 lombok 설치 (plugins)

### Controller의 @
1. @Controller
클래스에 @Controller를 선언함으로써 클라이언트의 요청을 직접적으로 받는 컴포넌트가 된다.
클라이언트가 url을 통해 요청을 보낸 경로가 @GetMapping에 설정된 경로와 일치한다면 return 값에 명시된 html로 페이지를 이동시킨다.

2. @RequestMapping
특정 uri로 요청을 보내면 특정 메서드와 매핑하기 위해 사용하는 어노테이션.
인자값으로 value뒤에 method를 명시해줘야 하는 불편함을 줄이기 위해, 공통 url은 class에 @RequestMapping으로 설정한 후 메서드에 @GetMapping, @PostMapping 등을 이용한다.
@RequestMapping은 class와 method 모두에 붙일 수 있지만, @GetMapping과 @PostMapping은 method에만 붙일 수 있다.

3. @GetMapping
어떤 정보를 가져와서 조회하기 위해 사용되는 방식이다.
@RequestMapping을 상속하며 URL에 변수를 포함시켜 요청하므로 보안에 취약하며 캐싱이 가능하다.
괄호 안에 명시된 경로로 사용자가 url을 입력하면 해당 함수가 실행된 후 최종으로 (return에 기재된 단어).html을 클라이언트에게 VIEW로 반환한다

4. @PostMapping
데이터를 서버로 제출하여 무언가를 추가하거나 수정하기 위한 전송 방식이다.
URL에 변수를 노출하지 않으므로 기본 보안이 있고 캐싱이 불가능하다.

5. @RequiredArgsConstructor
의존성 주입을 위한 생성자 주입 방식의 단점인 코드 생성의 귀찮음을 해결하는 역할을 한다.
final이나 @NotNull이 붙은 필드의 생성자를 자동으로 생성해주는 롬복 어노테이션

6. @PreAuthorize
요청이 들어와 함수를 실행하기 전에 권한을 검사하는 어노테이션

7. @RequestBody
@RequestBody 가 붙은 파라미터에는 http요청의 본문(body)이 그대로 전달된다.
일반적인 GET/POST의 요청 파라미터라면 @RequestBody를 사용할 일이 없을 것이다.
반면에 xml이나 json기반의 메시지를 사용하는 요청의 경우에 HTTP 요청의 바디내용을 통째로 자바객체로 변환해서 매핑된 메소드 파라미터로 전달해준다.

8. @ResponseBody
자바객체를 HTTP요청의 바디내용으로 매핑하여 클라이언트로 전송한다.
@ResponseBody 가 붙은 파라미터가 있으면 HTTP요청의 미디어타입과 파라미터의 타입을 먼저 확인한다.


### Service의 @
1. @RequiredArgsConstructor

2. @Service
@Component과 기능적 차이가 거의 없지만, 개발자간 소통, 레이어 별 구분을 하기 위해 서비스 Class에 명시해 사용한다.

3. @Transactional
DB 등의 트랜잭션 처리를 위해 사용하는 어노테이션.
class나 method에 붙여 사용하며 class에 붙이면 class 내 모든 method에 적용된다.
class에 붙이지 않고 method에 붙이면 해당 method에만 적용된다.

4. @Override
각 Service의 interface에 선언된 함수를 구현하기 위해 Override 한다.

### Domain의 @
1. @Getter
class에 사용하면 해당 class 내 인자에 대한 Getter를 자동으로 생성해준다.

2. @Setter
class에 사용하면 해당 class 내 인자에 대한 Setter를 자동으로 생성해준다.

3. @EqualsAndHashCode
두 객체의 내용이 같은 지 동등성을 비교하는 연산자인 equals와
두 객체가 같은 객체인지 동일성을 비교하는 연산자인 hashCode를 자동 생성해준다.

4. @ToString
class에 사용하면 toString() 메소드를 자동으로 생성해준다.

5. @Entity
테이블과 매핑하며 @Entity가 붙은 클래스는 JPA가 관리하는 것으로, 엔티티라 부른다.

6. @Table
엔티티와 매핑할 테이블을 지정, 생략 시 엔티티 이름을 테이블 이름으로 사용
예) @Table(name=”member”), 해당 class 내 엔티티들을 member 테이블과 매핑

7. @Id
특정 속성을 기본키로 설정한다.

8. @GeneratedValue
기본 키 값에 대한 생성 전략을 제공하며, 식별자 값을 자동 생성시켜줄 수 있다.
@Id와 함께 엔티티 또는 매핑된 슈퍼클래스의 기본 키 속성 또는 필드에 적용할 수 있다.

9. NotBlank
Validation이 가장 강하며 null과 ""와 " "모두 허용하지 않는다.

10. @Lob
Large Object를 지정하는 데 사용한다. 대부분의 DB에서 Text, BLOB, CLOB과 같은
대형 데이터 유형은 LOB(대용량 개체)로 처리된다.

11. @CreationTimeStamp
엔티티가 생성된 시간을 자동으로 기록한다.

12. @UpdateTimeStamp
엔티티가 업데이트된 시간을 자동으로 기록한다.

13. @IdClass
복합 키를 지정할 때 사용하며, @Id를 가진 필드가 두 개 이상, 즉 복합 키를 사용해야 한다.
그리고 @IdClass()에 복합 키를 매핑하기 위한 클래스를 지정한다.

14. @OneToMany
일대 다 관계를 나타내며, 엔티티와 관련된 다른 엔티티의 컬렉션을 지정할 수 있다.

15. @JoinColumn
연관된 엔티티를 참조하는 외래 키 컬럼을 지정하는 데 사용한다.
관계형 DB에서 엔티티 간이 관계를 맺을 수 있다.

16. @GeneratedValue
엔티티의 ID 값을 자동으로 생성하는데 사용하며, 엔티티를 생성할 때 ID 값을 수동으로 할당하는 대신 자동으로 생성할 수 있다.

17. @Transient
DB에 저장되지 않은 엔티티 속성을 나타내며, 일시적으로 사용되는 속성을 나타낼 수 있다.

### prop(프로퍼티)의 @
1. @Getter

2. @Setter

3. @Component

4. @ConfigurationProperties
Spring Boot에서 *.properties나 *.yml 파일에 있는 property를 자바 클래스에 바인딩하여 사용할 수 있게 해준다.

### common > aop의 @
1. @Slf4j
로그를 남기기 위한 방법으로 사용하며, 로깅에 대한 추상 레이어를 제공하는 인터페이스 모음이다.

2. @Component
개발자가 직접 작성한 Class를 Bean으로 등록하기 위해 사용한다.

3. @Aspect
@Aspect를 사용하면 aop를 구현한 것이라 인지를 하고, aop  구현을 위한 proxy 생성 등을 자동으로 해준다.

4. @Autowired
field, setter, method, constructor에서 사용하며, Type에 따라 자동으로 bean을 주입한다.
Type을 먼저 확인하여 못 찾는 경우에는 name에 따라 bean을 주입하는데,
이때 해당 타입의 bean 객체가 존재하지 않거나, 2개 이상 존재할 경우 스프링은 예외가 발생한다.

5. @Around
지정된 패턴에 해당하는 메소드가 실행되기 전, 후 모두에서 동작한다.
@Around가 붙은 메소드의 반환 값은
지정된 패턴에 해당하는 메소드의 실행 결과를 반환해야 하므로 Object이어야 한다.

### common > exception의 @
1. @Slfj4

2. @ControllerAdvice
@Controller에 대해 예외를 잡아 처리해주는 어노테이션이다.
클래스 안에는 @ExceptionHandler를 통해 본인이 핸들링하고 싶은 예외를 잡아 처리하면 된다.

3. @ExceptionHandler
Bean에서 발생하는 예외를 잡아 하나의 메서드에서 처리해주는 어노테이션이다.

# 코어 기능 정리

## Memeber > 권한, 계정, 검증, 보안

### 권한
- **관리자(ADMIN)**
   - 코드그룹, 코드, 회원, 회원게시판, 공지사항, 상품, 공개자료실
      - 관리(등록, 편집, 삭제, 권한부여, 파일 업로드)
- **회원(MEMBER)**
   - 회원게시판, 공지사항, 상품, 코인충전, 충전내역, 구매상품, 구매내역, 공개자료실
      - 사용(등록, 수정, 삭제, 구매, 충전, 파일 다운로드)
- **사용자(USER)**
   - 홈 외 접근금지

### 계정
- **회원가입**
  - 아이디 중복체크
- **로그인**
  - 중복 로그인(session)

## CRUD > 등록, 조회, 수정, 삭제, 파일 업/다운로드, 예외처리/오류페이지

### HEADER
- **회원가입**
  - 공통
     - 아이디, 비밀번호, 사용자명
  - 회원
     - 직업

- **로그인**
  - 공통(관리자, 회원, 사용자)
  - 로그인 상태 유지

### MENU
- **회원게시판(회원)**
  - 모든 회원의 글 리스트를 받아온다.
  - 공통
     - 검색
  - 등록, 수정, 삭제

- **회원게시판관리(관리자)**
  - 삭제

- **공지사항(회원)**
  - 관리자의 글 리스트를 받아온다.
  - 회원
     - 읽기

- **공지사항관리(관리자)**
  - 등록, 수정, 삭제

- **상품(회원)**
  - 관리자가 등록한 상품 리스트를 받아온다.
  - 공통
     - 읽기
  - 구매

- **상품관리(관리자)**
  - 등록, 편집, 삭제, 업로드

- **공개자료실(회원)**
  - 관리자가 등록한 글 리스트를 받아온다.
  - 읽기, 다운로드

- **공개자료실(관리자)**
  - 등록, 수정, 삭제, 업/다운로드

- **코인충전(회원)**
  - 입력, 충전

- **충전내역(회원)**
  - 각 회원의 충전 내역 리스트를 받아온다.
  - 읽기

- **구매상품(회원)**
  - 각 회원의 구매 상품 리스트를 받아온다.
  - 읽기, 파일 다운로드

- **구매내역(회원)**
  - 각 회원의 구매 내역 리스트를 받아온다.
  - 읽기

## 로깅 > Access, Login, Performance

### Access
- **AccessLoggingInterceptor**
  - 전처리기(preHandle()): 클라이언트로부터 컨트롤러가 요청을 받아올 때 실행됨.(컨트롤러가 호출되기 전 실행)
  - 후처리기(postHandle()): 컨트롤러가 클라이언트에 응답을 보낼 때 실행됨.(컨트롤러가 실행되고 난 후 호출됨.)

### Login
- **CustomLoginSuccessHandler**

### Performance
- **TimeCheckerAdvice**