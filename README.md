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
### Controller의 @
1. @Controller
클래스에 @Controller를 선언함으로써 클라이언트의 요청을 직접적으로 받는 컴포넌트가 된다.
클라이언트가 url을 통해 요청을 보낸 경로가 @GetMapping에 설정된 경로와 일치한다면 return 값에 명시된 html로 페이지를 이동시킨다.

2. @RequestMapping
특정 uri로 요청을 보내면 특정 메서드와 매핑하기 위해 사용하는 어노테이션.
인자값으로 value뒤에 method를 명시해줘야 하는 불편함을 줄이기 위해, 공통 url은 class에 @RestMapping으로 설정한 후 메서드에 @GetMapping, @PostMapping 등을 이용한다.
@ReusetMapping은 class와 method 모두에 붙일 수 있지만, @GetMapping과 @PostMapping은 method에만 붙일 수 있다.

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

