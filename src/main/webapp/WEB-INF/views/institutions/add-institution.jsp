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
<style>
    .errors {
        color: red;
    }
</style>
<%@ include file="/WEB-INF/views/admin/header-logged-admin.jsp" %>

<section class="login-page">
    <h2><spring:message code="pages.admin.management.institution.add.text"/></h2>
    <form:form method="post" action="/institution/add" modelAttribute="institution">
        <div class="form-group">
            <label for="name"><spring:message code="pages.admin.management.institution.add.name.text"/></label>
            <form:input path="name" type="text"/>
            <form:errors path="name" cssClass="errors"/>
        </div>
        <div class="form-group">
            <label for="name"><spring:message code="pages.admin.management.institution.add.description.text"/></label>
            <form:input path="description" type="text"/>
            <form:errors path="description" cssClass="errors"/>
        </div>

        <div class="form-group form-group--buttons">
            <a href="${pageContext.request.contextPath}/institution/list" class="btn"><spring:message code="pages.admin.management.institution.add.cancel.text"/></a>
            <button class="btn" type="submit"><spring:message code="pages.admin.management.institution.add.confirm.text"/></button>
        </div>
    </form:form>
</section>

<%@ include file="/WEB-INF/views/admin/footer-logged-admin.jsp" %>

</body>
</html>