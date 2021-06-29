<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title><spring:message code="pages.bar.title.text"/></title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<sec:authorize access="isAnonymous()">
    <%@ include file="header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <%@ include file="/WEB-INF/views/user/header-logged-user.jsp" %>
</sec:authorize>

<div class="slogan container container--90">
    <h2>
        ${error}
    </h2>
</div>


<sec:authorize access="isAnonymous()">
    <%@ include file="footer.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <%@ include file="/WEB-INF/views/user/footer-logged-user.jsp" %>
</sec:authorize>
<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
