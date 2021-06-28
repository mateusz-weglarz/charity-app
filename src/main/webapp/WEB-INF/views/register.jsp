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
<%@ include file="header.jsp" %>

<section class="login-page">
    <h2><spring:message code="pages.registerPage.head.text"/></h2>
    <form:form method="post" action="/register/form" modelAttribute="user">
        <div class="form-group">
            <input type="text" name="firstName" placeholder="<spring:message code="pages.registerPage.placeholder.firstName.text"/>" />
        </div>
        <div class="form-group">
            <input type="text" name="lastName" placeholder="<spring:message code="pages.registerPage.placeholder.LastName.text"/>" />
        </div>
        <div class="form-group">
            <input type="email" name="email" placeholder="<spring:message code="pages.registerPage.placeholder.email.text"/>" />
        </div>
        <div class="form-group">
            <input type="password" name="password" placeholder="<spring:message code="pages.registerPage.placeholder.password.text"/>" />
        </div>
        <div class="form-group">
            <input type="password" name="matchingPassword" placeholder="<spring:message code="pages.registerPage.placeholder.password.repeat.text"/>" />
        </div>

        <div class="form-group form-group--buttons">
            <a href="${pageContext.request.contextPath}/login" class="btn btn--without-border"><spring:message code="pages.access.login.text"/></a>
            <button class="btn" type="submit"><spring:message code="pages.registerPage.button.registerAccount.text"/></button>
        </div>
    </form:form>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>
