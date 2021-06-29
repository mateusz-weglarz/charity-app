<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title><spring:message code="pages.bar.title.text"/></title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<%@ include file="/WEB-INF/views/user/header-logged-user.jsp" %>

<section class="login-page">
    <h2><spring:message code="pages.logoutPage.title.text"/></h2>
    <form method="post" action="/logout">
        <div class="form-group">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
        <div class="form-group form-group--buttons">
            <a href="/user/dashboard" class="btn"><spring:message code="pages.logoutPage.button.cancel.text"/></a>
            <button class="btn" type="submit"><spring:message code="pages.logoutPage.button.logout.text"/></button>
        </div>
    </form>
</section>

<%@ include file="/WEB-INF/views/user/footer-logged-user.jsp" %>

</body>
</html>
