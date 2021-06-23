<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title><spring:message code="pages.bar.title.text"/></title>

    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>

<%@ include file="header.jsp" %>

<section class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>13</em>

            <h3><spring:message code="pages.gien.bags.text"/></h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius est beatae, quod accusamus illum
                tempora!</p>
        </div>

        <div class="stats--item">
            <em>5</em>
            <h3><spring:message code="pages.gien.gifts.text"/></h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam magnam, sint nihil cupiditate quas
                quam.</p>
        </div>

    </div>
</section>

<section class="steps">
    <h2><spring:message code="pages.steps.h2title.text"/></h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3><spring:message code="pages.steps.sonetitle.text"/></h3>
            <p><spring:message code="pages.steps.sonebody.text"/></p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3><spring:message code="pages.steps.stwotitle.text"/></h3>
            <p><spring:message code="pages.steps.stwobody.text"/></p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3><spring:message code="pages.steps.sthreetitle.text"/></h3>
            <p><spring:message code="pages.steps.sthreebody.text"/></p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3><spring:message code="pages.steps.sfourtitle.text"/></h3>
            <p><spring:message code="pages.steps.sfourbody.text"/></p>
        </div>
    </div>

    <a href="#" class="btn btn--large"><spring:message code="pages.access.register.text"/></a>
</section>

<section class="about-us">
    <div class="about-us--text">
        <h2><spring:message code="pages.menu.about.text"/></h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas vitae animi rem pariatur incidunt libero
            optio esse quisquam illo omnis.</p>
        <img src="<c:url value="resources/images/signature.svg"/>" class="about-us--text-signature" alt="Signature"/>
    </div>
    <div class="about-us--image"><img src="<c:url value="resources/images/about-us.jpg"/>" alt="People in circle"/>
    </div>
</section>

<section class="help">
    <h2><spring:message code="pages.help.h2title.text"/></h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p><spring:message code="pages.help.help-body.text"/></p>

        <ul class="help--slides-items">
            <li>
                <div class="col">
                    <div class="title">Fundacja "Dbam o Zdrowie"</div>
                    <div class="subtitle">Cel i misja: Pomoc dzieciom z ubogich rodzin.</div>
                </div>

                <div class="col">
                    <div class="title">Fundacja "A kogo"</div>
                    <div class="subtitle">Cel i misja: Pomoc wybudzaniu dzieci ze śpiączki.</div>
                </div>
            </li>

            <li>
                <div class="col">
                    <div class="title">Fundacja “Dla dzieci"</div>
                    <div class="subtitle">Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji życiowej.</div>
                </div>
                <div class="col">
                    <div class="title">Fundacja “Bez domu”</div>
                    <div class="subtitle">Cel i misja: Pomoc dla osób nie posiadających miejsca zamieszkania</div>
                </div>

            </li>

        </ul>
    </div>

</section>

<%@ include file="footer.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
