<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="body" tagdir="/WEB-INF/tags" %>
<body:genericpage pageTitle="Create new record">
    <c:if test="${requestScope.errorMessage != null}">
        <div class="alert alert-danger" role="alert">
            <c:out value="${requestScope.errorMessage}"/>
        </div>
    </c:if>
    <form action="/records/create" method="post">
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input class="form-control" type="text" id="firstName" name="first-name">
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input class="form-control" type="text" id="lastName" name="last-name">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea class="form-control" name="address" id="address"></textarea>
        </div>
        <input class="btn btn-primary" type="submit" value="Create">
        <input class="btn btn-secondary" type="reset" value="Clear">
    </form>
</body:genericpage>
