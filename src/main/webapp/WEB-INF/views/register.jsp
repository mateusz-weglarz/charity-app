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

    <link rel="stylesheet" href="<c:url value="../resources/css/style.css"/>"/>
</head>
<body>
<header>
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="${pageContext.request.contextPath}/login" class="btn btn--small btn--without-border"><spring:message code="pages.access.login.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}/register/form" class="btn btn--small btn--highlighted"><spring:message code="pages.access.register.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}?lang=en" class="btn btn--small btn--without-border"><spring:message code="pages.language.en.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}?lang=pl" class="btn btn--small btn--without-border"><spring:message code="pages.language.pl.text"/></a></li>
        </ul>

        <ul>
            <li><a href="${pageContext.request.contextPath}/donation-form" class="btn btn--without-border active"><spring:message code="pages.menu.start.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.whatup.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.about.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.fund&org.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.contact.text"/></a></li>
        </ul>
    </nav>
</header>

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
