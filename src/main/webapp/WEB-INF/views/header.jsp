<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="${pageContext.request.contextPath}/login" class="btn btn--small btn--without-border"><spring:message code="pages.access.login.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}/register/form" class="btn btn--small btn--highlighted"><spring:message code="pages.access.register.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}?lang=en" class="btn btn--small btn--without-border"><spring:message code="pages.language.en.text"/></a></li>
            <li><a href="${pageContext.request.contextPath}?lang=pl" class="btn btn--small btn--without-border"><spring:message code="pages.language.pl.text"/></a></li>
        </ul>

        <ul>
            <li><a href="${pageContext.request.contextPath}/donation-form"
                   class="btn btn--without-border active"><spring:message code="pages.menu.start.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.whatup.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.about.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.fund&org.text"/></a></li>
            <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.contact.text"/></a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                <spring:message code="pages.main.slogan.text"/>
            </h1>
        </div>
    </div>
</header>