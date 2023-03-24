Spring Boot CRUD 게시판 생성 전 세팅 목록
1. Encoding을 UTF-8로 맞추기
프로젝트를 생성할 때마다 세팅은 초기화 되므로
매번 File -> Settings에 들어가서 encode 입력 후
나오는 목록들의 encoding을 UTF-8로 맞춘다

ex) File -> Settings -> Editor -> File Encodings 에서 
Global Encoding  : UTF-8
Project Encoding : UTF-8

2. File -> Settings에서
a. 제일 상단 Enable annotation processing 항목 체크
b. Production sources directory: java
   Test sources directory: java
로 수정한 후 apply -> OK

3. (Project) 우클릭 -> Maven -> generate sources and update folders
이 프로젝트에서는 BoardRepositryImpl.java에 org.hdcd.domain.QBoard 를 import하기 위해 사용했다.
빌드패스를 다시 잡는 용도이며, log4J와 JUnit을 좀 더 편히 쓰기 위해 사용한다.

4. 3.을 실행했다면, intellij 창 우측 상단 세로로 눕혀있는 Maven 클릭한 후
Lifecycle -> clean 더블클릭 -> install 더블클릭
을 수행하여 잘 동작하는지 확인한다.

