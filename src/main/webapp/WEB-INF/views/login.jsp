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
  <h2><spring:message code="pages.loginPage.title.text"/></h2>
  <form method="post" action="/login">
    <div class="form-group">
      <input type="email" name="email" placeholder="<spring:message code="pages.login.placeholder.email.text"/>" />
    </div>
    <div class="form-group">
      <input type="password" name="password" placeholder="<spring:message code="pages.login.placeholder.password.text"/>" />
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </div>

    <div class="form-group form-group--buttons">
      <a href="#" class="btn"><spring:message code="pages.loginPage.password.reset.text"/></a>
      <a href="#" class="btn"><spring:message code="pages.loginPage.account.register.text"/></a>
      <button class="btn" type="submit"><spring:message code="pages.loginPage.login.button.text"/></button>
    </div>
  </form>
</section>

<%@ include file="footer.jsp" %>

</body>
</html>
