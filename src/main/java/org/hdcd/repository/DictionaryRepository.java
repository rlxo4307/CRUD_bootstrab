<html xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorate="layouts/main_template">

<head>
    <title>siteUdic</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="../../static/css/bootstrap.css" th:href="@{/css/bootstrap.css}"/>
</head>
<body>
<div layout:fragment="content">
    <h2 th:text="#{dic.header.modify}">사용자 사전 수정</h2>

    <form class="form-group" id="modify" action="list.html" th:action="@{/siteUdic/modify}" th:object="${siteUdicDTO}" method="POST">
<!--        <input type="hidden" th:name="_word" th:value="${siteUdic._word}"/>-->
        <table>
            <tr>
                <td><div class="form-display-inline"><input class="form-control" type="text" th:field="*{_word}" readonly/></div></td>
                <td><div class="form-display-inline">단어</div></td>
                <td><span class="error_message" th:if="${#fields.hasErrors('_word')}" th:errors="*{_word}">_word 에러 메시지</span></td>
            </tr>
            <tr>
                <td><div class="form-display-inline"><input class="form-control" type="text" name="_memo" /></div></td>
                <td><div class="form-display-inline">메모 수정</div></td>
                <td><span class="error_message" th:if="${#fields.hasErrors('_memo')}" th:errors="*{_memo}">_memo 에러 메시지</span></td>
            </tr>
        </table>
    </form>

    <div>
        <button type="submit" class="btn btn-primary" id="btnModify" th:text="#{action.modify}">수정</button>
        <button type="submit" class="btn btn-primary" id="btnList" th:text="#{action.list}">목록</button>
        <button type="submit" class="btn btn-primary" id="btnManage" th:text="#{action.manage}">관리</button>
    </div>
    <br>

    <script>
        $(document).ready(function() {
            var formObj = $("#modify");

            $("#btnModify").on("click", function() {
                formObj.submit();
            });

            $("#btnList").on("click", function() {
                self.location = "list";
            });

            $("#btnManage").on("click", function() {
                self.location = "manage";
            });
        });
    </script>
</div>
</body>
</html>
