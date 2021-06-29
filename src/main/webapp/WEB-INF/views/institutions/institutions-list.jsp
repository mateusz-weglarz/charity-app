<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title><spring:message code="pages.bar.title.text"/></title>
    <link rel="stylesheet" href="<c:url value="../resources/css/style.css"/>"/>
</head>
<body>

<%@ include file="/WEB-INF/views/admin/header-logged-admin.jsp" %>

<section class="help">
    <h2><spring:message code="pages.admin.management.institution.list.text"/></h2>
    <div class="help--slides active">
        <p><a href="${pageContext.request.contextPath}/institution/add"
              class="btn btn--small btn--highlighted"><spring:message
                code="pages.admin.management.institution.add.text"/></a></p>
        <ul class="help--slides-items">
            <c:forEach var="institution" items="${institutions}" varStatus="loopCounter">
                <c:if test="${loopCounter.count%2!=0}">
                    <li>
                </c:if>
                <div class="col">
                    <div class="title"><spring:message code="pages.institution.list.name.text"/> "${institution.name}"
                    </div>
                    <div class="subtitle"><spring:message
                            code="pages.institution.list.description.text"/> ${institution.description}</div>
                    <div class="subtitle">
                        <a href="${pageContext.request.contextPath}/institution/show/${institution.id}"
                           class="btn btn--small btn--highlighted"><spring:message
                                code="pages.admin.management.institution.details.text"/></a>
                        <a href="${pageContext.request.contextPath}/institution/edit/${institution.id}"
                           class="btn btn--small btn--highlighted"><spring:message
                                code="pages.admin.management.institution.edit.text"/></a>
                        <a href="${pageContext.request.contextPath}/institution/delete/${institution.id}"
                           class="btn btn--small btn--highlighted"><spring:message
                                code="pages.admin.management.institution.delete.text"/></a>
                    </div>
                </div>
                <c:if test="${loopCounter.count%2==0}">
                    </li>
                </c:if>
            </c:forEach>

        </ul>
    </div>

</section>

<%@ include file="/WEB-INF/views/admin/footer-logged-admin.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
