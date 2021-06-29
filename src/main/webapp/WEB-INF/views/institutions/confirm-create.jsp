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
<%@ include file="/WEB-INF/views/admin/header-logged-admin.jsp" %>
<section class="login-page">
    <h2><spring:message code="pages.admin.management.institution.add.success.title.text"/></h2>
    <div class="col">
        <div class="title"><spring:message code="pages.institution.list.name.text"/> "${institution.name}"</div>
        <div class="subtitle"><spring:message code="pages.institution.list.description.text"/> ${institution.description}</div>
    </div>
        <div class="form-group form-group--buttons">
            <a href="${pageContext.request.contextPath}/institution/list" class="btn"><spring:message code="pages.admin.management.institution.add.success.button.text"/></a>
        </div>
</section>
<%@ include file="/WEB-INF/views/admin/footer-logged-admin.jsp" %>

</body>
</html>