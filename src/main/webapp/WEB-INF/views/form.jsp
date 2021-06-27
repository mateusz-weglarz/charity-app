<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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


<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3><spring:message code="pages.form.alert.title.text"/></h3>
            <p data-step="1" class="active">
                <spring:message code="pages.form.alert1.body.text"/>
            </p>
            <p data-step="2">
                <spring:message code="pages.form.alert2.body.text"/>
            </p>
            <p data-step="3">
                <spring:message code="pages.form.alert3.body.text"/>
            </p>
            <p data-step="4">
                <spring:message code="pages.form.alert4.body.text"/></p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter"><spring:message code="pages.form.step.count.body.text"/> <span>1</span>/4</div>

        <form:form method="post" action="/donation-form" modelAttribute="donation">
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3><spring:message code="pages.form.step.one.title.text"/></h3>
                <c:forEach items="${categories}" var="cat">
<%--                    <div class="form-group form-group--checkbox">--%>
                        <div class="form-group form-section--checkboxes">
                        <label>
                            <form:checkbox path="categories" value="${cat.id}"/>
                            <span class="checkbox"></span>
                            <span class="description">${cat.name}
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step"><spring:message code="pages.form.button.next.text"/></button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3><spring:message code="pages.form.step.two.title.text"/></h3>
                <div class="form-group form-group--inline">
                    <label>
                        <spring:message code="pages.form.step.two.body.text"/>
                        <form:input type="number" path="quantity" id="quantity" step="1" min="1"/>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step"><spring:message
                            code="pages.form.button.previous.text"/></button>
                    <button type="button" class="btn next-step"><spring:message
                            code="pages.form.button.next.text"/></button>
                </div>
            </div>


            <!-- STEP 3 -->
            <div data-step="3">
                <h3><spring:message code="pages.form.step.three.title.text"/></h3>

                <c:forEach items="${institutions}" var="ins">
                    <div class="form-group form-group--checkbox">
                        <label>
                            <form:radiobutton path="institution" id="institution" value="${ins.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                  <div class="title"><spring:message code="pages.institution.list.name.text"/> “${ins.name}”</div>
                  <div class="subtitle"><spring:message
                          code="pages.institution.list.description.text"/> ${ins.description}
                  </div>
                </span>
                        </label>
                    </div>
                </c:forEach>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step"><spring:message
                            code="pages.form.button.previous.text"/></button>
                    <button type="button" class="btn next-step"><spring:message
                            code="pages.form.button.next.text"/></button>
                </div>
            </div>

            <!-- STEP 4 -->
            <div data-step="4">
                <h3><spring:message code="pages.form.step.four.title.text"/></h3>
                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4><spring:message code="pages.form.step.four.body.adress.text"/></h4>
                        <div class="form-group form-group--inline">
                            <label> <spring:message code="pages.form.step.four.body.adress.streer.text"/>
                                <form:input path="street" id="street" type="text"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> <spring:message code="pages.form.step.four.body.adress.city.text"/>
                                <form:input path="city" id="city" type="text"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                <spring:message code="pages.form.step.four.body.adress.zipCode.text"/>
                                <form:input path="zipCode" id="zipCode" type="text"/>
                            </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                <spring:message code="pages.form.step.four.body.adress.phoneNumber.text"/>
                                <form:input path="phoneNumber" id="phoneNumber" type="text"/>
                            </label>
                        </div>
                    </div>

                    <div class="form-section--column">
                        <h4><spring:message code="pages.form.step.four.body.date&time.text"/></h4>
                        <div class="form-group form-group--inline">
                            <label> <spring:message code="pages.form.step.four.body.date&time.date.text"/>
                                <form:input path="pickUpDate" id="pickUpDate" type="date"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> <spring:message code="pages.form.step.four.body.date&time.time.text"/>
                                <form:input path="pickUpTime" id="pickUpTime" type="time"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                <spring:message code="pages.form.step.four.body.date&time.pickUpComment.text"/>
                                <form:textarea path="pickUpComment" id="pickUpComment" rows="5"/>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step"><spring:message
                            code="pages.form.button.previous.text"/></button>
                    <button type="button" class="btn next-step"><spring:message
                            code="pages.form.button.next.text"/></button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>
                <script>
                    const categories = document.querySelectorAll("#categories");
                    const quantity = document.querySelector("#quantity");
                    const institution = document.querySelector("#institution");
                    const street = document.querySelector("#street");
                    const city = document.querySelector("#city");
                    const zipCode = document.querySelector("#zipCode");
                    const phoneNumber = document.querySelector("#phoneNumber");
                    const pickUpDate = document.querySelector("#pickUpDate");
                    const pickUpTime = document.querySelector("#pickUpTime");
                    const pickUpComment = document.querySelector("#pickUpComment");
                </script>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text">4 worki ubrań w dobrym stanie dla dzieci</span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text">Dla fundacji "Mam marzenie" w Warszawie</span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li>Prosta 51</li>
                                <li>Warszawa</li>
                                <li>99-098</li>
                                <li>123 456 789</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>13/12/2018</li>
                                <li>15:40</li>
                                <li>Brak uwag</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step"><spring:message
                            code="pages.form.button.previous.text"/></button>
                    <button type="submit" class="btn"><spring:message code="pages.form.button.confirm.text"/></button>
                </div>
            </div>
        </form:form>
    </div>
</section>


<%@ include file="footer.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
