<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header>
  <nav class="container container--70">
    <ul class="nav--actions">
      <li><a href="${pageContext.request.contextPath}/logout" class="btn btn--small btn--highlighted"><spring:message code="pages.access.logout.text"/></a></li>
      <li><a href="${pageContext.request.contextPath}?lang=en" class="btn btn--small btn--without-border"><spring:message code="pages.language.en.text"/></a></li>
      <li><a href="${pageContext.request.contextPath}?lang=pl" class="btn btn--small btn--without-border"><spring:message code="pages.language.pl.text"/></a></li>
    </ul>

    <ul>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.management.institution.text"/></a></li>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.management.categories.text"/></a></li>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.management.donations.text"/></a></li>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.management.users.text"/></a></li>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.management.admins.text"/></a></li>
      <li><a href="#" class="btn btn--without-border"><spring:message code="pages.menu.account.text"/></a></li>
      <div class=""><spring:message code="pages.menu.user.helloUser.text"/> ${loggedUser.firstName}</div>
    </ul>
  </nav>
</header>